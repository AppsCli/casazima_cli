import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import '../ads/ad_unit_ids.dart';
import '../ads/mobile_ads_platform.dart';

/// 底部锚定自适应横幅（测试广告位）。仅在 [kMobileAdsSupported] 为 true 时加载。
class MobileAdBanner extends StatefulWidget {
  const MobileAdBanner({super.key});

  @override
  State<MobileAdBanner> createState() => _MobileAdBannerState();
}

class _MobileAdBannerState extends State<MobileAdBanner> {
  BannerAd? _bannerAd;
  bool _loaded = false;

  @override
  void initState() {
    super.initState();
    if (!kMobileAdsSupported) return;
    WidgetsBinding.instance.addPostFrameCallback((_) => _createBanner());
  }

  Future<void> _createBanner() async {
    if (!mounted || !kMobileAdsSupported) return;

    final width = MediaQuery.sizeOf(context).width.truncate();
    final orientation = MediaQuery.orientationOf(context);
    final size = await AdSize.getAnchoredAdaptiveBannerAdSize(
      orientation,
      width,
    );
    if (!mounted || size == null) return;

    final banner = BannerAd(
      adUnitId: AdUnitIds.banner,
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          if (mounted) setState(() => _loaded = true);
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('BannerAd failed: $error');
          ad.dispose();
          if (mounted) {
            setState(() {
              if (identical(_bannerAd, ad)) {
                _bannerAd = null;
                _loaded = false;
              }
            });
          }
        },
      ),
    );

    setState(() => _bannerAd = banner);
    banner.load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!kMobileAdsSupported || _bannerAd == null || !_loaded) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      width: _bannerAd!.size.width.toDouble(),
      height: _bannerAd!.size.height.toDouble(),
      child: AdWidget(ad: _bannerAd!),
    );
  }
}
