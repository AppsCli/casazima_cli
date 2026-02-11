// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Client CasaOS / ZimaOS';

  @override
  String get settings => 'Impostazioni';

  @override
  String get appearance => 'Aspetto';

  @override
  String get themeMode => 'Modalità tema';

  @override
  String get followSystem => 'Segui sistema';

  @override
  String get lightMode => 'Modalità chiara';

  @override
  String get darkMode => 'Modalità scura';

  @override
  String get themeColor => 'Colore tema';

  @override
  String get themeColorDescription =>
      'Seleziona un colore per il tema; si applica alla modalità chiara e scura.';

  @override
  String get language => 'Lingua';

  @override
  String get languageFollowSystem => 'Segui sistema';

  @override
  String get files => 'Gestione file';

  @override
  String get serverConfig => 'Configurazione server';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get user => 'Utente';

  @override
  String get login => 'Accedi';

  @override
  String get home => 'Home';

  @override
  String get welcome => 'Benvenuto';

  @override
  String get logout => 'Esci';

  @override
  String get systemStatus => 'Stato del sistema';

  @override
  String get error => 'Errore';

  @override
  String get apps => 'App';

  @override
  String appCount(Object count) {
    return '$count in totale';
  }

  @override
  String get noApps => 'Nessuna app';
}
