import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'providers/auth_provider.dart';
import 'providers/server_config_provider.dart';
import 'providers/system_info_provider.dart';
import 'providers/app_provider.dart';
import 'providers/file_provider.dart';
import 'router/app_router.dart';

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
      ],
      child: MaterialApp.router(
        title: 'CasaOS / ZimaOS Client',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        routerConfig: AppRouter.getRouter(),
      ),
    );
  }
}
