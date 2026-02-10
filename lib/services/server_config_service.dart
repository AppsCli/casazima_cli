import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/server_config.dart';
import 'package:uuid/uuid.dart';

class ServerConfigService {
  static const String _key = 'server_configs';
  static const String _activeKey = 'active_server_id';

  final _uuid = const Uuid();

  Future<List<ServerConfig>> getAllServers() async {
    final prefs = await SharedPreferences.getInstance();
    final configsJson = prefs.getStringList(_key) ?? [];
    
    return configsJson
        .map((json) => ServerConfig.fromJson(jsonDecode(json)))
        .toList();
  }

  Future<ServerConfig?> getActiveServer() async {
    final prefs = await SharedPreferences.getInstance();
    final activeId = prefs.getString(_activeKey);
    
    if (activeId == null) return null;
    
    final servers = await getAllServers();
    try {
      return servers.firstWhere((s) => s.id == activeId);
    } catch (e) {
      return null;
    }
  }

  Future<void> addServer(ServerConfig config) async {
    final servers = await getAllServers();
    servers.add(config);
    await _saveServers(servers);
  }

  Future<void> updateServer(ServerConfig config) async {
    final servers = await getAllServers();
    final index = servers.indexWhere((s) => s.id == config.id);
    
    if (index != -1) {
      servers[index] = config;
      await _saveServers(servers);
    }
  }

  Future<void> deleteServer(String id) async {
    final servers = await getAllServers();
    servers.removeWhere((s) => s.id == id);
    await _saveServers(servers);
    
    // If deleted server was active, clear active server
    final prefs = await SharedPreferences.getInstance();
    final activeId = prefs.getString(_activeKey);
    if (activeId == id) {
      await prefs.remove(_activeKey);
    }
  }

  Future<void> setActiveServer(String id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_activeKey, id);
    
    // Update all servers to set only one as active
    final servers = await getAllServers();
    for (var server in servers) {
      if (server.id == id) {
        await updateServer(server.copyWith(isActive: true));
      } else if (server.isActive) {
        await updateServer(server.copyWith(isActive: false));
      }
    }
  }

  Future<void> _saveServers(List<ServerConfig> servers) async {
    final prefs = await SharedPreferences.getInstance();
    final configsJson = servers.map((config) => jsonEncode(config.toJson())).toList();
    await prefs.setStringList(_key, configsJson);
  }

  String generateId() {
    return _uuid.v4();
  }
}
