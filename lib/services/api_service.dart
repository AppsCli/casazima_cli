import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user.dart';
import '../models/system_info.dart';
import '../models/app_info.dart';
import '../models/file_item.dart';
import 'server_config_service.dart';

class ApiService {
  final ServerConfigService _configService = ServerConfigService();

  Future<String?> getBaseUrl() async {
    final activeServer = await _configService.getActiveServer();
    return activeServer?.baseUrl;
  }

  Future<Map<String, String>> _getHeaders({bool includeAuth = true}) async {
    final headers = <String, String>{
      'Content-Type': 'application/json',
    };

    if (includeAuth) {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('access_token');
      if (token != null) {
        headers['Authorization'] = 'Bearer $token';
      }
    }

    return headers;
  }

  Future<http.Response> _get(String endpoint, {Map<String, String>? queryParams, bool includeAuth = true}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) {
      throw Exception('No active server configured');
    }

    var uri = Uri.parse('$baseUrl$endpoint');
    if (queryParams != null && queryParams.isNotEmpty) {
      uri = uri.replace(queryParameters: queryParams);
    }

    final headers = await _getHeaders(includeAuth: includeAuth);
    return await http.get(uri, headers: headers);
  }

  Future<http.Response> _post(String endpoint, {Map<String, dynamic>? body, bool includeAuth = true}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) {
      throw Exception('No active server configured');
    }

    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders(includeAuth: includeAuth);
    
    return await http.post(
      uri,
      headers: headers,
      body: body != null ? jsonEncode(body) : null,
    );
  }

  Future<http.Response> _put(String endpoint, {Map<String, dynamic>? body}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) {
      throw Exception('No active server configured');
    }

    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();
    
    return await http.put(
      uri,
      headers: headers,
      body: body != null ? jsonEncode(body) : null,
    );
  }

  Future<http.Response> _delete(String endpoint, {Map<String, dynamic>? body}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) {
      throw Exception('No active server configured');
    }

    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();
    
    return await http.delete(
      uri,
      headers: headers,
      body: body != null ? jsonEncode(body) : null,
    );
  }

  // User APIs
  Future<LoginResponse> login(String username, String password) async {
    final response = await _post(
      '/users/login',
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return LoginResponse.fromJson(json);
      } else {
        throw Exception(json['message'] as String? ?? 'Login failed');
      }
    } else {
      throw Exception('Login failed: ${response.statusCode}');
    }
  }

  Future<User> getUserInfo() async {
    final response = await _get('/users/current');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return User.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    throw Exception('Failed to get user info');
  }

  Future<Map<String, dynamic>> getUserStatus() async {
    final response = await _get('/users/status', includeAuth: false);
    
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
    throw Exception('Failed to get user status');
  }

  // Register user (for initialization)
  Future<bool> register(String username, String password, String initKey) async {
    final response = await _post(
      '/users/register',
      body: {
        'username': username,
        'password': password,
        'key': initKey,
      },
      includeAuth: false,
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      return json['success'] == 200;
    }
    throw Exception('Registration failed: ${response.statusCode}');
  }

  // Set custom storage
  Future<void> setCustomStorage(String key, Map<String, dynamic> data) async {
    final response = await _post(
      '/users/current/custom/$key',
      body: data,
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to set custom storage');
    }
  }

  // System APIs
  Future<SystemInfo> getVersion() async {
    final response = await _get('/sys/version');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return SystemInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    throw Exception('Failed to get version');
  }

  Future<HardwareInfo> getHardwareInfo() async {
    final response = await _get('/sys/hardware');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return HardwareInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    throw Exception('Failed to get hardware info');
  }

  Future<CpuInfo> getCpuInfo() async {
    final response = await _get('/sys/cpu');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return CpuInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    throw Exception('Failed to get CPU info');
  }

  Future<MemoryInfo> getMemoryInfo() async {
    final response = await _get('/sys/mem');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return MemoryInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    throw Exception('Failed to get memory info');
  }

  Future<List<DiskInfo>> getDiskInfo() async {
    final response = await _get('/sys/disk');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        final data = json['data'] as List;
        return data.map((e) => DiskInfo.fromJson(e as Map<String, dynamic>)).toList();
      }
    }
    throw Exception('Failed to get disk info');
  }

  Future<NetworkInfo> getNetworkInfo() async {
    final response = await _get('/sys/network');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return NetworkInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    throw Exception('Failed to get network info');
  }

  // App APIs
  Future<List<AppInfo>> getAppList({Map<String, String>? queryParams}) async {
    final response = await _get('/v2/app_management/apps', queryParams: queryParams);
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        final data = json['data'] as List;
        return data.map((e) => AppInfo.fromJson(e as Map<String, dynamic>)).toList();
      }
    }
    throw Exception('Failed to get app list');
  }

  Future<AppInfo> getAppInfo(String id) async {
    final response = await _get('/v2/app_management/apps/$id');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return AppInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    throw Exception('Failed to get app info');
  }

  // File APIs
  Future<List<FileItem>> getFolderList(String path) async {
    final response = await _get(
      '/folder',
      queryParams: {
        'path': path,
      },
    );
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        final data = json['data'] as Map<String, dynamic>;
        final content = data['content'] as List;
        return content
            .map((e) => FileItem.fromJson(e as Map<String, dynamic>))
            .toList();
      }
    }
    throw Exception('Failed to get folder list');
  }

  Future<void> createFolder(String path) async {
    final response = await _post(
      '/folder',
      body: {'path': path},
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to create folder');
    }
  }

  Future<void> renameFolder(String oldPath, String newPath) async {
    final response = await _put(
      '/folder/name',
      body: {
        'old_path': oldPath,
        'new_path': newPath,
      },
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to rename folder');
    }
  }

  Future<void> deleteFolder(String path) async {
    final response = await _delete(
      '/folder',
      body: {'path': path},
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to delete folder');
    }
  }

  // File operations
  Future<String> getFileContent(String path) async {
    final response = await _get(
      '/file/content',
      queryParams: {
        'path': path,
        'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
      },
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return json['data'] as String? ?? '';
      }
    }
    throw Exception('Failed to get file content');
  }

  Future<void> createFile(String path) async {
    final response = await _post(
      '/file',
      body: {'path': path},
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to create file');
    }
  }

  Future<void> updateFile(String path, String content) async {
    final response = await _put(
      '/file',
      body: {
        'path': path,
        'content': content,
      },
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to update file');
    }
  }

  Future<void> renameFile(String oldPath, String newPath) async {
    final response = await _put(
      '/file/name',
      body: {
        'old_path': oldPath,
        'new_path': newPath,
      },
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to rename file');
    }
  }

  Future<void> deleteFile(String path) async {
    final response = await _delete(
      '/file',
      body: {'path': path},
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to delete file');
    }
  }

  String getFileDownloadUrl(String path) {
    // Return the download URL for the file
    // This will be used with the base URL
    return '/file?path=$path&timestamp=${DateTime.now().millisecondsSinceEpoch}';
  }

  // App Management APIs (v2)
  Future<Map<String, dynamic>> getAppConfig(String id) async {
    final response = await _get('/v2/app_management/container/$id');
    
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
    throw Exception('Failed to get app config');
  }

  Future<void> installApp(Map<String, dynamic> config) async {
    final response = await _post(
      '/v2/app_management/compose',
      body: config,
    );

    if (response.statusCode != 200 && response.statusCode != 201) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to install app');
    }
  }

  Future<void> uninstallApp(String id, {bool deleteConfig = false}) async {
    final response = await _delete(
      '/v2/app_management/compose/$id',
      body: {'delete_config_folder': deleteConfig},
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to uninstall app');
    }
  }

  Future<void> updateAppStatus(String id, String status) async {
    // status: 'start', 'stop', 'restart'
    final response = await _put(
      '/v2/app_management/compose/$id/status',
      body: {'status': status},
    );

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to update app status');
    }
  }

  Future<Map<String, dynamic>> getAppStatus(String id) async {
    final response = await _get('/v2/app_management/compose/$id/status');
    
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
    throw Exception('Failed to get app status');
  }

  Future<void> checkAppVersion(String id) async {
    final response = await _put('/v2/app_management/container/$id');

    if (response.statusCode != 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to check app version');
    }
  }
}
