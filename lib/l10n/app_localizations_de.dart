// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS Client';

  @override
  String get settings => 'Einstellungen';

  @override
  String get appearance => 'Darstellung';

  @override
  String get themeMode => 'Designmodus';

  @override
  String get followSystem => 'System folgen';

  @override
  String get lightMode => 'Hellmodus';

  @override
  String get darkMode => 'Dunkelmodus';

  @override
  String get themeColor => 'Designfarbe';

  @override
  String get themeColorDescription =>
      'Wählen Sie eine Designfarbe; sie gilt für Hell- und Dunkelmodus.';

  @override
  String get language => 'Sprache';

  @override
  String get languageFollowSystem => 'System folgen';

  @override
  String get files => 'Dateiverwaltung';

  @override
  String get serverConfig => 'Serverkonfiguration';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get user => 'Benutzer';

  @override
  String get login => 'Anmelden';

  @override
  String get home => 'Startseite';

  @override
  String get welcome => 'Willkommen';

  @override
  String get logout => 'Abmelden';

  @override
  String get systemStatus => 'Systemstatus';

  @override
  String get error => 'Fehler';

  @override
  String get apps => 'Apps';

  @override
  String appCount(Object count) {
    return '$count gesamt';
  }

  @override
  String get noApps => 'Keine Apps';
}
