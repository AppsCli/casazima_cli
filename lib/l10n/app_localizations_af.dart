// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Afrikaans (`af`).
class AppLocalizationsAf extends AppLocalizations {
  AppLocalizationsAf([String locale = 'af']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS-kliënt';

  @override
  String get settings => 'Instellings';

  @override
  String get about => 'Aangaande';

  @override
  String get appearance => 'Voorkoms';

  @override
  String get openSource => 'Oopbron';

  @override
  String get tapToOpen => 'Tik om in blaaier oop te maak';

  @override
  String get themeMode => 'Temamodus';

  @override
  String get followSystem => 'Volg stelsel';

  @override
  String get lightMode => 'Lig';

  @override
  String get darkMode => 'Donker';

  @override
  String get themeColor => 'Temakleur';

  @override
  String get themeColorDescription =>
      'Kies \'n temakleur; geld vir lig- en donkermodus.';

  @override
  String get language => 'Taal';

  @override
  String get languageFollowSystem => 'Volg stelsel';

  @override
  String get files => 'Lêers';

  @override
  String get serverConfig => 'Bediener';

  @override
  String get refresh => 'Verfris';

  @override
  String get user => 'Gebruiker';

  @override
  String get login => 'Meld aan';

  @override
  String get home => 'Tuis';

  @override
  String get welcome => 'Welkom';

  @override
  String get logout => 'Meld af';

  @override
  String get systemStatus => 'Stelselstatus';

  @override
  String get error => 'Fout';

  @override
  String get apps => 'Toeps';

  @override
  String appCount(Object count) {
    return '$count totaal';
  }

  @override
  String get noApps => 'Geen toeps';

  @override
  String get cancel => 'Kanselleer';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Probeer weer';

  @override
  String get back => 'Terug';

  @override
  String get delete => 'Skrap';

  @override
  String get cannotGetAppAddress => 'Kan nie toep-adres kry nie';

  @override
  String cannotOpen(Object url) {
    return 'Kan nie oopmaak nie: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Kon nie oopmaak nie: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Hierdie toep-tipe ondersteun nie hierdie bewerking nie';

  @override
  String get starting => 'Begin';

  @override
  String get restarting => 'Herbegin';

  @override
  String get restart => 'Herbegin';

  @override
  String get closed => 'Toe';

  @override
  String operationFailed(Object e) {
    return 'Bewerking het misluk: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Wenke';
  }

  @override
  String get noDescription =>
      'Geen beskrywing. Gaan na instellings om opstelling te wysig.';

  @override
  String get checkUpdateNotSupported =>
      'Hierdie toep ondersteun nie opdateringkontrole nie';

  @override
  String updateFailed(Object e) {
    return 'Opdatering het misluk: $e';
  }

  @override
  String get confirmUninstall => 'Bevestig deïnstalleer';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Is jy seker jy wil \"$name\" deïnstalleer? Data kan nie na deïnstallasie herwin word nie.';
  }

  @override
  String get uninstall => 'Deïnstalleer';

  @override
  String get cannotUninstall => 'Kan nie deïnstalleer nie';

  @override
  String get uninstalled => 'Gedeïnstalleer';

  @override
  String uninstallFailed(Object e) {
    return 'Deïnstallasie het misluk: $e';
  }

  @override
  String get cannotRestart => 'Kan nie herbegin nie';

  @override
  String get cannotClose => 'Kan nie toemaak nie';

  @override
  String get running => 'Loop';

  @override
  String get open => 'Maak oop';

  @override
  String get launchAndOpen => 'Begin en maak oop';

  @override
  String get tips => 'Wenke';

  @override
  String get checkAndUpdate => 'Kontroleer en werk op';

  @override
  String get close => 'Maak toe';

  @override
  String get configureServerFirst =>
      'Stel eers \'n bediener op en aktiveer dit';

  @override
  String get loginFailed => 'Aanmelding het misluk';

  @override
  String get configureServer => 'Stel bediener op';

  @override
  String get username => 'Gebruikersnaam';

  @override
  String get password => 'Wagwoord';

  @override
  String get usernameRequired => 'Voer gebruikersnaam in';

  @override
  String get passwordRequired => 'Voer wagwoord in';

  @override
  String get passwordMinLength => 'Wagwoord moet minstens 5 karakters wees';

  @override
  String get rememberCredentials => 'Onthou aanmeldgegewens';

  @override
  String get newFolder => 'Nuwe vouer';

  @override
  String get newFile => 'Nuwe lêer';

  @override
  String get folderName => 'Vouernaam';

  @override
  String get fileName => 'Lêernaam';

  @override
  String get create => 'Skep';

  @override
  String get folderCreated => 'Vouer geskep';

  @override
  String get fileCreated => 'Lêer geskep';

  @override
  String createFailed(Object e) {
    return 'Skep het misluk: $e';
  }

  @override
  String get rename => 'Hernoem';

  @override
  String get renameFolder => 'Hernoem vouer';

  @override
  String get renameFile => 'Hernoem lêer';

  @override
  String get newName => 'Nuwe naam';

  @override
  String get renameSuccess => 'Hernoem suksesvol';

  @override
  String renameFailed(Object e) {
    return 'Hernoem het misluk: $e';
  }

  @override
  String get deleteFolder => 'Skrap vouer';

  @override
  String get deleteFile => 'Skrap lêer';

  @override
  String deleteConfirm(Object name) {
    return 'Skrap \"$name\"? Hierdie aksie kan nie ongedaan gemaak word nie.';
  }

  @override
  String get deleteSuccess => 'Suksesvol geskrap';

  @override
  String deleteFailed(Object e) {
    return 'Skrap het misluk: $e';
  }

  @override
  String get parentDirectory => 'Ouervouer';

  @override
  String get listView => 'Lysaansig';

  @override
  String get gridView => 'Rooster-aansig';

  @override
  String get folderEmpty => 'Vouer is leeg';

  @override
  String openFile(Object name) {
    return 'Maak lêer oop: $name';
  }

  @override
  String get folder => 'Vouer';

  @override
  String get file => 'Lêer';

  @override
  String get download => 'Laai af';

  @override
  String get downloadNotImplemented => 'Aflaai nie geïmplementeer nie';

  @override
  String get downloadSuccess => 'Aflaai suksesvol';

  @override
  String get downloadCancelled => 'Aflaai gekanselleer';

  @override
  String get downloadPreparing => 'Berei aflaai voor...';

  @override
  String get downloadAndPlay => 'Laai af en speel';

  @override
  String get downloadingForPlayback => 'Laai af vir terugspeel...';

  @override
  String get fullscreen => 'Volskerm';

  @override
  String get installSuccess => 'Installasie suksesvol';

  @override
  String installSuccessWithApp(Object title) {
    return '$title suksesvol geïnstalleer';
  }

  @override
  String installFailed(Object e) {
    return 'Installasie het misluk: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Kon nie toep-opstelling kry nie: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Pasgemaakte installasie: $title';
  }

  @override
  String get editComposeHint => 'Wysig docker-compose en tik installeer';

  @override
  String get install => 'Installeer';

  @override
  String get appStore => 'Toepwinkel';

  @override
  String get searchApps => 'Soek toeps';

  @override
  String get category => 'Kategorie';

  @override
  String get allCategories => 'Alle kategorieë';

  @override
  String get noAppsFound => 'Geen passende toeps';

  @override
  String get installed => 'Geïnstalleer';

  @override
  String get custom => 'Pasgemaak';

  @override
  String get appDetail => 'Toepbesonderhede';

  @override
  String get appNotFound => 'Toep nie gevind nie';

  @override
  String versionLabel(Object version) {
    return 'Weergawe: $version';
  }

  @override
  String get description => 'Beskrywing';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Loop nie';

  @override
  String get installStartNotImplemented =>
      'Installeer/begin nie geïmplementeer nie (benodig /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Deïnstalleer nie geïmplementeer nie (benodig /v2/app_management/compose)';

  @override
  String get installStart => 'Installeer / Begin';

  @override
  String get legacyApps => 'Ou toeps (sal herbou word)';

  @override
  String get version => 'Weergawe';

  @override
  String get cpuUsage => 'CPU-gebruik';

  @override
  String cores(Object count) {
    return 'Kerne: $count';
  }

  @override
  String get memory => 'Geheue (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% gebruik';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Gebruik $used / Totaal $total';
  }

