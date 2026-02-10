import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

import '../models/app_info.dart';
import '../providers/app_provider.dart';
import '../services/api_service.dart';

class AppDetailScreen extends StatefulWidget {
  final String appId;

  const AppDetailScreen({super.key, required this.appId});

  @override
  State<AppDetailScreen> createState() => _AppDetailScreenState();
}

class _AppDetailScreenState extends State<AppDetailScreen> {
  AppInfo? _appInfo;
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadDetail();
    });
  }

  Future<void> _loadDetail() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final api = ApiService();
      final info = await api.getAppInfo(widget.appId);
      setState(() {
        _appInfo = info;
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appInfo?.name ?? '应用详情'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 64, color: Colors.red),
            const SizedBox(height: 16),
            Text(
              '错误: $_error',
              style: const TextStyle(color: Colors.red),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadDetail,
              child: const Text('重试'),
            ),
          ],
        ),
      );
    }

    final app = _appInfo;
    if (app == null) {
      return const Center(child: Text('未找到应用信息'));
    }

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (app.icon != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    app.icon!,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.apps, size: 80);
                    },
                  ),
                )
              else
                const Icon(Icons.apps, size: 80),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      app.name,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    if (app.version != null)
                      Text(
                        '版本：${app.version}',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    if (app.category != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Chip(
                          label: Text(app.category!),
                          backgroundColor: Colors.blue.shade50,
                          labelStyle: TextStyle(color: Colors.blue.shade800),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          if (app.description != null && app.description!.isNotEmpty) ...[
            const Text(
              '简介',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              app.description!,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 24),
          ],
          const Text(
            '状态',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: (app.isRunning ?? false)
                      ? Colors.green.shade100
                      : Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      (app.isRunning ?? false)
                          ? Icons.check_circle
                          : Icons.pause_circle_filled,
                      size: 16,
                      color: (app.isRunning ?? false)
                          ? Colors.green.shade800
                          : Colors.grey.shade600,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      (app.isRunning ?? false) ? '运行中' : '未运行',
                      style: TextStyle(
                        fontSize: 12,
                        color: (app.isRunning ?? false)
                            ? Colors.green.shade800
                            : Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    // 占位：安装/启动逻辑
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('安装/启动功能待实现（需要对接 /v2/app_management/compose）')),
                    );
                  },
                  icon: const Icon(Icons.play_arrow),
                  label: const Text('安装 / 启动'),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: () {
                    // 占位：卸载逻辑
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('卸载功能待实现（需要对接 /v2/app_management/compose）')),
                    );
                  },
                  icon: const Icon(Icons.delete_outline),
                  label: const Text('卸载'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

