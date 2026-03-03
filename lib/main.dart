import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'l10n/app_localizations.dart';
import 'providers/auth_provider.dart';
import 'providers/server_config_provider.dart';
import 'providers/system_info_provider.dart';
import 'providers/app_provider.dart';
import 'providers/file_provider.dart';
import 'providers/locale_provider.dart';
import 'router/app_router.dart';
import 'providers/theme_provider.dart';

void main() {
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

class _MaterialAppWithRouterState extends State<_MaterialAppWithRouter> {
  late final GoRouter _router = AppRouter.getRouter();

  @override
  Widget build(BuildContext context) {
    return Consumer2<ThemeProvider, LocaleProvider>(
      builder: (context, themeProvider, localeProvider, child) {
        return MaterialApp.router(
          title: 'CasaZimaCli',
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
