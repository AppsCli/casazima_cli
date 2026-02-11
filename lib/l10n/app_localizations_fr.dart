// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Client CasaOS / ZimaOS';

  @override
  String get settings => 'Paramètres';

  @override
  String get appearance => 'Apparence';

  @override
  String get themeMode => 'Mode du thème';

  @override
  String get followSystem => 'Suivre le système';

  @override
  String get lightMode => 'Mode clair';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get themeColor => 'Couleur du thème';

  @override
  String get themeColorDescription =>
      'Choisissez une couleur de thème ; elle s\'applique au mode clair et sombre.';

  @override
  String get language => 'Langue';

  @override
  String get languageFollowSystem => 'Suivre le système';

  @override
  String get files => 'Gestion des fichiers';

  @override
  String get serverConfig => 'Configuration du serveur';

  @override
  String get refresh => 'Actualiser';

  @override
  String get user => 'Utilisateur';

  @override
  String get login => 'Connexion';

  @override
  String get home => 'Accueil';

  @override
  String get welcome => 'Bienvenue';

  @override
  String get logout => 'Déconnexion';

  @override
  String get systemStatus => 'État du système';

  @override
  String get error => 'Erreur';

  @override
  String get apps => 'Applications';

  @override
  String appCount(Object count) {
    return '$count au total';
  }

  @override
  String get noApps => 'Aucune application';
}
