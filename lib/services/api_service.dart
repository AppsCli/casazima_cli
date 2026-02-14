import 'dart:convert';
import 'package:flutter/foundation.dart';
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
        // CasaOS API 期望 Authorization 为纯 token，不带 Bearer 前缀（与 CasaOS-UI 一致）
        headers['Authorization'] = token;
      }
    }

    return headers;
  }

  /// 调试用：打印错误响应（状态码、响应体、可选请求信息）
  void _logErrorResponse(String context, http.Response response, {String? requestUrl}) {
    debugPrint('[ApiService] ========== 请求异常 ==========');
    debugPrint('[ApiService] 上下文: $context');
    if (requestUrl != null) debugPrint('[ApiService] 请求 URL: $requestUrl');
    debugPrint('[ApiService] HTTP 状态码: ${response.statusCode}');
    debugPrint('[ApiService] 响应头: ${response.headers}');
    debugPrint('[ApiService] 响应体: ${response.body}');
    debugPrint('[ApiService] ================================');
  }

  /// 调试用：打印网络异常
  void _logNetworkException(String context, Object error, StackTrace? stackTrace) {
    debugPrint('[ApiService] 网络异常: $context');
    debugPrint('[ApiService] 异常: $error');
    if (stackTrace != null) {
      debugPrint('[ApiService] 堆栈: $stackTrace');
    }
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
    try {
      return await http.get(uri, headers: headers);
    } catch (e, st) {
      _logNetworkException('GET $endpoint', e, st);
      rethrow;
    }
  }

  Future<http.Response> _post(String endpoint, {Map<String, dynamic>? body, bool includeAuth = true}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) {
      throw Exception('No active server configured');
    }

    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders(includeAuth: includeAuth);
    try {
      return await http.post(
        uri,
        headers: headers,
        body: body != null ? jsonEncode(body) : null,
      );
    } catch (e, st) {
      _logNetworkException('POST $endpoint', e, st);
      rethrow;
    }
  }

  Future<http.Response> _put(String endpoint, {Map<String, dynamic>? body}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) {
      throw Exception('No active server configured');
    }

    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();
    try {
      return await http.put(
        uri,
        headers: headers,
        body: body != null ? jsonEncode(body) : null,
      );
    } catch (e, st) {
      _logNetworkException('PUT $endpoint', e, st);
      rethrow;
    }
  }

  Future<http.Response> _patch(String endpoint, {Map<String, dynamic>? body}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) {
      throw Exception('No active server configured');
    }

    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();
    try {
      return await http.patch(
        uri,
        headers: headers,
        body: body != null ? jsonEncode(body) : null,
      );
    } catch (e, st) {
      _logNetworkException('PATCH $endpoint', e, st);
      rethrow;
    }
  }

  Future<http.Response> _delete(String endpoint, {Map<String, dynamic>? body}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) {
      throw Exception('No active server configured');
    }

    final uri = Uri.parse('$baseUrl$endpoint');
    final headers = await _getHeaders();
    try {
      return await http.delete(
        uri,
        headers: headers,
        body: body != null ? jsonEncode(body) : null,
      );
    } catch (e, st) {
      _logNetworkException('DELETE $endpoint', e, st);
      rethrow;
    }
  }

  // User APIs (v1)
  Future<LoginResponse> login(String username, String password) async {
    final response = await _post(
      '/v1/users/login',
      body: {
        'username': username,
        'password': password,
      },
      includeAuth: false,
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return LoginResponse.fromJson(json);
      } else {
        _logErrorResponse('login', response);
        throw Exception(json['message'] as String? ?? 'Login failed');
      }
    } else {
      _logErrorResponse('login', response);
      throw Exception('Login failed: ${response.statusCode}');
    }
  }

  Future<User> getUserInfo() async {
    final response = await _get('/v1/users/current');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return User.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    _logErrorResponse('getUserInfo', response);
    throw Exception('Failed to get user info');
  }

  Future<Map<String, dynamic>> getUserStatus() async {
    final response = await _get('/v1/users/status', includeAuth: false);
    
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
    _logErrorResponse('getUserStatus', response);
    throw Exception('Failed to get user status');
  }

  // Register user (for initialization)
  Future<bool> register(String username, String password, String initKey) async {
    final response = await _post(
      '/v1/users/register',
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
    _logErrorResponse('register', response);
    throw Exception('Registration failed: ${response.statusCode}');
  }

  // Set custom storage
  Future<void> setCustomStorage(String key, Map<String, dynamic> data) async {
    final response = await _post(
      '/v1/users/current/custom/$key',
      body: data,
    );

    if (response.statusCode != 200) {
      _logErrorResponse('setCustomStorage', response);
      throw Exception('Failed to set custom storage');
    }
  }

  // System APIs（与 CasaOS-UI 一致：非 /v2 路径使用 /v1 前缀）
  Future<SystemInfo> getVersion() async {
    final response = await _get('/v1/sys/version');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return SystemInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    _logErrorResponse('getVersion', response);
    throw Exception('Failed to get version');
  }

  Future<HardwareInfo> getHardwareInfo() async {
    final response = await _get('/v1/sys/hardware');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return HardwareInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    _logErrorResponse('getHardwareInfo', response);
    throw Exception('Failed to get hardware info');
  }

  Future<CpuInfo> getCpuInfo() async {
    final response = await _get('/v1/sys/cpu');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return CpuInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    _logErrorResponse('getCpuInfo', response);
    throw Exception('Failed to get CPU info');
  }

  Future<MemoryInfo> getMemoryInfo() async {
    final response = await _get('/v1/sys/mem');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return MemoryInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    _logErrorResponse('getMemoryInfo', response);
    throw Exception('Failed to get memory info');
  }

  Future<List<DiskInfo>> getDiskInfo() async {
    final response = await _get('/v1/sys/disk');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        final data = json['data'] as List;
        return data.map((e) => DiskInfo.fromJson(e as Map<String, dynamic>)).toList();
      }
    }
    _logErrorResponse('getDiskInfo', response);
    throw Exception('Failed to get disk info');
  }

  Future<NetworkInfo> getNetworkInfo() async {
    final response = await _get('/v1/sys/network');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return NetworkInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    _logErrorResponse('getNetworkInfo', response);
    throw Exception('Failed to get network info');
  }

  // App APIs
  /// 获取已安装应用列表（与 CasaOS-UI 一致：使用 getAppGrid -> /v2/app_management/web/appgrid）
  Future<List<AppInfo>> getAppList({Map<String, String>? queryParams}) async {
    final baseUrl = await getBaseUrl();
    if (baseUrl == null) throw Exception('No active server configured');
    var uri = Uri.parse('$baseUrl/v2/app_management/web/appgrid');
    if (queryParams != null && queryParams.isNotEmpty) {
      uri = uri.replace(queryParameters: queryParams);
    }
    final requestUrl = uri.toString();
    debugPrint('[ApiService] getAppList 请求: $requestUrl');

    final response = await _get('/v2/app_management/web/appgrid', queryParams: queryParams);

    debugPrint('[ApiService] getAppList 状态码: ${response.statusCode}, body 长度: ${response.body.length}');

    if (response.statusCode != 200) {
      _logErrorResponse('getAppList', response, requestUrl: requestUrl);
      throw Exception('Failed to get app list: HTTP ${response.statusCode}');
    }

    try {
      final decoded = jsonDecode(response.body);
      if (decoded is! Map<String, dynamic>) {
        _logErrorResponse('getAppList', response, requestUrl: requestUrl);
        debugPrint('[ApiService] getAppList 解析错误: 根节点不是 Map，类型为 ${decoded.runtimeType}');
        throw Exception('Failed to get app list: invalid response format (root is not object)');
      }
      final json = decoded as Map<String, dynamic>;
      // /v2/app_management/web/appgrid 可能只返回 { data: [...], message: "..." }，无 success 字段
      final success = json['success'];
      if (success != null && success != 200 && success != 201) {
        _logErrorResponse('getAppList', response, requestUrl: requestUrl);
        debugPrint('[ApiService] getAppList 业务错误: success=$success, message=${json['message']}');
        throw Exception('Failed to get app list: success=$success, message=${json['message']}');
      }

      final dataRaw = json['data'];
      List<dynamic> list;
      if (dataRaw == null) {
        list = [];
      } else if (dataRaw is List) {
        list = dataRaw;
      } else if (dataRaw is Map<String, dynamic>) {
        list = (dataRaw['list'] as List?) ??
            (dataRaw['casaos_apps'] as List?) ??
            (dataRaw['apps'] as List?) ??
            (dataRaw['data'] as List?) ??
            [];
      } else {
        _logErrorResponse('getAppList', response, requestUrl: requestUrl);
        debugPrint('[ApiService] getAppList 解析错误: data 类型为 ${dataRaw.runtimeType}');
        throw Exception('Failed to get app list: data is not list or object');
      }

      return list
          .map((e) => _appGridItemToAppInfo(e as Map<String, dynamic>))
          .toList();
    } catch (e, st) {
      if (e is Exception) rethrow;
      _logErrorResponse('getAppList', response, requestUrl: requestUrl);
      debugPrint('[ApiService] getAppList 解析异常: $e');
      debugPrint('[ApiService] 堆栈: $st');
      throw Exception('Failed to get app list: $e');
    }
  }

  /// 将 /v2/app_management/web/appgrid 返回项转为 AppInfo（v2app/container，title 对象、status、store_app_id）
  AppInfo _appGridItemToAppInfo(Map<String, dynamic> json) {
    final rawName = json['name'] as String? ?? '';
    final title = json['title'];
    String displayName = rawName;
    if (title is String) {
      displayName = title;
    } else if (title is Map<String, dynamic>) {
      final custom = title['custom']?.toString()?.trim();
      if (custom != null && custom.isNotEmpty) {
        displayName = custom;
      } else {
        displayName = title['zh_cn']?.toString() ??
            title['en_us']?.toString() ??
            (title.values.isNotEmpty ? title.values.first.toString() : rawName);
      }
    }
    final status = json['status'] as String?;
    final id = json['store_app_id']?.toString() ?? json['id']?.toString() ?? rawName;
    return AppInfo(
      id: id,
      name: displayName,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      state: status ?? json['state'] as String?,
      isRunning: status == 'running' || (json['running'] as bool? ?? false),
      category: json['category'] as String?,
      appType: json['app_type'] as String?,
    );
  }

  Future<AppInfo> getAppInfo(String id) async {
    final response = await _get('/v2/app_management/apps/$id');
    
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      if (json['success'] == 200) {
        return AppInfo.fromJson(json['data'] as Map<String, dynamic>);
      }
    }
    _logErrorResponse('getAppInfo', response);
    throw Exception('Failed to get app info');
  }

  // File APIs（与 CasaOS-UI 一致：folder/file 使用 /v1 前缀）
  Future<List<FileItem>> getFolderList(String path) async {
    final response = await _get(
      '/v1/folder',
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
    _logErrorResponse('getFolderList', response);
    throw Exception('Failed to get folder list');
  }

  Future<void> createFolder(String path) async {
    final response = await _post(
      '/v1/folder',
      body: {'path': path},
    );

    if (response.statusCode != 200) {
      _logErrorResponse('createFolder', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to create folder');
    }
  }

  Future<void> renameFolder(String oldPath, String newPath) async {
    final response = await _put(
      '/v1/folder/name',
      body: {
        'old_path': oldPath,
        'new_path': newPath,
      },
    );

    if (response.statusCode != 200) {
      _logErrorResponse('renameFolder', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to rename folder');
    }
  }

  Future<void> deleteFolder(String path) async {
    final response = await _delete(
      '/v1/folder',
      body: {'path': path},
    );

    if (response.statusCode != 200) {
      _logErrorResponse('deleteFolder', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to delete folder');
    }
  }

  // File operations
  Future<String> getFileContent(String path) async {
    final response = await _get(
      '/v1/file/content',
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
    _logErrorResponse('getFileContent', response);
    throw Exception('Failed to get file content');
  }

  Future<void> createFile(String path) async {
    final response = await _post(
      '/v1/file',
      body: {'path': path},
    );

    if (response.statusCode != 200) {
      _logErrorResponse('createFile', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to create file');
    }
  }

  Future<void> updateFile(String path, String content) async {
    final response = await _put(
      '/v1/file',
      body: {
        'path': path,
        'content': content,
      },
    );

    if (response.statusCode != 200) {
      _logErrorResponse('updateFile', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to update file');
    }
  }

  Future<void> renameFile(String oldPath, String newPath) async {
    final response = await _put(
      '/v1/file/name',
      body: {
        'old_path': oldPath,
        'new_path': newPath,
      },
    );

    if (response.statusCode != 200) {
      _logErrorResponse('renameFile', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to rename file');
    }
  }

  Future<void> deleteFile(String path) async {
    final response = await _delete(
      '/v1/file',
      body: {'path': path},
    );

    if (response.statusCode != 200) {
      _logErrorResponse('deleteFile', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to delete file');
    }
  }

  String getFileDownloadUrl(String path) {
    // Return the download URL for the file (与 CasaOS-UI file.download 一致：/v1/file)
    return '/v1/file?path=$path&timestamp=${DateTime.now().millisecondsSinceEpoch}';
  }

  // App Management APIs (v2)
  Future<Map<String, dynamic>> getAppConfig(String id) async {
    final response = await _get('/v2/app_management/container/$id');
    
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
    _logErrorResponse('getAppConfig', response);
    throw Exception('Failed to get app config');
  }

  Future<void> installApp(Map<String, dynamic> config) async {
    final response = await _post(
      '/v2/app_management/compose',
      body: config,
    );

    if (response.statusCode != 200 && response.statusCode != 201) {
      _logErrorResponse('installApp', response);
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
      _logErrorResponse('uninstallApp', response);
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
      _logErrorResponse('updateAppStatus', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to update app status');
    }
  }

  Future<Map<String, dynamic>> getAppStatus(String id) async {
    final response = await _get('/v2/app_management/compose/$id/status');
    
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    }
    _logErrorResponse('getAppStatus', response);
    throw Exception('Failed to get app status');
  }

  Future<void> checkAppVersion(String id) async {
    // 与 CasaOS-UI apps.js 一致：使用 PATCH /v2/app_management/container/{id}
    final response = await _patch('/v2/app_management/container/$id');

    if (response.statusCode != 200) {
      _logErrorResponse('checkAppVersion', response);
      final json = jsonDecode(response.body) as Map<String, dynamic>;
      throw Exception(json['message'] as String? ?? 'Failed to check app version');
    }
  }
}
