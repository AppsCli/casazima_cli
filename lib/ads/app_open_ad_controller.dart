import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'ad_unit_ids.dart';

/// 开屏广告：每次进入前台（冷启动 + 后台切回）尝试展示。
///
/// Android 上若在 Activity 尚未绑定到插件时调用 [AppOpenAd.show]，原生侧会静默失败，
/// 因此展示前有短暂延迟。关闭全屏广告后系统会立刻再发 foreground，需用
/// [_suppressForegroundUntil] 避免预加载完成马上又播一条。
class AppOpenAdController {
  AppOpenAdController._();
  static final AppOpenAdController instance = AppOpenAdController._();

  AppOpenAd? _loadedAd;
  bool _isLoading = false;
  bool _isShowing = false;
  bool _wantShowOnForeground = false;
  bool _showPipelineBusy = false;
  DateTime? _lastForegroundAt;

  /// 关闭/失败全屏广告后，系统几乎立刻会再发一次 resumed / foreground，
  /// 若此时预加载刚好完成，会把 [onAppForeground] 置为 true 并立刻再播一条开屏。
  DateTime? _suppressForegroundUntil;

  void _beginSuppressForegroundAfterAdDismiss() {
    _suppressForegroundUntil = DateTime.now().add(
      const Duration(milliseconds: 900),
    );
  }

  /// 后台时预加载，回到前台时更容易立刻有可展示的广告。
  void onAppBackground() {
    // 用户真·切到后台后，下次回前台应正常走开屏；仅屏蔽「关广告后」那一下假前台。
    _suppressForegroundUntil = null;
    if (_isShowing || _isLoading || _loadedAd != null) return;
    _load();
  }

  /// 应用进入前台时调用（可多次、多来源；内部去抖）。
  void onAppForeground() {
    final now = DateTime.now();
    if (_suppressForegroundUntil != null && now.isBefore(_suppressForegroundUntil!)) {
      return;
    }
    if (_lastForegroundAt != null &&
        now.difference(_lastForegroundAt!) <
            const Duration(milliseconds: 120)) {
      return;
    }
    _lastForegroundAt = now;

    _wantShowOnForeground = true;
    _pumpShowPipeline();
  }

  void _pumpShowPipeline() {
    if (_showPipelineBusy) return;

    if (_loadedAd != null && !_isShowing && _wantShowOnForeground) {
      _showPipelineBusy = true;
      _wantShowOnForeground = false;
      final ad = _loadedAd!;
      unawaited(
        _showWithWarmup(ad).whenComplete(() {
          _showPipelineBusy = false;
          if (_wantShowOnForeground &&
              _loadedAd != null &&
              !_isShowing) {
            _pumpShowPipeline();
          }
        }),
      );
      return;
    }

    if (!_isLoading && _loadedAd == null && _wantShowOnForeground) {
      _load();
    }
  }

  /// 给引擎绑定 Activity / 首屏（登录页等）留出时间，避免原生侧静默不展示。
  Future<void> _showWithWarmup(AppOpenAd ad) async {
    await Future<void>.delayed(const Duration(milliseconds: 450));

    if (_loadedAd == null || !identical(_loadedAd, ad)) return;

    _isShowing = true;
    try {
      await ad.show();
    } catch (e, st) {
      debugPrint('AppOpenAd.show failed: $e\n$st');
      _isShowing = false;
      if (identical(_loadedAd, ad)) {
        _loadedAd = null;
      }
      ad.dispose();
      _beginSuppressForegroundAfterAdDismiss();
      if (_wantShowOnForeground) {
        _load();
      }
    }
  }

  void _load() {
    if (_isLoading || _loadedAd != null) return;
    _isLoading = true;
    AppOpenAd.load(
      adUnitId: AdUnitIds.appOpen,
      request: const AdRequest(),
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          _isLoading = false;
          _loadedAd = ad;
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdDismissedFullScreenContent: (ad) {
              _isShowing = false;
              _loadedAd = null;
              _wantShowOnForeground = false;
              _beginSuppressForegroundAfterAdDismiss();
              ad.dispose();
              _load();
            },
            onAdFailedToShowFullScreenContent: (ad, error) {
              debugPrint('AppOpenAd show failed (native): $error');
              _isShowing = false;
              _loadedAd = null;
              _wantShowOnForeground = false;
              _beginSuppressForegroundAfterAdDismiss();
              ad.dispose();
              _load();
            },
          );
          _pumpShowPipeline();
        },
        onAdFailedToLoad: (error) {
          _isLoading = false;
          debugPrint('AppOpenAd load failed: $error');
          // 3 = INVALID_REQUEST（广告位与格式不符、配置错误等），重试无效且会刷屏。
          if (_wantShowOnForeground && error.code != 3) {
            Future<void>.delayed(const Duration(seconds: 2), () {
              if (_wantShowOnForeground &&
                  _loadedAd == null &&
                  !_isLoading) {
                _load();
              }
            });
          }
        },
      ),
    );
  }
}
