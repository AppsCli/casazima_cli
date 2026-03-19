import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// 应用打开方式：内置浏览器（默认）或系统浏览器
enum BrowserChoice {
  /// 使用内置 WebView 打开
  builtin,
  /// 使用系统默认浏览器打开
  system,
}

class BrowserProvider with ChangeNotifier {
  static const String _keyBrowserChoice = 'browser_choice';

  BrowserChoice _choice = BrowserChoice.builtin;

  BrowserChoice get choice => _choice;

  bool get useBuiltinBrowser => _choice == BrowserChoice.builtin;

  Future<void> loadFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final index = prefs.getInt(_keyBrowserChoice);
    if (index != null && index >= 0 && index < BrowserChoice.values.length) {
      _choice = BrowserChoice.values[index];
    }
    notifyListeners();
  }

  Future<void> setChoice(BrowserChoice value) async {
    if (_choice == value) return;
    _choice = value;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyBrowserChoice, value.index);
  }
}
