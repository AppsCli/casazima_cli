import 'package:flutter/foundation.dart';
import '../models/system_info.dart';
import '../services/api_service.dart';

class SystemInfoProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  
  SystemInfo? _systemInfo;
  HardwareInfo? _hardwareInfo;
  bool _isLoading = false;
  String? _error;

  SystemInfo? get systemInfo => _systemInfo;
  HardwareInfo? get hardwareInfo => _hardwareInfo;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadSystemInfo() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _systemInfo = await _apiService.getVersion();
      _hardwareInfo = await _apiService.getHardwareInfo();
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refreshHardwareInfo() async {
    try {
      _hardwareInfo = await _apiService.getHardwareInfo();
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }
}
