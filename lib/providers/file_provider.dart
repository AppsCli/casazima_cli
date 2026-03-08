import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import '../models/file_item.dart';
import '../services/api_service.dart';

class FileProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  
  List<FileItem> _files = [];
  String _currentPath = '/DATA';
  bool _isLoading = false;
  String? _error;
  bool _isGridView = true;

  List<FileItem> get files => _files;
  String get currentPath => _currentPath;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isGridView => _isGridView;

  /// 当前路径是否有上级目录（用于手势返回先回上级再退出）
  bool get hasParentDirectory {
    if (_currentPath == '/' || _currentPath.trim().isEmpty) return false;
    final parts = _currentPath.split('/').where((p) => p.isNotEmpty).toList();
    return parts.length > 1;
  }

  Future<void> loadFolder(String? path) async {
    final pathToLoad = path ?? await _apiService.getDefaultFilesPath();
    _isLoading = true;
    _error = null;
    _currentPath = pathToLoad;
    notifyListeners();

    try {
      final items = await _apiService.getFolderList(pathToLoad);
      // Filter hidden files and sort (directories first)
      final filtered = items.where((item) => !item.name.startsWith('.')).toList();
      filtered.sort((a, b) {
        if (a.isDir && !b.isDir) return -1;
        if (!a.isDir && b.isDir) return 1;
        return a.name.toLowerCase().compareTo(b.name.toLowerCase());
      });
      _files = filtered;
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      _files = [];
      notifyListeners();
    }
  }

  Future<void> refresh() async {
    await loadFolder(_currentPath);
  }

  Future<void> navigateTo(String path) async {
    await loadFolder(path.isEmpty ? null : path);
  }

  Future<void> navigateUp() async {
    if (_currentPath == '/' || _currentPath.isEmpty) return;
    final parts = _currentPath.split('/').where((p) => p.isNotEmpty).toList();
    if (parts.isEmpty) {
      await loadFolder('/');
    } else {
      parts.removeLast();
      final newPath = parts.isEmpty ? '/' : '/${parts.join('/')}';
      await loadFolder(newPath);
    }
  }

  Future<void> createFolder(String name) async {
    final newPath = _currentPath.endsWith('/')
        ? '$_currentPath$name'
        : '$_currentPath/$name';
    await _apiService.createFolder(newPath);
    await refresh();
  }

  Future<void> createFile(String name) async {
    final newPath = _currentPath.endsWith('/')
        ? '$_currentPath$name'
        : '$_currentPath/$name';
    await _apiService.createFile(newPath);
    await refresh();
  }

  Future<void> renameItem(FileItem item, String newName) async {
    final newPath = item.path.replaceAll(item.name, newName);
    if (item.isDir) {
      await _apiService.renameFolder(item.path, newPath);
    } else {
      await _apiService.renameFile(item.path, newPath);
    }
    await refresh();
  }

  Future<void> deleteItem(FileItem item) async {
    if (item.isDir) {
      await _apiService.deleteFolder(item.path);
    } else {
      await _apiService.deleteFile(item.path);
    }
    await refresh();
  }

  void toggleView() {
    _isGridView = !_isGridView;
    notifyListeners();
  }

  /// 下载文件到本地（与 CasaOS-UI downloadFile 一致，使用 /v1/file 接口）
  /// 返回保存路径，用户取消则返回 null
  Future<String?> downloadFile(FileItem item) async {
    final bytes = await _apiService.downloadFileAsBytes(item.path);
    return FilePicker.platform.saveFile(
      fileName: item.name,
      bytes: bytes,
    );
  }

  /// 获取文件内容（用于文本预览，与 CasaOS-UI file.getContent 一致：/v1/file/content）
  Future<String> getFileContent(String path) async {
    return _apiService.getFileContent(path);
  }

  /// 下载文件为字节（用于图片预览或下载，与 CasaOS-UI file.download 一致：/v1/file）
  Future<Uint8List> downloadFileAsBytes(String path) async {
    return _apiService.downloadFileAsBytes(path);
  }

  /// 获取文件流式播放 URL（与 CasaOS-UI getFileUrl 一致：/v3/file?path=...&token=...）
  /// 用于视频/音频流式预览
  Future<({String url, Map<String, String> headers})> getFileStreamingUrl(String path) async {
    return _apiService.getFileStreamingUrl(path);
  }

  /// 下载视频到临时文件（用于网络播放失败时的 fallback）
  Future<String> downloadVideoToTemp(String path, String fileName) async {
    return _apiService.downloadFileToTemp(path, fileName);
  }
}
