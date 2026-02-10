import 'package:flutter/foundation.dart';
import '../models/app_info.dart';
import '../services/api_service.dart';

class AppProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  
  List<AppInfo> _apps = [];
  bool _isLoading = false;
  String? _error;

  List<AppInfo> get apps => _apps;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadApps({Map<String, String>? queryParams}) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _apps = await _apiService.getAppList(queryParams: queryParams);
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refreshApps() async {
    await loadApps();
  }
}
