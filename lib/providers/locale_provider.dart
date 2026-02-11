import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../l10n/app_localizations.dart';

/// Language option for "follow system" (null) or a specific [Locale].
/// Native display names for the language selector (in each language's own script).
final Map<Locale, String> kLocaleNativeNames = <Locale, String>{
  Locale('en'): 'English',
  Locale('zh'): '简体中文',
  Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'): '繁體中文',
  Locale('ja'): '日本語',
  Locale('ko'): '한국어',
  Locale('de'): 'Deutsch',
  Locale('es'): 'Español',
  Locale('fr'): 'Français',
  Locale('it'): 'Italiano',
  Locale('ru'): 'Русский',
  Locale('ar'): 'العربية',
};

class LocaleProvider with ChangeNotifier {
  static const String _keyLocaleOverride = 'locale_override';

  Locale? _overrideLocale;

  /// User-selected locale; null means "follow system".
  Locale? get overrideLocale => _overrideLocale;

  /// Whether current mode is "follow system".
  bool get isFollowSystem => _overrideLocale == null;

  /// Effective locale to use: override if set, otherwise resolved system locale
  /// (first matching supported locale, or English if no match).
  Locale get effectiveLocale {
    if (_overrideLocale != null) return _overrideLocale!;
    return _resolveSystemLocale();
  }

  /// All supported locales (for language picker and supportedLocales).
  static List<Locale> get supportedLocales => AppLocalizations.supportedLocales;

  /// Native display name for a locale, or locale tag if not in map.
  static String nativeName(Locale locale) {
    if (locale.scriptCode != null && locale.scriptCode!.isNotEmpty) {
      final withScript = Locale.fromSubtags(
        languageCode: locale.languageCode,
        scriptCode: locale.scriptCode,
      );
      return kLocaleNativeNames[withScript] ?? locale.toString();
    }
    return kLocaleNativeNames[locale] ?? locale.toString();
  }

  /// Resolve platform locale to a supported one; fallback to English.
  Locale _resolveSystemLocale() {
    final platform = ui.PlatformDispatcher.instance.locale;
    for (final supported in AppLocalizations.supportedLocales) {
      if (supported.languageCode != platform.languageCode) continue;
      if (supported.scriptCode == null || supported.scriptCode!.isEmpty) {
        if (platform.scriptCode == null || platform.scriptCode!.isEmpty) {
          return supported;
        }
        if (platform.scriptCode == 'Hant') {
          return const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant');
        }
        return supported;
      }
      if (supported.scriptCode == platform.scriptCode) return supported;
    }
    // zh_Hant from country
    if (platform.languageCode == 'zh' &&
        (platform.countryCode == 'TW' || platform.countryCode == 'HK')) {
      return const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant');
    }
    return const Locale('en');
  }

  Future<void> loadFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final tag = prefs.getString(_keyLocaleOverride);
    if (tag == null || tag.isEmpty) {
      _overrideLocale = null;
    } else {
      _overrideLocale = _localeFromTag(tag);
    }
    notifyListeners();
  }

  static Locale _localeFromTag(String tag) {
    if (tag == 'zh_Hant') {
      return const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant');
    }
    return Locale(tag);
  }

  static String _tagFromLocale(Locale locale) {
    if (locale.scriptCode != null && locale.scriptCode!.isNotEmpty) {
      return '${locale.languageCode}_${locale.scriptCode}';
    }
    return locale.languageCode;
  }

  Future<void> setLocale(Locale? locale) async {
    if (_overrideLocale == locale) return;
    if (locale != null && !_isSupported(locale)) return;
    _overrideLocale = locale;
    notifyListeners();

    final prefs = await SharedPreferences.getInstance();
    if (locale == null) {
      await prefs.remove(_keyLocaleOverride);
    } else {
      await prefs.setString(_keyLocaleOverride, _tagFromLocale(locale));
    }
  }

  bool _isSupported(Locale locale) {
    for (final supported in AppLocalizations.supportedLocales) {
      if (supported.languageCode != locale.languageCode) continue;
      final sScript = supported.scriptCode ?? '';
      final lScript = locale.scriptCode ?? '';
      if (sScript == lScript) return true;
    }
    return false;
  }
}
