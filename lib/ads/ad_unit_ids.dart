import 'package:flutter/foundation.dart';

/// Google 官方测试广告位 ID，上线前请替换为 AdMob 控制台中的正式 ID。
///
/// 应用 ID（已写入 AndroidManifest / Info.plist）：
/// - Android: ca-app-pub-3940256099942544~3347511713
/// - iOS: ca-app-pub-3940256099942544~1458002511
///
/// 开屏测试 ID 须与当前文档一致，否则会出现 “Ad unit doesn't match format”（code 3）：
/// - Android: https://developers.google.com/admob/android/app-open
/// - iOS: https://developers.google.com/admob/ios/app-open
class AdUnitIds {
  AdUnitIds._();

  static String get appOpen =>
      defaultTargetPlatform == TargetPlatform.iOS
          ? 'ca-app-pub-3940256099942544/5575463023'
          : 'ca-app-pub-3940256099942544/9257395921';

  static String get banner =>
      defaultTargetPlatform == TargetPlatform.iOS
          ? 'ca-app-pub-3940256099942544/2934735716'
          : 'ca-app-pub-3940256099942544/6300978111';
}
