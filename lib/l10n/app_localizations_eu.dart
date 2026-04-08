// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Basque (`eu`).
class AppLocalizationsEu extends AppLocalizations {
  AppLocalizationsEu([String locale = 'eu']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS bezeroa';

  @override
  String get settings => 'Ezarpenak';

  @override
  String get about => 'Honi buruz';

  @override
  String get appearance => 'Itxura';

  @override
  String get openSource => 'Kode irekia';

  @override
  String get tapToOpen => 'Sakatu arakatzailean irekitzeko';

  @override
  String get themeMode => 'Gaia';

  @override
  String get followSystem => 'Jarraitu sistemari';

  @override
  String get lightMode => 'Argia';

  @override
  String get darkMode => 'Iluna';

  @override
  String get themeColor => 'Gaiaren kolorea';

  @override
  String get themeColorDescription =>
      'Aukeratu gaiaren kolorea; argi eta ilun moduetan aplikatzen da.';

  @override
  String get language => 'Hizkuntza';

  @override
  String get languageFollowSystem => 'Jarraitu sistemari';

  @override
  String get files => 'Fitxategiak';

  @override
  String get serverConfig => 'Zerbitzaria';

  @override
  String get refresh => 'Freskatu';

  @override
  String get user => 'Erabiltzailea';

  @override
  String get login => 'Hasi saioa';

  @override
  String get home => 'Hasiera';

  @override
  String get welcome => 'Ongi etorri';

  @override
  String get logout => 'Amaitu saioa';

  @override
  String get systemStatus => 'Sistemaren egoera';

  @override
  String get error => 'Errorea';

  @override
  String get apps => 'Aplikazioak';

  @override
  String appCount(Object count) {
    return 'Guztira $count';
  }

  @override
  String get noApps => 'Aplikaziorik ez';

  @override
  String get cancel => 'Utzi';

  @override
  String get ok => 'Ados';

  @override
  String get retry => 'Saiatu berriro';

  @override
  String get back => 'Atzera';

  @override
  String get delete => 'Ezabatu';

  @override
  String get cannotGetAppAddress => 'Ezin da aplikazioaren helbidea lortu';

  @override
  String cannotOpen(Object url) {
    return 'Ezin da ireki: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Huts egin du irekitzeak: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Aplikazio mota honek ez du eragiketa hau onartzen';

  @override
  String get starting => 'Abiatzen';

  @override
  String get restarting => 'Berrabiarazten';

  @override
  String get restart => 'Berrabiarazi';

  @override
  String get closed => 'Itxita';

  @override
  String operationFailed(Object e) {
    return 'Eragiketak huts egin du: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – aholkuak';
  }

  @override
  String get noDescription =>
      'Deskribapenik ez. Aldatu ezarpenak konfigurazioan.';

  @override
  String get checkUpdateNotSupported =>
      'Aplikazio honek ez du eguneraketen egiaztapena onartzen';

  @override
  String updateFailed(Object e) {
    return 'Eguneraketak huts egin du: $e';
  }

  @override
  String get confirmUninstall => 'Berretsi desinstalazioa';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Ziur zaude \"$name\" desinstalatu nahi duzula? Desinstalazioaren ondoren datuak ezin dira berreskuratu.';
  }

  @override
  String get uninstall => 'Desinstalatu';

  @override
  String get cannotUninstall => 'Ezin da desinstalatu';

  @override
  String get uninstalled => 'Desinstalatuta';

  @override
  String uninstallFailed(Object e) {
    return 'Desinstalazioak huts egin du: $e';
  }

  @override
  String get cannotRestart => 'Ezin da berrabiarazi';

  @override
  String get cannotClose => 'Ezin da itxi';

  @override
  String get running => 'Exekutatzen';

  @override
  String get open => 'Ireki';

  @override
  String get launchAndOpen => 'Abiarazi eta ireki';

  @override
  String get tips => 'Aholkuak';

  @override
  String get checkAndUpdate => 'Egiaztatu eta eguneratu';

  @override
  String get close => 'Itxi';

  @override
  String get configureServerFirst =>
      'Konfiguratu eta aktibatu zerbitzari bat lehenik';

  @override
  String get loginFailed => 'Saio-hasierak huts egin du';

  @override
  String get configureServer => 'Konfiguratu zerbitzaria';

  @override
  String get username => 'Erabiltzaile-izena';

  @override
  String get password => 'Pasahitza';

  @override
  String get usernameRequired => 'Sartu erabiltzaile-izena';

  @override
  String get passwordRequired => 'Sartu pasahitza';

  @override
  String get passwordMinLength =>
      'Pasahitzak gutxienez 5 karaktere izan behar ditu';

  @override
  String get rememberCredentials => 'Gogoratu kredentzialak';

  @override
  String get newFolder => 'Karpeta berria';

  @override
  String get newFile => 'Fitxategi berria';

  @override
  String get folderName => 'Karpetaren izena';

  @override
  String get fileName => 'Fitxategiaren izena';

  @override
  String get create => 'Sortu';

  @override
  String get folderCreated => 'Karpeta sortu da';

  @override
  String get fileCreated => 'Fitxategia sortu da';

  @override
  String createFailed(Object e) {
    return 'Sortzeak huts egin du: $e';
  }

  @override
  String get rename => 'Berrizendatu';

  @override
  String get renameFolder => 'Berrizendatu karpeta';

  @override
  String get renameFile => 'Berrizendatu fitxategia';

  @override
  String get newName => 'Izen berria';

  @override
  String get renameSuccess => 'Berrizendatuta';

  @override
  String renameFailed(Object e) {
    return 'Berrizendatzeak huts egin du: $e';
  }

  @override
  String get deleteFolder => 'Ezabatu karpeta';

  @override
  String get deleteFile => 'Ezabatu fitxategia';

  @override
  String deleteConfirm(Object name) {
    return 'Ezabatu \"$name\"? Ekintza hau ezin da desegin.';
  }

  @override
  String get deleteSuccess => 'Ezabatuta';

  @override
  String deleteFailed(Object e) {
    return 'Ezabatzeak huts egin du: $e';
  }

  @override
  String get parentDirectory => 'Guraso-karpeta';

  @override
  String get listView => 'Zerrenda-ikuspegia';

  @override
  String get gridView => 'Sareta-ikuspegia';

  @override
  String get folderEmpty => 'Karpeta hutsik dago';

  @override
  String openFile(Object name) {
    return 'Ireki fitxategia: $name';
  }

  @override
  String get folder => 'Karpeta';

  @override
  String get file => 'Fitxategia';

  @override
  String get download => 'Deskargatu';

  @override
  String get downloadNotImplemented => 'Deskarga ez dago inplementatuta';

  @override
  String get downloadSuccess => 'Deskarga arrakastatsua';

  @override
  String get downloadCancelled => 'Deskarga bertan behera utzita';

  @override
  String get downloadPreparing => 'Deskarga prestatzen...';

  @override
  String get downloadAndPlay => 'Deskargatu eta erreproduzitu';

  @override
  String get downloadingForPlayback => 'Deskargatzen erreprodukziorako...';

  @override
  String get fullscreen => 'Pantaila osoa';

  @override
  String get installSuccess => 'Instalazio arrakastatsua';

  @override
  String installSuccessWithApp(Object title) {
    return '$title instalatu da';
  }

  @override
  String installFailed(Object e) {
    return 'Instalazioak huts egin du: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Ezin izan da konfigurazioa lortu: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instalazio pertsonalizatua: $title';
  }

  @override
  String get editComposeHint => 'Editatu docker-compose eta sakatu instalatu';

  @override
  String get install => 'Instalatu';

  @override
  String get appStore => 'Aplikazio-denda';

  @override
  String get searchApps => 'Bilatu aplikazioak';

  @override
  String get category => 'Kategoria';

  @override
  String get allCategories => 'Kategoria guztiak';

  @override
  String get noAppsFound => 'Ez dago bat datorren aplikaziorik';

  @override
  String get installed => 'Instalatuta';

  @override
  String get custom => 'Pertsonalizatua';

  @override
  String get appDetail => 'Aplikazioaren xehetasunak';

  @override
  String get appNotFound => 'Aplikazioa ez da aurkitu';

  @override
  String versionLabel(Object version) {
    return 'Bertsioa: $version';
  }

  @override
  String get description => 'Deskribapena';

  @override
  String get status => 'Egoera';

  @override
  String get notRunning => 'Ez dago exekutatzen';

  @override
  String get installStartNotImplemented =>
      'Instalazioa/hasiera ez dago inplementatuta (/v2/app_management/compose behar da)';

  @override
  String get uninstallNotImplemented =>
      'Desinstalazioa ez dago inplementatuta (/v2/app_management/compose behar da)';

  @override
  String get installStart => 'Instalatu / Hasi';

  @override
  String get legacyApps => 'Aplikazio zaharrak (berriro eraikiko dira)';

  @override
  String get version => 'Bertsioa';

  @override
  String get cpuUsage => 'PUZ erabilera';

  @override
  String cores(Object count) {
    return 'Nukleoak: $count';
  }

  @override
  String get memory => 'Memoria (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% erabilera';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Erabilita $used / Guztira $total';
  }

