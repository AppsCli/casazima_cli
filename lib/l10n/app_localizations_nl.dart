// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS-client';

  @override
  String get settings => 'Instellingen';

  @override
  String get about => 'Over';

  @override
  String get appearance => 'Weergave';

  @override
  String get openSource => 'Open source';

  @override
  String get tapToOpen => 'Tik om in browser te openen';

  @override
  String get themeMode => 'Thema';

  @override
  String get followSystem => 'Systeem volgen';

  @override
  String get lightMode => 'Licht';

  @override
  String get darkMode => 'Donker';

  @override
  String get themeColor => 'Themakleur';

  @override
  String get themeColorDescription =>
      'Kies een themakleur; geldt voor licht en donker.';

  @override
  String get language => 'Taal';

  @override
  String get languageFollowSystem => 'Systeem volgen';

  @override
  String get files => 'Bestanden';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Vernieuwen';

  @override
  String get user => 'Gebruiker';

  @override
  String get login => 'Inloggen';

  @override
  String get home => 'Start';

  @override
  String get welcome => 'Welkom';

  @override
  String get logout => 'Uitloggen';

  @override
  String get systemStatus => 'Systeemstatus';

  @override
  String get error => 'Fout';

  @override
  String get apps => 'Apps';

  @override
  String appCount(Object count) {
    return '$count in totaal';
  }

  @override
  String get noApps => 'Geen apps';

  @override
  String get cancel => 'Annuleren';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Opnieuw';

  @override
  String get back => 'Terug';

  @override
  String get delete => 'Verwijderen';

  @override
  String get cannotGetAppAddress => 'App-adres ophalen mislukt';

  @override
  String cannotOpen(Object url) {
    return 'Kan niet openen: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Openen mislukt: $e';
  }

  @override
  String get appTypeNotSupported => 'Dit app-type ondersteunt deze actie niet';

  @override
  String get starting => 'Starten';

  @override
  String get restarting => 'Herstarten';

  @override
  String get restart => 'Herstarten';

  @override
  String get closed => 'Gesloten';

  @override
  String operationFailed(Object e) {
    return 'Actie mislukt: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Tips';
  }

  @override
  String get noDescription =>
      'Geen beschrijving. Pas configuratie aan in instellingen.';

  @override
  String get checkUpdateNotSupported =>
      'Deze app ondersteunt geen updatecontrole';

  @override
  String updateFailed(Object e) {
    return 'Bijwerken mislukt: $e';
  }

  @override
  String get confirmUninstall => 'Deïnstallatie bevestigen';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Weet je zeker dat je \"$name\" wilt verwijderen? Gegevens kunnen niet worden hersteld.';
  }

  @override
  String get uninstall => 'Deïnstalleren';

  @override
  String get cannotUninstall => 'Kan niet deïnstalleren';

  @override
  String get uninstalled => 'Gedeïnstalleerd';

  @override
  String uninstallFailed(Object e) {
    return 'Deïnstallatie mislukt: $e';
  }

  @override
  String get cannotRestart => 'Kan niet herstarten';

  @override
  String get cannotClose => 'Kan niet sluiten';

  @override
  String get running => 'Actief';

  @override
  String get open => 'Openen';

  @override
  String get launchAndOpen => 'Starten en openen';

  @override
  String get tips => 'Tips';

  @override
  String get checkAndUpdate => 'Controleren en bijwerken';

  @override
  String get close => 'Sluiten';

  @override
  String get configureServerFirst => 'Configureer en activeer eerst een server';

  @override
  String get loginFailed => 'Inloggen mislukt';

  @override
  String get configureServer => 'Server configureren';

  @override
  String get username => 'Gebruikersnaam';

  @override
  String get password => 'Wachtwoord';

  @override
  String get usernameRequired => 'Voer gebruikersnaam in';

  @override
  String get passwordRequired => 'Voer wachtwoord in';

  @override
  String get passwordMinLength => 'Wachtwoord minimaal 5 tekens';

  @override
  String get rememberCredentials => 'Gegevens onthouden';

  @override
  String get newFolder => 'Nieuwe map';

  @override
  String get newFile => 'Nieuw bestand';

  @override
  String get folderName => 'Mapnaam';

  @override
  String get fileName => 'Bestandsnaam';

  @override
  String get create => 'Aanmaken';

  @override
  String get folderCreated => 'Map aangemaakt';

  @override
  String get fileCreated => 'Bestand aangemaakt';

  @override
  String createFailed(Object e) {
    return 'Aanmaken mislukt: $e';
  }

  @override
  String get rename => 'Hernoemen';

  @override
  String get renameFolder => 'Map hernoemen';

  @override
  String get renameFile => 'Bestand hernoemen';

  @override
  String get newName => 'Nieuwe naam';

  @override
  String get renameSuccess => 'Hernoemen gelukt';

  @override
  String renameFailed(Object e) {
    return 'Hernoemen mislukt: $e';
  }

  @override
  String get deleteFolder => 'Map verwijderen';

  @override
  String get deleteFile => 'Bestand verwijderen';

  @override
  String deleteConfirm(Object name) {
    return '\"$name\" verwijderen? Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get deleteSuccess => 'Verwijderd';

  @override
  String deleteFailed(Object e) {
    return 'Verwijderen mislukt: $e';
  }

  @override
  String get parentDirectory => 'Bovenliggende map';

  @override
  String get listView => 'Lijst';

  @override
  String get gridView => 'Raster';

  @override
  String get folderEmpty => 'Map is leeg';

  @override
  String openFile(Object name) {
    return 'Bestand openen: $name';
  }

  @override
  String get folder => 'Map';

  @override
  String get file => 'Bestand';

  @override
  String get download => 'Downloaden';

  @override
  String get downloadNotImplemented => 'Download niet geïmplementeerd';

  @override
  String get downloadSuccess => 'Download voltooid';

  @override
  String get downloadCancelled => 'Download geannuleerd';

  @override
  String get downloadPreparing => 'Download voorbereiden...';

  @override
  String get downloadAndPlay => 'Downloaden en afspelen';

  @override
  String get downloadingForPlayback => 'Downloaden voor afspelen...';

  @override
  String get fullscreen => 'Volledig scherm';

  @override
  String get installSuccess => 'Installatie gelukt';

  @override
  String installSuccessWithApp(Object title) {
    return '$title geïnstalleerd';
  }

  @override
  String installFailed(Object e) {
    return 'Installatie mislukt: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'App-config ophalen mislukt: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Aangepaste installatie: $title';
  }

  @override
  String get editComposeHint => 'Bewerk docker-compose en tik op installeren';

  @override
  String get install => 'Installeren';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => 'Apps zoeken';

  @override
  String get category => 'Categorie';

  @override
  String get allCategories => 'Alle categorieën';

  @override
  String get noAppsFound => 'Geen apps gevonden';

  @override
  String get installed => 'Geïnstalleerd';

  @override
  String get custom => 'Aangepast';

  @override
  String get appDetail => 'App-details';

  @override
  String get appNotFound => 'App niet gevonden';

  @override
  String versionLabel(Object version) {
    return 'Versie: $version';
  }

  @override
  String get description => 'Beschrijving';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Gestopt';

  @override
  String get installStartNotImplemented =>
      'Installeren/starten niet geïmplementeerd (vereist /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Deïnstalleren niet geïmplementeerd (vereist /v2/app_management/compose)';

  @override
  String get installStart => 'Installeren / Starten';

  @override
  String get legacyApps => 'Legacy-apps (worden herbouwd)';

  @override
  String get version => 'Versie';

  @override
  String get cpuUsage => 'CPU-gebruik';

  @override
  String cores(Object count) {
    return 'Kernen: $count';
  }

  @override
  String get memory => 'Geheugen (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% in gebruik';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Gebruikt $used / Totaal $total';
  }

  @override
  String get storage => 'Opslag';

  @override
  String totalLabel(Object storage) {
    return 'Totaal $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Gebruikt $used · $percent%';
  }

  @override
  String get disk => 'Schijf';

  @override
  String get networkStatus => 'Netwerk';

  @override
  String get addServer => 'Server toevoegen';

  @override
  String get editServer => 'Server bewerken';

  @override
  String get nasType => 'NAS-type';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Servernaam';

  @override
  String get serverNameRequired => 'Voer servernaam in';

  @override
  String get hostAddress => 'Hostadres';

  @override
  String get hostAddressHint => '192.168.1.100 of casaos.local';

  @override
  String get hostAddressRequired => 'Voer hostadres in';

  @override
  String get port => 'Poort';

  @override
  String get portRequired => 'Voer poort in';

  @override
  String get portInvalid => 'Ongeldige poort (1-65535)';

  @override
  String get useHttps => 'HTTPS gebruiken';

  @override
  String get save => 'Opslaan';

  @override
  String get noServerConfigured => 'Nog geen server geconfigureerd';

  @override
  String get activate => 'Activeren';

  @override
  String get edit => 'Bewerken';

  @override
  String get confirmDelete => 'Verwijderen bevestigen';

  @override
  String confirmDeleteServer(Object name) {
    return 'Server \"$name\" verwijderen?';
  }

  @override
  String get welcomeToCasaOS => 'Welkom bij CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Laten we eerst je eerste account aanmaken.';

  @override
  String get createAccount => 'Account aanmaken';

  @override
  String get start => 'Start →';

  @override
  String get confirmPassword => 'Wachtwoord bevestigen';

  @override
  String get confirmPasswordRequired => 'Voer wachtwoord opnieuw in';

  @override
  String get passwordMismatch => 'Wachtwoorden komen niet overeen';

  @override
  String get allDone => 'Klaar!';

  @override
  String get accountCreatedHint =>
      'Je account is aangemaakt. Ga naar het bureaublad van CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Naar bureaublad';

  @override
  String get cannotGetInitKey =>
      'Init-sleutel ophalen mislukt. Controleer de server.';

  @override
  String initFailed(Object e) {
    return 'Initialisatie mislukt: $e';
  }

  @override
  String get openAppWith => 'App openen met';

  @override
  String get builtinBrowser => 'Ingebouwde browser';

  @override
  String get systemBrowser => 'Systeembrowser';

  @override
  String get openInSystemBrowser => 'Openen in systeembrowser';

  @override
  String get loading => 'Laden...';
}
