import 'package:flutter/foundation.dart';
import '../models/server_config.dart';
import '../services/server_config_service.dart';

class ServerConfigProvider with ChangeNotifier {
  final ServerConfigService _configService = ServerConfigService();
  
  List<ServerConfig> _servers = [];
  ServerConfig? _activeServer;
  bool _isLoading = false;

  List<ServerConfig> get servers => _servers;
  ServerConfig? get activeServer => _activeServer;
  bool get isLoading => _isLoading;
  bool get hasActiveServer => _activeServer != null;

  ServerConfigProvider() {
    loadServers();
  }

  Future<void> loadServers() async {
    _isLoading = true;
    notifyListeners();

    try {
      _servers = await _configService.getAllServers();
      _activeServer = await _configService.getActiveServer();
    } catch (e) {
      debugPrint('Error loading servers: $e');
    }

    _isLoading = false;
    notifyListeners();
  }

  Future<void> addServer(ServerConfig server) async {
    try {
      await _configService.addServer(server);
      await loadServers();
    } catch (e) {
      debugPrint('Error adding server: $e');
      rethrow;
    }
  }

  Future<void> updateServer(ServerConfig server) async {
    try {
      await _configService.updateServer(server);
      await loadServers();
    } catch (e) {
      debugPrint('Error updating server: $e');
      rethrow;
    }
  }

  Future<void> deleteServer(String id) async {
    try {
      await _configService.deleteServer(id);
      await loadServers();
    } catch (e) {
      debugPrint('Error deleting server: $e');
      rethrow;
    }
  }

  Future<void> setActiveServer(String id) async {
    try {
      await _configService.setActiveServer(id);
      await loadServers();
    } catch (e) {
      debugPrint('Error setting active server: $e');
      rethrow;
    }
  }
}