  @override
  String get storage => 'Biltegiratzea';

  @override
  String totalLabel(Object storage) {
    return 'Guztira $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Erabilita $used · $percent%';
  }

  @override
  String get disk => 'Diskoa';

  @override
  String get networkStatus => 'Sarea';

  @override
  String get addServer => 'Gehitu zerbitzaria';

  @override
  String get editServer => 'Editatu zerbitzaria';

  @override
  String get nasType => 'Mota NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Zerbitzariaren izena';

  @override
  String get serverNameRequired => 'Sartu zerbitzariaren izena';

  @override
  String get hostAddress => 'Ostalariaren helbidea';

  @override
  String get hostAddressHint => '192.168.1.100 edo casaos.local';

  @override
  String get hostAddressRequired => 'Sartu ostalariaren helbidea';

  @override
  String get port => 'Ataka';

  @override
  String get portRequired => 'Sartu ataka';

  @override
  String get portInvalid => 'Ataka baliogabea (1–65535)';

  @override
  String get useHttps => 'Erabili HTTPS';

  @override
  String get save => 'Gorde';

  @override
  String get noServerConfigured => 'Oraindik ez da zerbitzaririk konfiguratu';

  @override
  String get activate => 'Aktibatu';

  @override
  String get edit => 'Editatu';

