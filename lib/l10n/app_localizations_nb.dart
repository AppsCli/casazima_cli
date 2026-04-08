// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS-klient';

  @override
  String get settings => 'Innstillinger';

  @override
  String get about => 'Om';

  @override
  String get appearance => 'Utseende';

  @override
  String get openSource => 'Åpen kildekode';

  @override
  String get tapToOpen => 'Trykk for å åpne i nettleser';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Følg systemet';

  @override
  String get lightMode => 'Lyst';

  @override
  String get darkMode => 'Mørkt';

  @override
  String get themeColor => 'Temafarge';

  @override
  String get themeColorDescription =>
      'Velg en temafarge; gjelder både lyst og mørkt tema.';

  @override
  String get language => 'Språk';

  @override
  String get languageFollowSystem => 'Følg systemet';

  @override
  String get files => 'Filer';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Oppdater';

  @override
  String get user => 'Bruker';

  @override
  String get login => 'Logg inn';

  @override
  String get home => 'Hjem';

  @override
  String get welcome => 'Velkommen';

  @override
  String get logout => 'Logg ut';

  @override
  String get systemStatus => 'Systemstatus';

  @override
  String get error => 'Feil';

  @override
  String get apps => 'Apper';

  @override
  String appCount(Object count) {
    return '$count totalt';
  }

  @override
  String get noApps => 'Ingen apper';

  @override
  String get cancel => 'Avbryt';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get back => 'Tilbake';

  @override
  String get delete => 'Slett';

  @override
  String get cannotGetAppAddress => 'Kan ikke hente app-adresse';

  @override
  String cannotOpen(Object url) {
    return 'Kan ikke åpne: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Kunne ikke åpne: $e';
  }

  @override
  String get appTypeNotSupported => 'Denne app-typen støtter ikke handlingen';

  @override
  String get starting => 'Starter';

  @override
  String get restarting => 'Starter på nytt';

  @override
  String get restart => 'Start på nytt';

  @override
  String get closed => 'Lukket';

  @override
  String operationFailed(Object e) {
    return 'Handlingen mislyktes: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – tips';
  }

  @override
  String get noDescription =>
      'Ingen beskrivelse. Gå til innstillinger for å endre konfigurasjonen.';

  @override
  String get checkUpdateNotSupported =>
      'Denne appen støtter ikke oppdateringssjekk';

  @override
  String updateFailed(Object e) {
    return 'Oppdatering mislyktes: $e';
  }

  @override
  String get confirmUninstall => 'Bekreft avinstallering';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Er du sikker på at du vil avinstallere \"$name\"? Data kan ikke gjenopprettes etter avinstallering.';
  }

  @override
  String get uninstall => 'Avinstaller';

  @override
  String get cannotUninstall => 'Kan ikke avinstallere';

  @override
  String get uninstalled => 'Avinstallert';

  @override
  String uninstallFailed(Object e) {
    return 'Avinstallering mislyktes: $e';
  }

  @override
  String get cannotRestart => 'Kan ikke starte på nytt';

  @override
  String get cannotClose => 'Kan ikke lukke';

  @override
  String get running => 'Kjører';

  @override
  String get open => 'Åpne';

  @override
  String get launchAndOpen => 'Start og åpne';

  @override
  String get tips => 'Tips';

  @override
  String get checkAndUpdate => 'Sjekk og oppdater';

  @override
  String get close => 'Lukk';

  @override
  String get configureServerFirst => 'Konfigurer og aktiver en server først';

  @override
  String get loginFailed => 'Innlogging mislyktes';

  @override
  String get configureServer => 'Konfigurer server';

  @override
  String get username => 'Brukernavn';

  @override
  String get password => 'Passord';

  @override
  String get usernameRequired => 'Skriv inn brukernavn';

  @override
  String get passwordRequired => 'Skriv inn passord';

  @override
  String get passwordMinLength => 'Passordet må være minst 5 tegn';

  @override
  String get rememberCredentials => 'Husk påloggingsdetaljer';

  @override
  String get newFolder => 'Ny mappe';

  @override
  String get newFile => 'Ny fil';

  @override
  String get folderName => 'Mappenavn';

  @override
  String get fileName => 'Filnavn';

  @override
  String get create => 'Opprett';

  @override
  String get folderCreated => 'Mappen ble opprettet';

  @override
  String get fileCreated => 'Filen ble opprettet';

  @override
  String createFailed(Object e) {
    return 'Kunne ikke opprette: $e';
  }

  @override
  String get rename => 'Gi nytt navn';

  @override
  String get renameFolder => 'Gi mappen nytt navn';

  @override
  String get renameFile => 'Gi filen nytt navn';

  @override
  String get newName => 'Nytt navn';

  @override
  String get renameSuccess => 'Navnet ble endret';

  @override
  String renameFailed(Object e) {
    return 'Navneendring mislyktes: $e';
  }

  @override
  String get deleteFolder => 'Slett mappe';

  @override
  String get deleteFile => 'Slett fil';

  @override
  String deleteConfirm(Object name) {
    return 'Slette \"$name\"? Dette kan ikke angres.';
  }

  @override
  String get deleteSuccess => 'Slettet';

  @override
  String deleteFailed(Object e) {
    return 'Sletting mislyktes: $e';
  }

  @override
  String get parentDirectory => 'Overordnet mappe';

  @override
  String get listView => 'Listevisning';

  @override
  String get gridView => 'Rutenett';

  @override
  String get folderEmpty => 'Mappen er tom';

  @override
  String openFile(Object name) {
    return 'Åpne fil: $name';
  }

  @override
  String get folder => 'Mappe';

  @override
  String get file => 'Fil';

  @override
  String get download => 'Last ned';

  @override
  String get downloadNotImplemented => 'Nedlasting er ikke implementert';

  @override
  String get downloadSuccess => 'Nedlasting fullført';

  @override
  String get downloadCancelled => 'Nedlasting avbrutt';

  @override
  String get downloadPreparing => 'Forbereder nedlasting...';

  @override
  String get downloadAndPlay => 'Last ned og spill av';

  @override
  String get downloadingForPlayback => 'Laster ned for avspilling...';

  @override
  String get fullscreen => 'Fullskjerm';

  @override
  String get installSuccess => 'Installasjonen lyktes';

  @override
  String installSuccessWithApp(Object title) {
    return '$title ble installert';
  }

  @override
  String installFailed(Object e) {
    return 'Installasjon mislyktes: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Kunne ikke hente app-konfigurasjon: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Tilpasset installasjon: $title';
  }

  @override
  String get editComposeHint => 'Rediger docker-compose og trykk installer';

  @override
  String get install => 'Installer';

  @override
  String get appStore => 'Appbutikk';

  @override
  String get searchApps => 'Søk apper';

  @override
  String get category => 'Kategori';

  @override
  String get allCategories => 'Alle kategorier';

  @override
  String get noAppsFound => 'Ingen treff';

  @override
  String get installed => 'Installert';

  @override
  String get custom => 'Tilpasset';

  @override
  String get appDetail => 'App-detaljer';

  @override
  String get appNotFound => 'App ikke funnet';

  @override
  String versionLabel(Object version) {
    return 'Versjon: $version';
  }

  @override
  String get description => 'Beskrivelse';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Kjører ikke';

  @override
  String get installStartNotImplemented =>
      'Installer/start er ikke implementert (krever /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Avinstaller er ikke implementert (krever /v2/app_management/compose)';

  @override
  String get installStart => 'Installer / Start';

  @override
  String get legacyApps => 'Eldre apper (skal bygges om)';

  @override
  String get version => 'Versjon';

  @override
  String get cpuUsage => 'CPU-bruk';

  @override
  String cores(Object count) {
    return 'Kjerner: $count';
  }

  @override
  String get memory => 'Minne (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% i bruk';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Brukt $used / Totalt $total';
  }

  @override
  String get storage => 'Lagring';

  @override
  String totalLabel(Object storage) {
    return 'Totalt $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Brukt $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Nettverk';

  @override
  String get addServer => 'Legg til server';

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
  String get serverNameRequired => 'Skriv inn servernavn';

  @override
  String get hostAddress => 'Vertsadresse';

  @override
  String get hostAddressHint => '192.168.1.100 eller casaos.local';

  @override
  String get hostAddressRequired => 'Skriv inn vertsadresse';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Skriv inn port';

  @override
  String get portInvalid => 'Ugyldig port (1–65535)';

  @override
  String get useHttps => 'Bruk HTTPS';

  @override
  String get save => 'Lagre';

  @override
  String get noServerConfigured => 'Ingen server konfigurert ennå';

  @override
  String get activate => 'Aktiver';

  @override
  String get edit => 'Rediger';

  @override
  String get confirmDelete => 'Bekreft sletting';

  @override
  String confirmDeleteServer(Object name) {
    return 'Slette serveren \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Velkommen til CasaOS / ZimaOS';

  @override
  String get createAccountHint =>
      'La oss opprette den første kontoen din først.';

  @override
  String get createAccount => 'Opprett konto';

  @override
  String get start => 'Start →';

  @override
  String get confirmPassword => 'Bekreft passord';

  @override
  String get confirmPasswordRequired => 'Skriv inn passordet igjen';

  @override
  String get passwordMismatch => 'Passordene stemmer ikke';

  @override
  String get allDone => 'Ferdig!';

  @override
  String get accountCreatedHint =>
      'Kontoen din er opprettet. Gå til skrivebordet for å bruke CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Gå til skrivebord';

  @override
  String get cannotGetInitKey => 'Kan ikke hente init-nøkkel. Sjekk serveren.';

  @override
  String initFailed(Object e) {
    return 'Initialisering mislyktes: $e';
  }

  @override
  String get openAppWith => 'Åpne app med';

  @override
  String get builtinBrowser => 'Innebygd nettleser';

  @override
  String get systemBrowser => 'Systemnettleser';

  @override
  String get openInSystemBrowser => 'Åpne i systemnettleser';

  @override
  String get loading => 'Laster...';
}
