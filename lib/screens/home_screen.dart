import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../l10n/app_localizations.dart';
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
    final l10n = AppLocalizations.of(context)!;
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.push('/server-config');
            },
            tooltip: l10n.serverConfig,
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _loadData,
            tooltip: l10n.refresh,
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
                    return Text('${l10n.user}: ${authProvider.user?.username ?? ""}');
                  },
                ),
              ),
              PopupMenuItem<String>(
                value: 'settings',
                child: Text(l10n.settings),
              ),
              const PopupMenuDivider(),
              PopupMenuItem<String>(
                value: 'logout',
                child: Text(l10n.logout),
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
            onSelected: (String value) {
              if (value == 'settings') {
                context.push('/settings');
              }
            },
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
              Text(
                l10n.systemStatus,
                style: const TextStyle(
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
                          '${l10n.error}: ${provider.error}',
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    );
                  }

                  return SystemStatusCard(
                    hardwareInfo: provider.hardwareInfo,
                    systemInfo: provider.systemInfo,
                    selectedNetworkIndex: provider.selectedNetworkIndex,
                    onNetworkSelected: provider.setSelectedNetworkIndex,
                  );
                },
              ),
              const SizedBox(height: 32),
              // Apps Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.apps,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Consumer<AppProvider>(
                    builder: (context, provider, child) {
                      return Text(
                        l10n.appCount(provider.apps.length),
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
                          '${l10n.error}: ${provider.error}',
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    );
                  }

                  final normalApps = provider.apps.where((a) => !a.isLegacyContainer).toList();
                  final legacyApps = provider.apps.where((a) => a.isLegacyContainer).toList();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 固定前两项：App Store、Files，与应用列表样式一致
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final count = (constraints.maxWidth / AppGrid.minCellWidth).floor().clamp(2, 12);
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: count,
                              crossAxisSpacing: 16,
                              mainAxisSpacing: 16,
                              childAspectRatio: 1.2,
                            ),
                            itemCount: 2 + normalApps.length,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return SystemEntryCard(
                                  icon: Icons.store,
                                  label: 'App Store',
                                  onTap: () => context.push('/app-store'),
                                );
                              }
                              if (index == 1) {
                                return SystemEntryCard(
                                  icon: Icons.folder,
                                  label: 'Files',
                                  onTap: () => context.push('/files'),
                                );
                              }
                              return AppCard(app: normalApps[index - 2]);
                            },
                          );
                        },
                      ),
                      if (legacyApps.isNotEmpty) ...[
                        if (normalApps.isNotEmpty) const SizedBox(height: 24),
                        Text(
                          '旧应用程序 (待重建)',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade700,
                          ),
                        ),
                        const SizedBox(height: 12),
                        AppGrid(apps: legacyApps),
                      ],
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    ),
    );
  }
}
