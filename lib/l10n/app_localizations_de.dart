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
  String get appTitleClient => 'CasaOS / ZimaOS-Client';

  @override
  String get settings => 'Einstellungen';

  @override
  String get about => 'Über';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get openSource => 'Open Source';

  @override
  String get tapToOpen => 'Tippen, um im Browser zu öffnen';

  @override
  String get themeMode => 'Designmodus';

  @override
  String get followSystem => 'System folgen';

  @override
  String get lightMode => 'Hell';

  @override
  String get darkMode => 'Dunkel';

  @override
  String get themeColor => 'Designfarbe';

  @override
  String get themeColorDescription =>
      'Wählen Sie eine Designfarbe; gilt für hellen und dunklen Modus.';

  @override
  String get language => 'Sprache';

  @override
  String get languageFollowSystem => 'System folgen';

  @override
  String get files => 'Dateien';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get user => 'Benutzer';

  @override
  String get login => 'Anmelden';

  @override
  String get home => 'Start';

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
    return '$count insgesamt';
  }

  @override
  String get noApps => 'Keine Apps';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get back => 'Zurück';

  @override
  String get delete => 'Löschen';

  @override
  String get cannotGetAppAddress => 'App-Adresse konnte nicht abgerufen werden';

  @override
  String cannotOpen(Object url) {
    return 'Öffnen nicht möglich: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Öffnen fehlgeschlagen: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Dieser App-Typ unterstützt diesen Vorgang nicht';

  @override
  String get starting => 'Wird gestartet';

  @override
  String get restarting => 'Wird neu gestartet';

  @override
  String get restart => 'Neu starten';

  @override
  String get closed => 'Geschlossen';

  @override
  String operationFailed(Object e) {
    return 'Vorgang fehlgeschlagen: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – Tipps';
  }

  @override
  String get noDescription =>
      'Keine Beschreibung. Konfiguration in den Einstellungen anpassen.';

  @override
  String get checkUpdateNotSupported =>
      'Diese App unterstützt keine Updateprüfung';

  @override
  String updateFailed(Object e) {
    return 'Update fehlgeschlagen: $e';
  }

  @override
  String get confirmUninstall => 'Deinstallation bestätigen';

  @override
  String uninstallConfirmMessage(Object name) {
    return '„$name“ wirklich deinstallieren? Daten können danach nicht wiederhergestellt werden.';
  }

  @override
  String get uninstall => 'Deinstallieren';

  @override
  String get cannotUninstall => 'Deinstallation nicht möglich';

  @override
  String get uninstalled => 'Deinstalliert';

  @override
  String uninstallFailed(Object e) {
    return 'Deinstallation fehlgeschlagen: $e';
  }

  @override
  String get cannotRestart => 'Neustart nicht möglich';

  @override
  String get cannotClose => 'Schließen nicht möglich';

  @override
  String get running => 'Läuft';

  @override
  String get open => 'Öffnen';

  @override
  String get launchAndOpen => 'Starten und öffnen';

  @override
  String get tips => 'Tipps';

  @override
  String get checkAndUpdate => 'Prüfen und aktualisieren';

  @override
  String get close => 'Schließen';

  @override
  String get configureServerFirst =>
      'Bitte zuerst einen Server einrichten und aktivieren';

  @override
  String get loginFailed => 'Anmeldung fehlgeschlagen';

  @override
  String get configureServer => 'Server einrichten';

  @override
  String get username => 'Benutzername';

  @override
  String get password => 'Passwort';

  @override
  String get usernameRequired => 'Bitte Benutzername eingeben';

  @override
  String get passwordRequired => 'Bitte Passwort eingeben';

  @override
  String get passwordMinLength => 'Passwort mindestens 5 Zeichen';

  @override
  String get rememberCredentials => 'Anmeldedaten merken';

  @override
  String get newFolder => 'Neuer Ordner';

  @override
  String get newFile => 'Neue Datei';

  @override
  String get folderName => 'Ordnername';

  @override
  String get fileName => 'Dateiname';

  @override
  String get create => 'Erstellen';

  @override
  String get folderCreated => 'Ordner erstellt';

  @override
  String get fileCreated => 'Datei erstellt';

  @override
  String createFailed(Object e) {
    return 'Erstellen fehlgeschlagen: $e';
  }

  @override
  String get rename => 'Umbenennen';

  @override
  String get renameFolder => 'Ordner umbenennen';

  @override
  String get renameFile => 'Datei umbenennen';

  @override
  String get newName => 'Neuer Name';

  @override
  String get renameSuccess => 'Umbenennung erfolgreich';

  @override
  String renameFailed(Object e) {
    return 'Umbenennen fehlgeschlagen: $e';
  }

  @override
  String get deleteFolder => 'Ordner löschen';

  @override
  String get deleteFile => 'Datei löschen';

  @override
  String deleteConfirm(Object name) {
    return '„$name“ löschen? Dieser Vorgang kann nicht rückgängig gemacht werden.';
  }

  @override
  String get deleteSuccess => 'Gelöscht';

  @override
  String deleteFailed(Object e) {
    return 'Löschen fehlgeschlagen: $e';
  }

  @override
  String get parentDirectory => 'Übergeordneter Ordner';

  @override
  String get listView => 'Liste';

  @override
  String get gridView => 'Raster';

  @override
  String get folderEmpty => 'Ordner ist leer';

  @override
  String openFile(Object name) {
    return 'Datei öffnen: $name';
  }

  @override
  String get folder => 'Ordner';

  @override
  String get file => 'Datei';

  @override
  String get download => 'Herunterladen';

  @override
  String get downloadNotImplemented => 'Download nicht implementiert';

  @override
  String get downloadSuccess => 'Download abgeschlossen';

  @override
  String get downloadCancelled => 'Download abgebrochen';

  @override
  String get downloadPreparing => 'Download wird vorbereitet …';

  @override
  String get downloadAndPlay => 'Herunterladen und abspielen';

  @override
  String get downloadingForPlayback => 'Wird für Wiedergabe heruntergeladen …';

  @override
  String get fullscreen => 'Vollbild';

  @override
  String get installSuccess => 'Installation erfolgreich';

  @override
  String installSuccessWithApp(Object title) {
    return '„$title“ installiert';
  }

  @override
  String installFailed(Object e) {
    return 'Installation fehlgeschlagen: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'App-Konfiguration konnte nicht geladen werden: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Benutzerdefinierte Installation: $title';
  }

  @override
  String get editComposeHint =>
      'docker-compose bearbeiten und auf Installieren tippen';

  @override
  String get install => 'Installieren';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => 'Apps durchsuchen';

  @override
  String get category => 'Kategorie';

  @override
  String get allCategories => 'Alle Kategorien';

  @override
  String get noAppsFound => 'Keine passenden Apps';

  @override
  String get installed => 'Installiert';

  @override
  String get custom => 'Benutzerdefiniert';

  @override
  String get appDetail => 'App-Details';

  @override
  String get appNotFound => 'App nicht gefunden';

  @override
  String versionLabel(Object version) {
    return 'Version: $version';
  }

  @override
  String get description => 'Beschreibung';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Nicht aktiv';

  @override
  String get installStartNotImplemented =>
      'Installieren/Starten nicht implementiert (benötigt /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Deinstallieren nicht implementiert (benötigt /v2/app_management/compose)';

  @override
  String get installStart => 'Installieren / Starten';

  @override
  String get legacyApps => 'Legacy-Apps (werden neu aufgebaut)';

  @override
  String get version => 'Version';

  @override
  String get cpuUsage => 'CPU-Auslastung';

  @override
  String cores(Object count) {
    return 'Kerne: $count';
  }

  @override
  String get memory => 'Arbeitsspeicher (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent % Auslastung';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Belegt $used / Gesamt $total';
  }

  @override
  String get storage => 'Speicher';

  @override
  String totalLabel(Object storage) {
    return 'Gesamt $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Belegt $used · $percent %';
  }

  @override
  String get disk => 'Festplatte';

  @override
  String get networkStatus => 'Netzwerk';

  @override
  String get addServer => 'Server hinzufügen';

  @override
  String get editServer => 'Server bearbeiten';

  @override
  String get nasType => 'NAS-Typ';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Servername';

  @override
  String get serverNameRequired => 'Bitte Servername eingeben';

  @override
  String get hostAddress => 'Hostadresse';

  @override
  String get hostAddressHint => '192.168.1.100 oder casaos.local';

  @override
  String get hostAddressRequired => 'Bitte Hostadresse eingeben';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Bitte Port eingeben';

  @override
  String get portInvalid => 'Gültigen Port eingeben (1–65535)';

  @override
  String get useHttps => 'HTTPS verwenden';

  @override
  String get save => 'Speichern';

  @override
  String get noServerConfigured => 'Noch kein Server konfiguriert';

  @override
  String get activate => 'Aktivieren';

  @override
  String get edit => 'Bearbeiten';

  @override
  String get confirmDelete => 'Löschen bestätigen';

  @override
  String confirmDeleteServer(Object name) {
    return 'Server „$name“ löschen?';
  }

  @override
  String get welcomeToCasaOS => 'Willkommen bei CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Legen Sie zuerst Ihr Startkonto an.';

  @override
  String get createAccount => 'Konto erstellen';

  @override
  String get start => 'Start →';

  @override
  String get confirmPassword => 'Passwort bestätigen';

  @override
  String get confirmPasswordRequired => 'Bitte Passwort erneut eingeben';

  @override
  String get passwordMismatch => 'Passwörter stimmen nicht überein';

  @override
  String get allDone => 'Fertig!';

  @override
  String get accountCreatedHint =>
      'Ihr Konto wurde erstellt. Wechseln Sie zum Desktop von CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Zum Desktop';

  @override
  String get cannotGetInitKey =>
      'Initialisierungsschlüssel konnte nicht abgerufen werden. Serverstatus prüfen.';

  @override
  String initFailed(Object e) {
    return 'Initialisierung fehlgeschlagen: $e';
  }

  @override
  String get openAppWith => 'App öffnen mit';

  @override
  String get builtinBrowser => 'Integrierter Browser';

  @override
  String get systemBrowser => 'Systembrowser';

  @override
  String get openInSystemBrowser => 'Im Systembrowser öffnen';

  @override
  String get loading => 'Wird geladen …';
}
