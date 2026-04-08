// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class AppLocalizationsLv extends AppLocalizations {
  AppLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS klients';

  @override
  String get settings => 'Iestatījumi';

  @override
  String get about => 'Par';

  @override
  String get appearance => 'Izskats';

  @override
  String get openSource => 'Atvērtā koda';

  @override
  String get tapToOpen => 'Pieskarieties, lai atvērtu pārlūkā';

  @override
  String get themeMode => 'Tēma';

  @override
  String get followSystem => 'Kā sistēmā';

  @override
  String get lightMode => 'Gaišs';

  @override
  String get darkMode => 'Tumšs';

  @override
  String get themeColor => 'Tēmas krāsa';

  @override
  String get themeColorDescription =>
      'Izvēlieties tēmas krāsu; attiecas uz gaišo un tumšo režīmu.';

  @override
  String get language => 'Valoda';

  @override
  String get languageFollowSystem => 'Kā sistēmā';

  @override
  String get files => 'Faili';

  @override
  String get serverConfig => 'Serveris';

  @override
  String get refresh => 'Atsvaidzināt';

  @override
  String get user => 'Lietotājs';

  @override
  String get login => 'Pieteikties';

  @override
  String get home => 'Sākums';

  @override
  String get welcome => 'Laipni lūdzam';

  @override
  String get logout => 'Iziet';

  @override
  String get systemStatus => 'Sistēmas statuss';

  @override
  String get error => 'Kļūda';

  @override
  String get apps => 'Lietotnes';

  @override
  String appCount(Object count) {
    return 'Kopā $count';
  }

  @override
  String get noApps => 'Nav lietotņu';

  @override
  String get cancel => 'Atcelt';

  @override
  String get ok => 'Labi';

  @override
  String get retry => 'Mēģināt vēlreiz';

  @override
  String get back => 'Atpakaļ';

  @override
  String get delete => 'Dzēst';

  @override
  String get cannotGetAppAddress => 'Nevar iegūt lietotnes adresi';

  @override
  String cannotOpen(Object url) {
    return 'Nevar atvērt: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Atvēršana neizdevās: $e';
  }

  @override
  String get appTypeNotSupported => 'Šis lietotnes tips neatbalsta šo darbību';

  @override
  String get starting => 'Palaiž';

  @override
  String get restarting => 'Restartē';

  @override
  String get restart => 'Restartēt';

  @override
  String get closed => 'Aizvērts';

  @override
  String operationFailed(Object e) {
    return 'Darbība neizdevās: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – padomi';
  }

  @override
  String get noDescription =>
      'Nav apraksta. Mainiet konfigurāciju iestatījumos.';

  @override
  String get checkUpdateNotSupported =>
      'Šī lietotne neatbalsta atjauninājumu pārbaudi';

  @override
  String updateFailed(Object e) {
    return 'Atjaunināšana neizdevās: $e';
  }

  @override
  String get confirmUninstall => 'Apstiprināt atinstalēšanu';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Vai tiešām vēlaties atinstalēt „$name“? Pēc atinstalēšanas datus nevar atgūt.';
  }

  @override
  String get uninstall => 'Atinstalēt';

  @override
  String get cannotUninstall => 'Nevar atinstalēt';

  @override
  String get uninstalled => 'Atinstalēts';

  @override
  String uninstallFailed(Object e) {
    return 'Atinstalēšana neizdevās: $e';
  }

  @override
  String get cannotRestart => 'Nevar restartēt';

  @override
  String get cannotClose => 'Nevar aizvērt';

  @override
  String get running => 'Darbojas';

  @override
  String get open => 'Atvērt';

  @override
  String get launchAndOpen => 'Palaist un atvērt';

  @override
  String get tips => 'Padomi';

  @override
  String get checkAndUpdate => 'Pārbaudīt un atjaunināt';

  @override
  String get close => 'Aizvērt';

  @override
  String get configureServerFirst =>
      'Vispirms konfigurējiet un aktivizējiet serveri';

  @override
  String get loginFailed => 'Pieteikšanās neizdevās';

  @override
  String get configureServer => 'Konfigurēt serveri';

  @override
  String get username => 'Lietotājvārds';

  @override
  String get password => 'Parole';

  @override
  String get usernameRequired => 'Ievadiet lietotājvārdu';

  @override
  String get passwordRequired => 'Ievadiet paroli';

  @override
  String get passwordMinLength => 'Parolei jābūt vismaz 5 rakstzīmēm';

  @override
  String get rememberCredentials => 'Atcerēties akreditācijas datus';

  @override
  String get newFolder => 'Jauna mape';

  @override
  String get newFile => 'Jauns fails';

  @override
  String get folderName => 'Mapes nosaukums';

  @override
  String get fileName => 'Faila nosaukums';

  @override
  String get create => 'Izveidot';

  @override
  String get folderCreated => 'Mape izveidota';

  @override
  String get fileCreated => 'Fails izveidots';

  @override
  String createFailed(Object e) {
    return 'Izveide neizdevās: $e';
  }

  @override
  String get rename => 'Pārdēvēt';

  @override
  String get renameFolder => 'Pārdēvēt mapi';

  @override
  String get renameFile => 'Pārdēvēt failu';

  @override
  String get newName => 'Jauns nosaukums';

  @override
  String get renameSuccess => 'Veiksmīgi pārdēvēts';

  @override
  String renameFailed(Object e) {
    return 'Pārdēvēšana neizdevās: $e';
  }

  @override
  String get deleteFolder => 'Dzēst mapi';

  @override
  String get deleteFile => 'Dzēst failu';

  @override
  String deleteConfirm(Object name) {
    return 'Dzēst „$name“? Šo darbību nevar atsaukt.';
  }

  @override
  String get deleteSuccess => 'Veiksmīgi dzēsts';

  @override
  String deleteFailed(Object e) {
    return 'Dzēšana neizdevās: $e';
  }

  @override
  String get parentDirectory => 'Vecā mape';

  @override
  String get listView => 'Saraksta skats';

  @override
  String get gridView => 'Režģa skats';

  @override
  String get folderEmpty => 'Mape ir tukša';

  @override
  String openFile(Object name) {
    return 'Atvērt failu: $name';
  }

  @override
  String get folder => 'Mape';

  @override
  String get file => 'Fails';

  @override
  String get download => 'Lejupielādēt';

  @override
  String get downloadNotImplemented => 'Lejupielāde nav implementēta';

  @override
  String get downloadSuccess => 'Lejupielāde veiksmīga';

  @override
  String get downloadCancelled => 'Lejupielāde atcelta';

  @override
  String get downloadPreparing => 'Gatavo lejupielādi...';

  @override
  String get downloadAndPlay => 'Lejupielādēt un atskaņot';

  @override
  String get downloadingForPlayback => 'Lejupielādē atskaņošanai...';

  @override
  String get fullscreen => 'Pilnekrāna';

  @override
  String get installSuccess => 'Instalēšana veiksmīga';

  @override
  String installSuccessWithApp(Object title) {
    return '$title veiksmīgi instalēts';
  }

  @override
  String installFailed(Object e) {
    return 'Instalēšana neizdevās: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Neizdevās iegūt lietotnes konfigurāciju: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Pielāgota instalācija: $title';
  }

  @override
  String get editComposeHint =>
      'Rediģējiet docker-compose un pieskarieties instalēt';

  @override
  String get install => 'Instalēt';

  @override
  String get appStore => 'Lietotņu veikals';

  @override
  String get searchApps => 'Meklēt lietotnes';

  @override
  String get category => 'Kategorija';

  @override
  String get allCategories => 'Visas kategorijas';

  @override
  String get noAppsFound => 'Nav atbilstošu lietotņu';

  @override
  String get installed => 'Instalēts';

  @override
  String get custom => 'Pielāgots';

  @override
  String get appDetail => 'Lietotnes informācija';

  @override
  String get appNotFound => 'Lietotne nav atrasta';

  @override
  String versionLabel(Object version) {
    return 'Versija: $version';
  }

  @override
  String get description => 'Apraksts';

  @override
  String get status => 'Statuss';

  @override
  String get notRunning => 'Nedarbojas';

  @override
  String get installStartNotImplemented =>
      'Instalēšana/palaišana nav implementēta (nepieciešams /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Atinstalēšana nav implementēta (nepieciešams /v2/app_management/compose)';

  @override
  String get installStart => 'Instalēt / Palaist';

  @override
  String get legacyApps => 'Vecās lietotnes (tiks pārbūvētas)';

  @override
  String get version => 'Versija';

  @override
  String get cpuUsage => 'CPU izmantošana';

  @override
  String cores(Object count) {
    return 'Kodoli: $count';
  }

  @override
  String get memory => 'Atmiņa (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% izmantošana';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Izmantots $used / Kopā $total';
  }

  @override
  String get storage => 'Krātuve';

  @override
  String totalLabel(Object storage) {
    return 'Kopā $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Izmantots $used · $percent%';
  }

  @override
  String get disk => 'Disks';

  @override
  String get networkStatus => 'Tīkls';

  @override
  String get addServer => 'Pievienot serveri';

  @override
  String get editServer => 'Rediģēt serveri';

  @override
  String get nasType => 'NAS tips';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Servera nosaukums';

  @override
  String get serverNameRequired => 'Ievadiet servera nosaukumu';

  @override
  String get hostAddress => 'Saimnieka adrese';

  @override
  String get hostAddressHint => '192.168.1.100 vai casaos.local';

  @override
  String get hostAddressRequired => 'Ievadiet saimnieka adresi';

  @override
  String get port => 'Ports';

  @override
  String get portRequired => 'Ievadiet portu';

  @override
  String get portInvalid => 'Nederīgs ports (1–65535)';

  @override
  String get useHttps => 'Izmantot HTTPS';

  @override
  String get save => 'Saglabāt';

  @override
  String get noServerConfigured => 'Vēl nav konfigurēts neviens serveris';

  @override
  String get activate => 'Aktivizēt';

  @override
  String get edit => 'Rediģēt';

  @override
  String get confirmDelete => 'Apstiprināt dzēšanu';

  @override
  String confirmDeleteServer(Object name) {
    return 'Dzēst serveri „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Laipni lūdzam CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Vispirms izveidosim jūsu sākotnējo kontu.';

  @override
  String get createAccount => 'Izveidot kontu';

  @override
  String get start => 'Sākt →';

  @override
  String get confirmPassword => 'Apstiprināt paroli';

  @override
  String get confirmPasswordRequired => 'Ievadiet paroli vēlreiz';

  @override
  String get passwordMismatch => 'Paroles nesakrīt';

  @override
  String get allDone => 'Gatavs!';

  @override
  String get accountCreatedHint =>
      'Jūsu konts ir izveidots. Dodieties uz darbvirsmu CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Uz darbvirsmu';

  @override
  String get cannotGetInitKey =>
      'Nevar iegūt init atslēgu. Pārbaudiet serveri.';

  @override
  String initFailed(Object e) {
    return 'Inicializācija neizdevās: $e';
  }

  @override
  String get openAppWith => 'Atvērt lietotni ar';

  @override
  String get builtinBrowser => 'Iebūvētais pārlūks';

  @override
  String get systemBrowser => 'Sistēmas pārlūks';

  @override
  String get openInSystemBrowser => 'Atvērt sistēmas pārlūkā';

  @override
  String get loading => 'Ielādē...';
}