  @override
  String get storage => 'Berging';

  @override
  String totalLabel(Object storage) {
    return 'Totaal $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Gebruik $used · $percent%';
  }

  @override
  String get disk => 'Skyf';

  @override
  String get networkStatus => 'Netwerk';

  @override
  String get addServer => 'Voeg bediener by';

  @override
  String get editServer => 'Wysig bediener';

  @override
  String get nasType => 'NAS-tipe';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Bedienernaam';

  @override
  String get serverNameRequired => 'Voer bedienernaam in';

  @override
  String get hostAddress => 'Gasheeradres';

  @override
  String get hostAddressHint => '192.168.1.100 of casaos.local';

  @override
  String get hostAddressRequired => 'Voer gasheeradres in';

  @override
  String get port => 'Poort';

  @override
  String get portRequired => 'Voer poort in';

  @override
  String get portInvalid => 'Ongeldige poort (1-65535)';

  @override
  String get useHttps => 'Gebruik HTTPS';

  @override
  String get save => 'Stoor';

  @override
  String get noServerConfigured => 'Nog geen bediener opgestel nie';

  @override
  String get activate => 'Aktiveer';

  @override
  String get edit => 'Wysig';

  @override
  String get confirmDelete => 'Bevestig skrap';

  @override
  String confirmDeleteServer(Object name) {
    return 'Skrap bediener \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Welkom by CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Kom ons skep eers jou aanvanklike rekening.';

  @override
  String get createAccount => 'Skep rekening';

  @override
  String get start => 'Begin →';

  @override
  String get confirmPassword => 'Bevestig wagwoord';

  @override
  String get confirmPasswordRequired => 'Voer wagwoord weer in';

  @override
  String get passwordMismatch => 'Wagwoorde stem nie ooreen nie';

  @override
  String get allDone => 'Klaar!';

  @override
  String get accountCreatedHint =>
      'Jou rekening is geskep. Gaan na die lessenaar vir CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Gaan na lessenaar';

  @override
  String get cannotGetInitKey =>
      'Kan nie init-sleutel kry nie. Kontroleer bediener.';

  @override
  String initFailed(Object e) {
    return 'Beginsel het misluk: $e';
  }

  @override
  String get openAppWith => 'Maak toep oop met';

  @override
  String get builtinBrowser => 'Ingeboude blaaier';

  @override
  String get systemBrowser => 'Stelselblaaier';

  @override
  String get openInSystemBrowser => 'Maak oop in stelselblaaier';

  @override
  String get loading => 'Laai...';
}
