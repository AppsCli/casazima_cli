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

  Future<void> loadFolder(String path) async {
    _isLoading = true;
    _error = null;
    _currentPath = path;
    notifyListeners();

    try {
      final items = await _apiService.getFolderList(path);
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
    await loadFolder(path);
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
}
