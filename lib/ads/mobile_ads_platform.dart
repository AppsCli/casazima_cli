import 'package:flutter/foundation.dart';

/// 仅在 Android / iOS 真机或模拟器上启用 AdMob（桌面与 Web 不加载广告）。
bool get kMobileAdsSupported =>
    !kIsWeb &&
    (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);
