import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../l10n/app_localizations.dart';
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
  NasType _nasType = NasType.casaos;
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
      _nasType = server.nasType;
    } else {
      _nameController.clear();
      _hostController.clear();
      _portController.text = '80';
      _useHttps = false;
      _nasType = NasType.casaos;
    }

    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(server == null ? l10n.addServer : l10n.editServer),
        content: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: l10n.serverName,
                    border: const OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.serverNameRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<NasType>(
                  value: _nasType,
                  decoration: InputDecoration(
                    labelText: l10n.nasType,
                    border: const OutlineInputBorder(),
                  ),
                  items: NasType.values.map((t) {
                    return DropdownMenuItem(
                      value: t,
                      child: Text(t == NasType.casaos ? l10n.nasTypeCasaOS : l10n.nasTypeZimaOS),
                    );
                  }).toList(),
                  onChanged: (value) {
                    if (value != null) setState(() => _nasType = value);
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _hostController,
                  decoration: InputDecoration(
                    labelText: l10n.hostAddress,
                    border: const OutlineInputBorder(),
                    hintText: l10n.hostAddressHint,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.hostAddressRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _portController,
                  decoration: InputDecoration(
                    labelText: l10n.port,
                    border: const OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return l10n.portRequired;
                    }
                    final port = int.tryParse(value);
                    if (port == null || port < 1 || port > 65535) {
                      return l10n.portInvalid;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                CheckboxListTile(
                  title: Text(l10n.useHttps),
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
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _saveServer();
                Navigator.pop(context);
              }
            },
            child: Text(l10n.save),
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
      nasType: _nasType,
    );

    if (_editingServer != null) {
      provider.updateServer(config);
    } else {
      provider.addServer(config);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.serverConfig),
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
                  Text(
                    l10n.noServerConfigured,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () => _showServerDialog(),
                    icon: const Icon(Icons.add),
                    label: Text(l10n.addServer),
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
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(server.baseUrl),
                      const SizedBox(height: 2),
                      Text(
                        server.nasType == NasType.casaos ? l10n.nasTypeCasaOS : l10n.nasTypeZimaOS,
                        style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!server.isActive)
                        IconButton(
                          icon: const Icon(Icons.check_circle_outline),
                          onPressed: () {
                            provider.setActiveServer(server.id);
                          },
                          tooltip: l10n.activate,
                        ),
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => _showServerDialog(server: server),
                        tooltip: l10n.edit,
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: Text(l10n.confirmDelete),
                              content: Text(l10n.confirmDeleteServer(server.name)),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(ctx),
                                  child: Text(l10n.cancel),
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    provider.deleteServer(server.id);
                                    Navigator.pop(ctx);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.red,
                                  ),
                                  child: Text(l10n.delete),
                                ),
                              ],
                            ),
                          );
                        },
                        tooltip: l10n.delete,
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
