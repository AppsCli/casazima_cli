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
  String get settings => 'Réglages';

  @override
  String get about => 'À propos';

  @override
  String get appearance => 'Apparence';

  @override
  String get openSource => 'Open source';

  @override
  String get tapToOpen => 'Appuyez pour ouvrir dans le navigateur';

  @override
  String get themeMode => 'Mode du thème';

  @override
  String get followSystem => 'Comme le système';

  @override
  String get lightMode => 'Clair';

  @override
  String get darkMode => 'Sombre';

  @override
  String get themeColor => 'Couleur du thème';

  @override
  String get themeColorDescription =>
      'Choisissez une couleur de thème ; elle s’applique aux modes clair et sombre.';

  @override
  String get language => 'Langue';

  @override
  String get languageFollowSystem => 'Comme le système';

  @override
  String get files => 'Fichiers';

  @override
  String get serverConfig => 'Serveur';

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

  @override
  String get cancel => 'Annuler';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Réessayer';

  @override
  String get back => 'Retour';

  @override
  String get delete => 'Supprimer';

  @override
  String get cannotGetAppAddress =>
      'Impossible d’obtenir l’adresse de l’application';

  @override
  String cannotOpen(Object url) {
    return 'Impossible d’ouvrir : $url';
  }

  @override
  String openFailed(Object e) {
    return 'Échec de l’ouverture : $e';
  }

  @override
  String get appTypeNotSupported =>
      'Ce type d’application ne prend pas en charge cette action';

  @override
  String get starting => 'Démarrage';

  @override
  String get restarting => 'Redémarrage';

  @override
  String get restart => 'Redémarrer';

  @override
  String get closed => 'Fermée';

  @override
  String operationFailed(Object e) {
    return 'Échec de l’opération : $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — Conseils';
  }

  @override
  String get noDescription =>
      'Aucune description. Modifiez la configuration dans les réglages.';

  @override
  String get checkUpdateNotSupported =>
      'Cette application ne prend pas en charge la vérification des mises à jour';

  @override
  String updateFailed(Object e) {
    return 'Échec de la mise à jour : $e';
  }

  @override
  String get confirmUninstall => 'Confirmer la désinstallation';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Désinstaller « $name » ? Les données ne pourront pas être récupérées.';
  }

  @override
  String get uninstall => 'Désinstaller';

  @override
  String get cannotUninstall => 'Impossible de désinstaller';

  @override
  String get uninstalled => 'Désinstallée';

  @override
  String uninstallFailed(Object e) {
    return 'Échec de la désinstallation : $e';
  }

  @override
  String get cannotRestart => 'Impossible de redémarrer';

  @override
  String get cannotClose => 'Impossible de fermer';

  @override
  String get running => 'En cours d’exécution';

  @override
  String get open => 'Ouvrir';

  @override
  String get launchAndOpen => 'Lancer et ouvrir';

  @override
  String get tips => 'Conseils';

  @override
  String get checkAndUpdate => 'Vérifier et mettre à jour';

  @override
  String get close => 'Fermer';

  @override
  String get configureServerFirst => 'Configurez et activez d’abord un serveur';

  @override
  String get loginFailed => 'Échec de la connexion';

  @override
  String get configureServer => 'Configurer le serveur';

  @override
  String get username => 'Nom d’utilisateur';

  @override
  String get password => 'Mot de passe';

  @override
  String get usernameRequired => 'Saisissez le nom d’utilisateur';

  @override
  String get passwordRequired => 'Saisissez le mot de passe';

  @override
  String get passwordMinLength =>
      'Le mot de passe doit contenir au moins 5 caractères';

  @override
  String get rememberCredentials => 'Mémoriser les identifiants';

  @override
  String get newFolder => 'Nouveau dossier';

  @override
  String get newFile => 'Nouveau fichier';

  @override
  String get folderName => 'Nom du dossier';

  @override
  String get fileName => 'Nom du fichier';

  @override
  String get create => 'Créer';

  @override
  String get folderCreated => 'Dossier créé';

  @override
  String get fileCreated => 'Fichier créé';

  @override
  String createFailed(Object e) {
    return 'Échec de la création : $e';
  }

  @override
  String get rename => 'Renommer';

  @override
  String get renameFolder => 'Renommer le dossier';

  @override
  String get renameFile => 'Renommer le fichier';

  @override
  String get newName => 'Nouveau nom';

  @override
  String get renameSuccess => 'Renommé avec succès';

  @override
  String renameFailed(Object e) {
    return 'Échec du renommage : $e';
  }

  @override
  String get deleteFolder => 'Supprimer le dossier';

  @override
  String get deleteFile => 'Supprimer le fichier';

  @override
  String deleteConfirm(Object name) {
    return 'Supprimer « $name » ? Cette action est irréversible.';
  }

  @override
  String get deleteSuccess => 'Supprimé avec succès';

  @override
  String deleteFailed(Object e) {
    return 'Échec de la suppression : $e';
  }

  @override
  String get parentDirectory => 'Dossier parent';

  @override
  String get listView => 'Liste';

  @override
  String get gridView => 'Grille';

  @override
  String get folderEmpty => 'Le dossier est vide';

  @override
  String openFile(Object name) {
    return 'Ouvrir le fichier : $name';
  }

  @override
  String get folder => 'Dossier';

  @override
  String get file => 'Fichier';

  @override
  String get download => 'Télécharger';

  @override
  String get downloadNotImplemented => 'Téléchargement non implémenté';

  @override
  String get downloadSuccess => 'Téléchargement terminé';

  @override
  String get downloadCancelled => 'Téléchargement annulé';

  @override
  String get downloadPreparing => 'Préparation du téléchargement…';

  @override
  String get downloadAndPlay => 'Télécharger et lire';

  @override
  String get downloadingForPlayback => 'Téléchargement pour lecture…';

  @override
  String get fullscreen => 'Plein écran';

  @override
  String get installSuccess => 'Installation réussie';

  @override
  String installSuccessWithApp(Object title) {
    return '« $title » installée avec succès';
  }

  @override
  String installFailed(Object e) {
    return 'Échec de l’installation : $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Impossible d’obtenir la configuration de l’app : $e';
  }

  @override
  String customInstall(Object title) {
    return 'Installation personnalisée : $title';
  }

  @override
  String get editComposeHint =>
      'Modifiez docker-compose puis appuyez sur installer';

  @override
  String get install => 'Installer';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => 'Rechercher des apps';

  @override
  String get category => 'Catégorie';

  @override
  String get allCategories => 'Toutes les catégories';

  @override
  String get noAppsFound => 'Aucune application correspondante';

  @override
  String get installed => 'Installée';

  @override
  String get custom => 'Personnalisée';

  @override
  String get appDetail => 'Détails de l’application';

  @override
  String get appNotFound => 'Application introuvable';

  @override
  String versionLabel(Object version) {
    return 'Version : $version';
  }

  @override
  String get description => 'Description';

  @override
  String get status => 'État';

  @override
  String get notRunning => 'Arrêtée';

  @override
  String get installStartNotImplemented =>
      'Installation/démarrage non implémentés (nécessite /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Désinstallation non implémentée (nécessite /v2/app_management/compose)';

  @override
  String get installStart => 'Installer / Démarrer';

  @override
  String get legacyApps => 'Applications héritées (à reconstruire)';

  @override
  String get version => 'Version';

  @override
  String get cpuUsage => 'Utilisation CPU';

  @override
  String cores(Object count) {
    return 'Cœurs : $count';
  }

  @override
  String get memory => 'Mémoire (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent % d’utilisation';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Utilisé $used / Total $total';
  }

  @override
  String get storage => 'Stockage';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Utilisé $used · $percent %';
  }

  @override
  String get disk => 'Disque';

  @override
  String get networkStatus => 'Réseau';

  @override
  String get addServer => 'Ajouter un serveur';

  @override
  String get editServer => 'Modifier le serveur';

  @override
  String get nasType => 'Type de NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nom du serveur';

  @override
  String get serverNameRequired => 'Saisissez le nom du serveur';

  @override
  String get hostAddress => 'Adresse de l’hôte';

  @override
  String get hostAddressHint => '192.168.1.100 ou casaos.local';

  @override
  String get hostAddressRequired => 'Saisissez l’adresse de l’hôte';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Saisissez le port';

  @override
  String get portInvalid => 'Saisissez un port valide (1-65535)';

  @override
  String get useHttps => 'Utiliser HTTPS';

  @override
  String get save => 'Enregistrer';

  @override
  String get noServerConfigured => 'Aucun serveur configuré';

  @override
  String get activate => 'Activer';

  @override
  String get edit => 'Modifier';

  @override
  String get confirmDelete => 'Confirmer la suppression';

  @override
  String confirmDeleteServer(Object name) {
    return 'Supprimer le serveur « $name » ?';
  }

  @override
  String get welcomeToCasaOS => 'Bienvenue dans CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Créons d’abord votre compte initial.';

  @override
  String get createAccount => 'Créer un compte';

  @override
  String get start => 'Commencer →';

  @override
  String get confirmPassword => 'Confirmer le mot de passe';

  @override
  String get confirmPasswordRequired => 'Saisissez à nouveau le mot de passe';

  @override
  String get passwordMismatch => 'Les mots de passe ne correspondent pas';

  @override
  String get allDone => 'Terminé !';

  @override
  String get accountCreatedHint =>
      'Votre compte a été créé. Accédez au bureau pour découvrir CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Aller au bureau';

  @override
  String get cannotGetInitKey =>
      'Impossible d’obtenir la clé d’initialisation. Vérifiez l’état du serveur.';

  @override
  String initFailed(Object e) {
    return 'Échec de l’initialisation : $e';
  }

  @override
  String get openAppWith => 'Ouvrir l’application avec';

  @override
  String get builtinBrowser => 'Navigateur intégré';

  @override
  String get systemBrowser => 'Navigateur système';

  @override
  String get openInSystemBrowser => 'Ouvrir dans le navigateur système';

  @override
  String get loading => 'Chargement…';
}
