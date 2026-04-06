import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'ads/app_open_ad_controller.dart';
import 'ads/mobile_ads_platform.dart';
import 'l10n/app_localizations.dart';
import 'providers/auth_provider.dart';
import 'providers/server_config_provider.dart';
import 'providers/system_info_provider.dart';
import 'providers/app_provider.dart';
import 'providers/file_provider.dart';
import 'providers/locale_provider.dart';
import 'router/app_router.dart';
import 'providers/theme_provider.dart';
import 'providers/browser_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kMobileAdsSupported) {
    await MobileAds.instance.initialize();
    // 切勿 await：google_mobile_ads 在 Android 上对 start/stop 未调用 MethodChannel.Result，
    // await 会永久挂起，runApp 不会执行，表现为白屏。iOS 会正常 result(nil)。
    unawaited(AppStateEventNotifier.startListening());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => ServerConfigProvider()),
        ChangeNotifierProvider(create: (_) => SystemInfoProvider()),
        ChangeNotifierProvider(create: (_) => AppProvider()),
        ChangeNotifierProvider(create: (_) => FileProvider()),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider()..loadFromPreferences(),
        ),
        ChangeNotifierProvider(
          create: (_) => LocaleProvider()..loadFromPreferences(),
        ),
        ChangeNotifierProvider(
          create: (_) => BrowserProvider()..loadFromPreferences(),
        ),
      ],
      child: const _MaterialAppWithRouter(),
    );
  }
}

/// 使用 StatefulWidget 缓存 GoRouter，避免主题/语言切换时重建路由导致从设置页被“弹回”。
class _MaterialAppWithRouter extends StatefulWidget {
  const _MaterialAppWithRouter();

  @override
  State<_MaterialAppWithRouter> createState() => _MaterialAppWithRouterState();
}

class _MaterialAppWithRouterState extends State<_MaterialAppWithRouter>
    with WidgetsBindingObserver {
  late final GoRouter _router = AppRouter.getRouter();
  StreamSubscription<AppState>? _appOpenAdAppStateSub;

  @override
  void initState() {
    super.initState();
    if (kMobileAdsSupported) {
      WidgetsBinding.instance.addObserver(this);
      _appOpenAdAppStateSub = AppStateEventNotifier.appStateStream.listen(
        (state) {
          if (state == AppState.foreground) {
            AppOpenAdController.instance.onAppForeground();
          } else if (state == AppState.background) {
            AppOpenAdController.instance.onAppBackground();
          }
        },
      );
      // iOS 冷启动不会发首次 foreground；Android 可能早于 EventChannel 订阅错过 ON_START
      WidgetsBinding.instance.addPostFrameCallback((_) {
        AppOpenAdController.instance.onAppForeground();
      });
    }
  }

  @override
  void dispose() {
    _appOpenAdAppStateSub?.cancel();
    if (kMobileAdsSupported) {
      WidgetsBinding.instance.removeObserver(this);
    }
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (!kMobileAdsSupported) return;
    switch (state) {
      case AppLifecycleState.resumed:
        AppOpenAdController.instance.onAppForeground();
        break;
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        AppOpenAdController.instance.onAppBackground();
        break;
      case AppLifecycleState.inactive:
      case AppLifecycleState.hidden:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeProvider, LocaleProvider>(
      builder: (context, themeProvider, localeProvider, child) {
        return MaterialApp.router(
          title: 'CasaZimaCli',
          debugShowCheckedModeBanner: false,
          locale: localeProvider.effectiveLocale,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: themeProvider.seedColor,
              brightness: Brightness.light,
            ),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: themeProvider.seedColor,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),
          themeMode: themeProvider.themeMode,
          routerConfig: _router,
        );
      },
    );
  }
}
