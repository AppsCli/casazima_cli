// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS-klient';

  @override
  String get settings => 'Indstillinger';

  @override
  String get about => 'Om';

  @override
  String get appearance => 'Udseende';

  @override
  String get openSource => 'Open source';

  @override
  String get tapToOpen => 'Tryk for at åbne i browser';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Følg systemet';

  @override
  String get lightMode => 'Lyst';

  @override
  String get darkMode => 'Mørkt';

  @override
  String get themeColor => 'Temafarve';

  @override
  String get themeColorDescription =>
      'Vælg en temafarve; gælder både lyst og mørkt tema.';

  @override
  String get language => 'Sprog';

  @override
  String get languageFollowSystem => 'Følg systemet';

  @override
  String get files => 'Filer';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Opdater';

  @override
  String get user => 'Bruger';

  @override
  String get login => 'Log ind';

  @override
  String get home => 'Hjem';

  @override
  String get welcome => 'Velkommen';

  @override
  String get logout => 'Log ud';

  @override
  String get systemStatus => 'Systemstatus';

  @override
  String get error => 'Fejl';

  @override
  String get apps => 'Apps';

  @override
  String appCount(Object count) {
    return '$count i alt';
  }

  @override
  String get noApps => 'Ingen apps';

  @override
  String get cancel => 'Annuller';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Prøv igen';

  @override
  String get back => 'Tilbage';

  @override
  String get delete => 'Slet';

  @override
  String get cannotGetAppAddress => 'Kan ikke hente app-adresse';

  @override
  String cannotOpen(Object url) {
    return 'Kan ikke åbne: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Kunne ikke åbne: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Denne app-type understøtter ikke handlingen';

  @override
  String get starting => 'Starter';

  @override
  String get restarting => 'Genstarter';

  @override
  String get restart => 'Genstart';

  @override
  String get closed => 'Lukket';

  @override
  String operationFailed(Object e) {
    return 'Handlingen mislykkedes: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – tips';
  }

  @override
  String get noDescription =>
      'Ingen beskrivelse. Gå til indstillinger for at ændre konfigurationen.';

  @override
  String get checkUpdateNotSupported =>
      'Denne app understøtter ikke opdateringstjek';

  @override
  String updateFailed(Object e) {
    return 'Opdatering mislykkedes: $e';
  }

  @override
  String get confirmUninstall => 'Bekræft afinstallation';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Er du sikker på, at du vil afinstallere \"$name\"? Data kan ikke gendannes efter afinstallation.';
  }

  @override
  String get uninstall => 'Afinstaller';

  @override
  String get cannotUninstall => 'Kan ikke afinstallere';

  @override
  String get uninstalled => 'Afinstalleret';

  @override
  String uninstallFailed(Object e) {
    return 'Afinstallation mislykkedes: $e';
  }

  @override
  String get cannotRestart => 'Kan ikke genstarte';

  @override
  String get cannotClose => 'Kan ikke lukke';

  @override
  String get running => 'Kører';

  @override
  String get open => 'Åbn';

  @override
  String get launchAndOpen => 'Start og åbn';

  @override
  String get tips => 'Tips';

  @override
  String get checkAndUpdate => 'Tjek og opdater';

  @override
  String get close => 'Luk';

  @override
  String get configureServerFirst => 'Konfigurer og aktiver en server først';

  @override
  String get loginFailed => 'Login mislykkedes';

  @override
  String get configureServer => 'Konfigurer server';

  @override
  String get username => 'Brugernavn';

  @override
  String get password => 'Adgangskode';

  @override
  String get usernameRequired => 'Indtast brugernavn';

  @override
  String get passwordRequired => 'Indtast adgangskode';

  @override
  String get passwordMinLength => 'Adgangskoden skal være mindst 5 tegn';

  @override
  String get rememberCredentials => 'Husk loginoplysninger';

  @override
  String get newFolder => 'Ny mappe';

  @override
  String get newFile => 'Ny fil';

  @override
  String get folderName => 'Mappenavn';

  @override
  String get fileName => 'Filnavn';

  @override
  String get create => 'Opret';

  @override
  String get folderCreated => 'Mappen blev oprettet';

  @override
  String get fileCreated => 'Filen blev oprettet';

  @override
  String createFailed(Object e) {
    return 'Kunne ikke oprette: $e';
  }

  @override
  String get rename => 'Omdøb';

  @override
  String get renameFolder => 'Omdøb mappe';

  @override
  String get renameFile => 'Omdøb fil';

  @override
  String get newName => 'Nyt navn';

  @override
  String get renameSuccess => 'Omdøbt';

  @override
  String renameFailed(Object e) {
    return 'Omdøbning mislykkedes: $e';
  }

  @override
  String get deleteFolder => 'Slet mappe';

  @override
  String get deleteFile => 'Slet fil';

  @override
  String deleteConfirm(Object name) {
    return 'Slet \"$name\"? Dette kan ikke fortrydes.';
  }

  @override
  String get deleteSuccess => 'Slettet';

  @override
  String deleteFailed(Object e) {
    return 'Sletning mislykkedes: $e';
  }

  @override
  String get parentDirectory => 'Overordnet mappe';

  @override
  String get listView => 'Listevisning';

  @override
  String get gridView => 'Gittervisning';

  @override
  String get folderEmpty => 'Mappen er tom';

  @override
  String openFile(Object name) {
    return 'Åbn fil: $name';
  }

  @override
  String get folder => 'Mappe';

  @override
  String get file => 'Fil';

  @override
  String get download => 'Download';

  @override
  String get downloadNotImplemented => 'Download er ikke implementeret';

  @override
  String get downloadSuccess => 'Download fuldført';

  @override
  String get downloadCancelled => 'Download annulleret';

  @override
  String get downloadPreparing => 'Forbereder download...';

  @override
  String get downloadAndPlay => 'Download og afspil';

  @override
  String get downloadingForPlayback => 'Downloader til afspilning...';

  @override
  String get fullscreen => 'Fuldskærm';

  @override
  String get installSuccess => 'Installation lykkedes';

  @override
  String installSuccessWithApp(Object title) {
    return '$title blev installeret';
  }

  @override
  String installFailed(Object e) {
    return 'Installation mislykkedes: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Kunne ikke hente app-konfiguration: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Brugerdefineret installation: $title';
  }

  @override
  String get editComposeHint => 'Rediger docker-compose og tryk installer';

  @override
  String get install => 'Installer';

  @override
  String get appStore => 'App-butik';

  @override
  String get searchApps => 'Søg apps';

  @override
  String get category => 'Kategori';

  @override
  String get allCategories => 'Alle kategorier';

  @override
  String get noAppsFound => 'Ingen matchende apps';

  @override
  String get installed => 'Installeret';

  @override
  String get custom => 'Brugerdefineret';

  @override
  String get appDetail => 'App-detaljer';

  @override
  String get appNotFound => 'App ikke fundet';

  @override
  String versionLabel(Object version) {
    return 'Version: $version';
  }

  @override
  String get description => 'Beskrivelse';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Kører ikke';

  @override
  String get installStartNotImplemented =>
      'Installer/start er ikke implementeret (kræver /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Afinstaller er ikke implementeret (kræver /v2/app_management/compose)';

  @override
  String get installStart => 'Installer / Start';

  @override
  String get legacyApps => 'Ældre apps (skal genbygges)';

  @override
  String get version => 'Version';

  @override
  String get cpuUsage => 'CPU-forbrug';

  @override
  String cores(Object count) {
    return 'Kerner: $count';
  }

  @override
  String get memory => 'Hukommelse (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% i brug';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Brugt $used / I alt $total';
  }

  @override
  String get storage => 'Lager';

  @override
  String totalLabel(Object storage) {
    return 'I alt $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Brugt $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Netværk';

  @override
  String get addServer => 'Tilføj server';

  @override
  String get editServer => 'Rediger server';

  @override
  String get nasType => 'NAS-type';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Servernavn';

  @override
  String get serverNameRequired => 'Indtast servernavn';

  @override
  String get hostAddress => 'Værtsadresse';

  @override
  String get hostAddressHint => '192.168.1.100 eller casaos.local';

  @override
  String get hostAddressRequired => 'Indtast værtsadresse';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Indtast port';

  @override
  String get portInvalid => 'Ugyldig port (1–65535)';

  @override
  String get useHttps => 'Brug HTTPS';

  @override
  String get save => 'Gem';

  @override
  String get noServerConfigured => 'Ingen server konfigureret endnu';

  @override
  String get activate => 'Aktivér';

  @override
  String get edit => 'Rediger';

  @override
  String get confirmDelete => 'Bekræft sletning';

  @override
  String confirmDeleteServer(Object name) {
    return 'Slet serveren \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Velkommen til CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Lad os oprette din første konto først.';

  @override
  String get createAccount => 'Opret konto';

  @override
  String get start => 'Start →';

  @override
  String get confirmPassword => 'Bekræft adgangskode';

  @override
  String get confirmPasswordRequired => 'Indtast adgangskode igen';

  @override
  String get passwordMismatch => 'Adgangskoderne stemmer ikke overens';

  @override
  String get allDone => 'Færdig!';

  @override
  String get accountCreatedHint =>
      'Din konto er oprettet. Gå til skrivebordet for at bruge CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Gå til skrivebord';

  @override
  String get cannotGetInitKey => 'Kan ikke hente init-nøgle. Tjek serveren.';

  @override
  String initFailed(Object e) {
    return 'Initialisering mislykkedes: $e';
  }

  @override
  String get openAppWith => 'Åbn app med';

  @override
  String get builtinBrowser => 'Indbygget browser';

  @override
  String get systemBrowser => 'Systembrowser';

  @override
  String get openInSystemBrowser => 'Åbn i systembrowser';

  @override
  String get loading => 'Indlæser...';
}
