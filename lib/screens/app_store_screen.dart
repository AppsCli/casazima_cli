import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/store_app_info.dart';
import '../providers/app_provider.dart';
import '../services/api_service.dart';

class AppStoreScreen extends StatefulWidget {
  const AppStoreScreen({super.key});

  @override
  State<AppStoreScreen> createState() => _AppStoreScreenState();
}

class _AppStoreScreenState extends State<AppStoreScreen> {
  final ApiService _api = ApiService();
  List<StoreAppInfo> _list = [];
  List<String> _installedIds = [];
  List<Map<String, dynamic>> _categories = [];
  String? _selectedCategory;
  String _searchQuery = '';
  bool _loading = true;
  String? _error;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final categories = await _api.getStoreCategories();
      final result = await _api.getStoreAppList(
        category: _selectedCategory,
        authorType: null,
        recommend: false,
      );
      if (mounted) {
        setState(() {
          _categories = categories;
          _list = result.list;
          _installedIds = result.installedIds;
          _loading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _loading = false;
        });
      }
    }
  }

  List<StoreAppInfo> get _filteredList {
    if (_searchQuery.trim().isEmpty) return _list;
    final q = _searchQuery.trim().toLowerCase();
    return _list.where((a) =>
        a.title.toLowerCase().contains(q) ||
        (a.category?.toLowerCase().contains(q) ?? false) ||
        (a.tagline?.toLowerCase().contains(q) ?? false)).toList();
  }

  void _onInstall(StoreAppInfo app, {bool custom = false}) {
    if (custom) {
      _showCustomInstallDialog(app);
      return;
    }
    _doQuickInstall(app);
  }

  Future<void> _doQuickInstall(StoreAppInfo app) async {
    final ctx = context;
    try {
      final yaml = await _api.getStoreAppCompose(app.id);
      await _api.installComposeAppYaml(yaml);
      if (mounted) {
        ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(content: Text('${app.title} 安装成功'), backgroundColor: Colors.green),
        );
        Provider.of<AppProvider>(ctx, listen: false).loadApps();
        _load();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(ctx).showSnackBar(
          SnackBar(content: Text('安装失败: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  void _showCustomInstallDialog(StoreAppInfo app) async {
    final scaffoldContext = context;
    String composeYaml = '';
    try {
      composeYaml = await _api.getStoreAppCompose(app.id);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(scaffoldContext).showSnackBar(
          SnackBar(content: Text('获取应用配置失败: $e'), backgroundColor: Colors.red),
        );
      }
      return;
    }
    final controller = TextEditingController(text: composeYaml);
    if (!mounted) return;
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('自定义安装: ${app.title}'),
        content: SizedBox(
          width: MediaQuery.of(dialogContext).size.width * 0.9,
          height: MediaQuery.of(dialogContext).size.height * 0.6,
          child: TextField(
            controller: controller,
            maxLines: null,
            expands: true,
            decoration: const InputDecoration(
              hintText: '编辑 docker-compose 配置后点击安装',
              alignLabelWithHint: true,
              border: OutlineInputBorder(),
            ),
            style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(dialogContext);
              try {
                await _api.installComposeAppYaml(controller.text);
                if (mounted) {
                  ScaffoldMessenger.of(scaffoldContext).showSnackBar(
                    const SnackBar(content: Text('安装成功'), backgroundColor: Colors.green),
                  );
                  Provider.of<AppProvider>(scaffoldContext, listen: false).loadApps();
                  _load();
                }
              } catch (e) {
                if (mounted) {
                  ScaffoldMessenger.of(scaffoldContext).showSnackBar(
                    SnackBar(content: Text('安装失败: $e'), backgroundColor: Colors.red),
                  );
                }
              }
            },
            child: const Text('安装'),
          ),
        ],
      ),
    );
  }

  void _onOpen(String storeAppId) {
    context.push('/app/$storeAppId');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/home');
            }
          },
          tooltip: '返回',
        ),
        title: const Text('应用市场'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: '搜索应用',
                      prefixIcon: const Icon(Icons.search),
                      border: const OutlineInputBorder(),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    ),
                    onChanged: (v) => setState(() => _searchQuery = v),
                  ),
                ),
                const SizedBox(width: 8),
                DropdownButton<String>(
                  value: _selectedCategory,
                  hint: const Text('分类'),
                  items: [
                    const DropdownMenuItem(value: null, child: Text('全部分类')),
                    ..._categories.map((c) {
                      final name = c['name'] as String? ?? '';
                      return DropdownMenuItem<String>(
                        value: name.isEmpty ? null : name,
                        child: Text(name),
                      );
                    }),
                  ],
                  onChanged: (v) {
                    setState(() => _selectedCategory = v);
                    _load();
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text('错误: $_error', style: const TextStyle(color: Colors.red), textAlign: TextAlign.center),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: _load, child: const Text('重试')),
          ],
        ),
      );
    }
    final filtered = _filteredList;
    if (filtered.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.apps, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text(
              _searchQuery.isNotEmpty ? '未找到匹配的应用' : '暂无应用',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            ),
          ],
        ),
      );
    }
    return LayoutBuilder(
      builder: (context, constraints) {
        const minCellWidth = 140.0;
        final count = (constraints.maxWidth / minCellWidth).floor().clamp(2, 12);
        return GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.2,
          ),
          itemCount: filtered.length,
          itemBuilder: (context, index) {
            final app = filtered[index];
            final isInstalled = _installedIds.contains(app.id);
            return _StoreAppCard(
              app: app,
              isInstalled: isInstalled,
              onInstall: () => _onInstall(app, custom: false),
              onCustomInstall: () => _onInstall(app, custom: true),
              onOpen: () => _onOpen(app.id),
            );
          },
        );
      },
    );
  }
}

class _StoreAppCard extends StatelessWidget {
  final StoreAppInfo app;
  final bool isInstalled;
  final VoidCallback onInstall;
  final VoidCallback onCustomInstall;
  final VoidCallback onOpen;

  const _StoreAppCard({
    required this.app,
    required this.isInstalled,
    required this.onInstall,
    required this.onCustomInstall,
    required this.onOpen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: isInstalled ? onOpen : null,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (app.icon != null && app.icon!.isNotEmpty)
                CachedNetworkImage(
                  imageUrl: app.icon!,
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                  placeholder: (_, __) => const SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                  ),
                  errorWidget: (_, __, ___) => const Icon(Icons.apps, size: 48),
                )
              else
                const Icon(Icons.apps, size: 48),
              const SizedBox(height: 8),
              Text(
                app.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (isInstalled)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '已安装',
                      style: TextStyle(fontSize: 10, color: Colors.green.shade800),
                    ),
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: onInstall,
                        style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 12)),
                        child: const Text('安装'),
                      ),
                      const SizedBox(width: 4),
                      TextButton(
                        onPressed: onCustomInstall,
                        child: const Text('自定义'),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
