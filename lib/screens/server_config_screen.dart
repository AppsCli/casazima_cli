import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../models/server_config.dart';
import '../providers/server_config_provider.dart';
import '../services/server_config_service.dart';

class ServerConfigScreen extends StatefulWidget {
  const ServerConfigScreen({super.key});

  @override
  State<ServerConfigScreen> createState() => _ServerConfigScreenState();
}

class _ServerConfigScreenState extends State<ServerConfigScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _hostController = TextEditingController();
  final _portController = TextEditingController(text: '80');
  bool _useHttps = false;
  ServerConfig? _editingServer;

  @override
  void dispose() {
    _nameController.dispose();
    _hostController.dispose();
    _portController.dispose();
    super.dispose();
  }

  void _showServerDialog({ServerConfig? server}) {
    _editingServer = server;
    if (server != null) {
      _nameController.text = server.name;
      _hostController.text = server.host;
      _portController.text = server.port.toString();
      _useHttps = server.useHttps;
    } else {
      _nameController.clear();
      _hostController.clear();
      _portController.text = '80';
      _useHttps = false;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(server == null ? '添加服务器' : '编辑服务器'),
        content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: '服务器名称',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '请输入服务器名称';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _hostController,
                  decoration: const InputDecoration(
                    labelText: '主机地址',
                    border: OutlineInputBorder(),
                    hintText: '192.168.1.100 或 casaos.local',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '请输入主机地址';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _portController,
                  decoration: const InputDecoration(
                    labelText: '端口',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '请输入端口';
                    }
                    final port = int.tryParse(value);
                    if (port == null || port < 1 || port > 65535) {
                      return '请输入有效的端口号 (1-65535)';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                CheckboxListTile(
                  title: const Text('使用 HTTPS'),
                  value: _useHttps,
                  onChanged: (value) {
                    setState(() {
                      _useHttps = value ?? false;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveServer();
                Navigator.pop(context);
              }
            },
            child: const Text('保存'),
          ),
        ],
      ),
    );
  }

  void _saveServer() {
    final provider = Provider.of<ServerConfigProvider>(context, listen: false);
    final configService = ServerConfigService();
    
    final config = ServerConfig(
      id: _editingServer?.id ?? configService.generateId(),
      name: _nameController.text,
      host: _hostController.text,
      port: int.parse(_portController.text),
      useHttps: _useHttps,
      isActive: _editingServer?.isActive ?? false,
    );

    if (_editingServer != null) {
      provider.updateServer(config);
    } else {
      provider.addServer(config);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('服务器配置'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/login');
            }
          },
        ),
      ),
      body: Consumer<ServerConfigProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.servers.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.cloud_off, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  const Text(
                    '还没有配置服务器',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () => _showServerDialog(),
                    icon: const Icon(Icons.add),
                    label: const Text('添加服务器'),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: provider.servers.length,
            itemBuilder: (context, index) {
              final server = provider.servers[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: Icon(
                    server.isActive ? Icons.cloud_done : Icons.cloud,
                    color: server.isActive ? Colors.green : Colors.grey,
                  ),
                  title: Text(server.name),
                  subtitle: Text('${server.baseUrl}'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!server.isActive)
                        IconButton(
                          icon: const Icon(Icons.check_circle_outline),
                          onPressed: () {
                            provider.setActiveServer(server.id);
                          },
                          tooltip: '激活',
                        ),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => _showServerDialog(server: server),
                        tooltip: '编辑',
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('确认删除'),
                              content: Text('确定要删除服务器 "${server.name}" 吗？'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('取消'),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    provider.deleteServer(server.id);
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                  ),
                                  child: const Text('删除'),
                                ),
                              ],
                            ),
                          );
                        },
                        tooltip: '删除',
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showServerDialog(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
