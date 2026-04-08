import 'package:flutter/foundation.dart';

/// AdMob 广告位 ID。
/// - Android：正式 ID（与应用 ID 见 AndroidManifest）。
/// - iOS：Google 测试广告位；正式 iOS 应用在 AdMob 创建单元后在此替换。
class AdUnitIds {
  AdUnitIds._();

  static String get appOpen =>
      defaultTargetPlatform == TargetPlatform.iOS
          ? 'ca-app-pub-3940256099942544/5575463023'
          : 'ca-app-pub-1439748105182602/5986604285';

  static String get banner =>
      defaultTargetPlatform == TargetPlatform.iOS
          ? 'ca-app-pub-3940256099942544/2934735716'
          : 'ca-app-pub-1439748105182602/1772027100';
}
