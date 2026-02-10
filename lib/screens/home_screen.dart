import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../providers/auth_provider.dart';
import '../providers/system_info_provider.dart';
import '../providers/app_provider.dart';
import '../widgets/system_status_card.dart';
import '../widgets/app_grid.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadData();
    });
  }

  void _loadData() {
    final systemProvider = Provider.of<SystemInfoProvider>(context, listen: false);
    final appProvider = Provider.of<AppProvider>(context, listen: false);
    
    systemProvider.loadSystemInfo();
    appProvider.loadApps();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CasaOS / ZimaOS'),
        actions: [
          IconButton(
            icon: const Icon(Icons.folder),
            onPressed: () {
              context.go('/files');
            },
            tooltip: '文件管理',
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.go('/server-config');
            },
            tooltip: '服务器配置',
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadData,
            tooltip: '刷新',
          ),
          PopupMenuButton<String>(
            icon: Consumer<AuthProvider>(
              builder: (context, authProvider, child) {
                return CircleAvatar(
                  child: Text(
                    authProvider.user?.username[0].toUpperCase() ?? 'U',
                  ),
                );
              },
            ),
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              PopupMenuItem<String>(
                enabled: false,
                child: Consumer<AuthProvider>(
                  builder: (context, authProvider, child) {
                    return Text('用户: ${authProvider.user?.username ?? ""}');
                  },
                ),
              ),
              const PopupMenuItem<String>(
                value: 'settings',
                child: Text('设置'),
              ),
              const PopupMenuDivider(),
              PopupMenuItem<String>(
                value: 'logout',
                child: const Text('退出登录'),
                onTap: () async {
                  await Future.delayed(const Duration(milliseconds: 100));
                  if (context.mounted) {
                    final authProvider = Provider.of<AuthProvider>(
                      context,
                      listen: false,
                    );
                    await authProvider.logout();
                    if (context.mounted) {
                      context.go('/login');
                    }
                  }
                },
              ),
            ],
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          _loadData();
        },
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // System Status Section
              const Text(
                '系统状态',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Consumer<SystemInfoProvider>(
                builder: (context, provider, child) {
                  if (provider.isLoading) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  if (provider.error != null) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          '错误: ${provider.error}',
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    );
                  }

                  return SystemStatusCard(
                    hardwareInfo: provider.hardwareInfo,
                    systemInfo: provider.systemInfo,
                  );
                },
              ),
              const SizedBox(height: 32),
              // Apps Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '应用',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Consumer<AppProvider>(
                    builder: (context, provider, child) {
                      return Text(
                        '共 ${provider.apps.length} 个',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Consumer<AppProvider>(
                builder: (context, provider, child) {
                  if (provider.isLoading) {
                    return const Center(
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }

                  if (provider.error != null) {
                    return Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          '错误: ${provider.error}',
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    );
                  }

                  if (provider.apps.isEmpty) {
                    return const Card(
                      child: Padding(
                        padding: EdgeInsets.all(32.0),
                        child: Center(
                          child: Text('暂无应用'),
                        ),
                      ),
                    );
                  }

                  return AppGrid(apps: provider.apps);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
