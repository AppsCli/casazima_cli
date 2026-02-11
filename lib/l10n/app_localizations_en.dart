// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS Client';

  @override
  String get settings => 'Settings';

  @override
  String get appearance => 'Appearance';

  @override
  String get themeMode => 'Theme mode';

  @override
  String get followSystem => 'Follow system';

  @override
  String get lightMode => 'Light mode';

  @override
  String get darkMode => 'Dark mode';

  @override
  String get themeColor => 'Theme color';

  @override
  String get themeColorDescription =>
      'Select a theme color; it applies to both light and dark mode.';

  @override
  String get language => 'Language';

  @override
  String get languageFollowSystem => 'Follow system';

  @override
  String get files => 'Files';

  @override
  String get serverConfig => 'Server config';

  @override
  String get refresh => 'Refresh';

  @override
  String get user => 'User';

  @override
  String get login => 'Login';

  @override
  String get home => 'Home';

  @override
  String get welcome => 'Welcome';

  @override
  String get logout => 'Log out';

  @override
  String get systemStatus => 'System status';

  @override
  String get error => 'Error';

  @override
  String get apps => 'Apps';

  @override
  String appCount(Object count) {
    return '$count in total';
  }

  @override
  String get noApps => 'No apps';
}