  @override
  String get confirmDelete => 'Berretsi ezabatzea';

  @override
  String confirmDeleteServer(Object name) {
    return 'Ezabatu \"$name\" zerbitzaria?';
  }

  @override
  String get welcomeToCasaOS => 'Ongi etorri CasaOS / ZimaOS-era';

  @override
  String get createAccountHint => 'Lehenik zure hasierako kontua sortzen dugu.';

  @override
  String get createAccount => 'Sortu kontua';

  @override
  String get start => 'Hasi →';

  @override
  String get confirmPassword => 'Berretsi pasahitza';

  @override
  String get confirmPasswordRequired => 'Sartu pasahitza berriro';

  @override
  String get passwordMismatch => 'Pasahitzak ez datoz bat';

  @override
  String get allDone => 'Prest!';

  @override
  String get accountCreatedHint =>
      'Zure kontua sortu da. Sartu mahaigainean CasaOS / ZimaOS erabiltzeko.';

  @override
  String get enterDesktop => 'Joan mahaigainera';

  @override
  String get cannotGetInitKey =>
      'Ezin da init-giltza lortu. Egiaztatu zerbitzaria.';

  @override
  String initFailed(Object e) {
    return 'Hasieraketak huts egin du: $e';
  }

  @override
  String get openAppWith => 'Ireki aplikazioa honekin';

  @override
  String get builtinBrowser => 'Nabigatzaile integratua';

  @override
  String get systemBrowser => 'Sistemaren nabigatzailea';

  @override
  String get openInSystemBrowser => 'Ireki sistemaren nabigatzailean';

  @override
  String get loading => 'Kargatzen...';
}
