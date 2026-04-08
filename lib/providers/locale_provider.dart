import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../l10n/app_localizations.dart';

/// Language option for "follow system" (null) or a specific [Locale].
/// Native display names for the language selector (in each language's own script).
final Map<Locale, String> kLocaleNativeNames = <Locale, String>{
  Locale('af'): 'Afrikaans',
  Locale('en'): 'English',
  Locale('zh'): '简体中文',
  Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'): '繁體中文',
  Locale('ja'): '日本語',
  Locale('kk'): 'Қазақша',
  Locale('ko'): '한국어',
  Locale('de'): 'Deutsch',
  Locale('es'): 'Español',
  Locale('fr'): 'Français',
  Locale('it'): 'Italiano',
  Locale('ru'): 'Русский',
  Locale('ar'): 'العربية',
  Locale('pt'): 'Português',
  Locale('pt', 'BR'): 'Português (Brasil)',
  Locale('nl'): 'Nederlands',
  Locale('pl'): 'Polski',
  Locale('tr'): 'Türkçe',
  Locale('vi'): 'Tiếng Việt',
  Locale('th'): 'ไทย',
  Locale('id'): 'Bahasa Indonesia',
  Locale('cs'): 'Čeština',
  Locale('da'): 'Dansk',
  Locale('fi'): 'Suomi',
  Locale('nb'): 'Norsk (bokmål)',
  Locale('ne'): 'नेपाली',
  Locale('sv'): 'Svenska',
  Locale('uk'): 'Українська',
  Locale('hi'): 'हिन्दी',
  Locale('ms'): 'Bahasa Melayu',
  Locale('mk'): 'Македонски',
  Locale('fil'): 'Filipino',
  Locale('el'): 'Ελληνικά',
  Locale('ro'): 'Română',
  Locale('hu'): 'Magyar',
  Locale('sk'): 'Slovenčina',
  Locale('hr'): 'Hrvatski',
  Locale('be'): 'Беларуская',
  Locale('bg'): 'Български',
  Locale('sl'): 'Slovenščina',
  Locale('lt'): 'Lietuvių',
  Locale('lv'): 'Latviešu',
  Locale('et'): 'Eesti',
  Locale('bn'): 'বাংলা',
  Locale('fa'): 'فارسی',
  Locale('he'): 'עברית',
  Locale('sw'): 'Kiswahili',
  Locale('ca'): 'Català',
  Locale('sr'): 'Српски',
  Locale('ur'): 'اردو',
  Locale('is'): 'Íslenska',
  Locale('eu'): 'Euskara',
  Locale('gl'): 'Galego',
  Locale('sq'): 'Shqip',
  Locale('uz'): 'Oʻzbekcha',
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
    final pc = platform.countryCode;
    if (pc != null && pc.isNotEmpty) {
      for (final supported in AppLocalizations.supportedLocales) {
        if (supported.languageCode != platform.languageCode) continue;
        if (supported.countryCode != pc) continue;
        final sScript = supported.scriptCode ?? '';
        final pScript = platform.scriptCode ?? '';
        if (sScript == pScript) return supported;
      }
    }
    for (final supported in AppLocalizations.supportedLocales) {
      if (supported.languageCode != platform.languageCode) continue;
      if (supported.scriptCode == null || supported.scriptCode!.isEmpty) {
        if (supported.countryCode != null && supported.countryCode!.isNotEmpty) {
          continue;
        }
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
    final country = RegExp(r'^([a-z]{2})_([A-Z]{2})$').firstMatch(tag);
    if (country != null) {
      return Locale(country.group(1)!, country.group(2)!);
    }
    return Locale(tag);
  }

  static String _tagFromLocale(Locale locale) {
    if (locale.scriptCode != null && locale.scriptCode!.isNotEmpty) {
      return '${locale.languageCode}_${locale.scriptCode}';
    }
    if (locale.countryCode != null && locale.countryCode!.isNotEmpty) {
      return '${locale.languageCode}_${locale.countryCode}';
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
      if (!_localeMatchesSupported(locale, supported)) continue;
      return true;
    }
    return false;
  }

  /// True if [requested] is satisfied by this app's [supported] entry (incl. pt vs pt_BR).
  static bool _localeMatchesSupported(Locale requested, Locale supported) {
    if (requested.languageCode != supported.languageCode) return false;
    final rScript = requested.scriptCode ?? '';
    final sScript = supported.scriptCode ?? '';
    if (rScript != sScript) return false;
    final sCountry = supported.countryCode;
    if (sCountry != null && sCountry.isNotEmpty) {
      return requested.countryCode == sCountry;
    }
    return requested.countryCode == null || requested.countryCode!.isEmpty;
  }
}
