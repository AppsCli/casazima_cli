import 'dart:convert';
import 'package:flutter/foundation.dart';
import '../models/user.dart';
import '../services/api_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();
  
  User? _user;
  String? _accessToken;
  String? _refreshToken;
  bool _isLoading = false;
  String? _error;

  User? get user => _user;
  String? get accessToken => _accessToken;
  bool get isAuthenticated => _accessToken != null && _user != null;
  bool get isLoading => _isLoading;
  String? get error => _error;

  AuthProvider() {
    _loadAuthState();
  }

  Future<void> _loadAuthState() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('access_token');
      final userJson = prefs.getString('user');
      
      if (token != null && userJson != null) {
        _accessToken = token;
        _refreshToken = prefs.getString('refresh_token');
        // Parse user from JSON
        // _user = User.fromJson(jsonDecode(userJson));
        // For now, we'll reload user info from API
        try {
          _user = await _apiService.getUserInfo();
        } catch (e) {
          // If failed to get user info, clear auth state
          await logout();
        }
        notifyListeners();
      }
    } catch (e) {
      debugPrint('Error loading auth state: $e');
    }
  }

  Future<bool> login(String username, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await _apiService.login(username, password);
      
      _user = response.user;
      _accessToken = response.accessToken;
      _refreshToken = response.refreshToken;

      // Save to local storage
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('access_token', response.accessToken);
      await prefs.setString('refresh_token', response.refreshToken);
      await prefs.setString('expires_at', response.expiresAt);
      await prefs.setString('user', jsonEncode(response.user.toJson()));

      _isLoading = false;
      notifyListeners();
      return true;
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  Future<void> logout() async {
    _user = null;
    _accessToken = null;
    _refreshToken = null;

    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('access_token');
    await prefs.remove('refresh_token');
    await prefs.remove('expires_at');
    await prefs.remove('user');

    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
