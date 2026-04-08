// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Icelandic (`is`).
class AppLocalizationsIs extends AppLocalizations {
  AppLocalizationsIs([String locale = 'is']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS biðlari';

  @override
  String get settings => 'Stillingar';

  @override
  String get about => 'Um forritið';

  @override
  String get appearance => 'Útlit';

  @override
  String get openSource => 'Opinn hugbúnaður';

  @override
  String get tapToOpen => 'Ýttu til að opna í vafra';

  @override
  String get themeMode => 'Þema';

  @override
  String get followSystem => 'Fylgja kerfinu';

  @override
  String get lightMode => 'Ljóst';

  @override
  String get darkMode => 'Dökkt';

  @override
  String get themeColor => 'Þemalitur';

  @override
  String get themeColorDescription =>
      'Veldu þemalit; gildir um ljósan og dökkan ham.';

  @override
  String get language => 'Tungumál';

  @override
  String get languageFollowSystem => 'Fylgja kerfinu';

  @override
  String get files => 'Skrár';

  @override
  String get serverConfig => 'Þjónn';

  @override
  String get refresh => 'Endurnýja';

  @override
  String get user => 'Notandi';

  @override
  String get login => 'Skrá inn';

  @override
  String get home => 'Heim';

  @override
  String get welcome => 'Velkomin';

  @override
  String get logout => 'Skrá út';

  @override
  String get systemStatus => 'Staða kerfis';

  @override
  String get error => 'Villa';

  @override
  String get apps => 'Forrit';

  @override
  String appCount(Object count) {
    return '$count samtals';
  }

  @override
  String get noApps => 'Engin forrit';

  @override
  String get cancel => 'Hætta við';

  @override
  String get ok => 'Í lagi';

  @override
  String get retry => 'Reyna aftur';

  @override
  String get back => 'Til baka';

  @override
  String get delete => 'Eyða';

  @override
  String get cannotGetAppAddress => 'Ekki tókst að fá vistfang forrits';

  @override
  String cannotOpen(Object url) {
    return 'Ekki hægt að opna: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Opnun mistókst: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Þessi tegund forrits styður ekki þessa aðgerð';

  @override
  String get starting => 'Ræsir';

  @override
  String get restarting => 'Endurræsir';

  @override
  String get restart => 'Endurræsa';

  @override
  String get closed => 'Lokað';

  @override
  String operationFailed(Object e) {
    return 'Aðgerð mistókst: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – ábendingar';
  }

  @override
  String get noDescription => 'Engin lýsing. Breyttu stillingum í valmynd.';

  @override
  String get checkUpdateNotSupported =>
      'Þetta forrit styður ekki uppfærsluleit';

  @override
  String updateFailed(Object e) {
    return 'Uppfærsla mistókst: $e';
  }

  @override
  String get confirmUninstall => 'Staðfesta fjarlægingu';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Viltu örugglega fjarlægja „$name“? Ekki er hægt að endurheimta gögn eftir fjarlægingu.';
  }

  @override
  String get uninstall => 'Fjarlægja';

  @override
  String get cannotUninstall => 'Ekki hægt að fjarlægja';

  @override
  String get uninstalled => 'Fjarlægt';

  @override
  String uninstallFailed(Object e) {
    return 'Fjarlæging mistókst: $e';
  }

  @override
  String get cannotRestart => 'Ekki hægt að endurræsa';

  @override
  String get cannotClose => 'Ekki hægt að loka';

  @override
  String get running => 'Keyrir';

  @override
  String get open => 'Opna';

  @override
  String get launchAndOpen => 'Ræsa og opna';

  @override
  String get tips => 'Ábendingar';

  @override
  String get checkAndUpdate => 'Athuga og uppfæra';

  @override
  String get close => 'Loka';

  @override
  String get configureServerFirst => 'Stilltu og virkjaðu þjón fyrst';

  @override
  String get loginFailed => 'Innskráning mistókst';

  @override
  String get configureServer => 'Stilla þjón';

  @override
  String get username => 'Notandanafn';

  @override
  String get password => 'Lykilorð';

  @override
  String get usernameRequired => 'Sláðu inn notandanafn';

  @override
  String get passwordRequired => 'Sláðu inn lykilorð';

  @override
  String get passwordMinLength =>
      'Lykilorð verður að vera að minnsta kosti 5 stafir';

  @override
  String get rememberCredentials => 'Muna innskráningu';

  @override
  String get newFolder => 'Ný mappa';

  @override
  String get newFile => 'Ný skrá';

  @override
  String get folderName => 'Heiti möppu';

  @override
  String get fileName => 'Heiti skráar';

  @override
  String get create => 'Búa til';

  @override
  String get folderCreated => 'Mappa búin til';

  @override
  String get fileCreated => 'Skrá búin til';

  @override
  String createFailed(Object e) {
    return 'Ekki tókst að búa til: $e';
  }

  @override
  String get rename => 'Endurnefna';

  @override
  String get renameFolder => 'Endurnefna möppu';

  @override
  String get renameFile => 'Endurnefna skrá';

  @override
  String get newName => 'Nýtt heiti';

  @override
  String get renameSuccess => 'Endurnefnt';

  @override
  String renameFailed(Object e) {
    return 'Endurnefning mistókst: $e';
  }

  @override
  String get deleteFolder => 'Eyða möppu';

  @override
  String get deleteFile => 'Eyða skrá';

  @override
  String deleteConfirm(Object name) {
    return 'Eyða „$name“? Ekki er hægt að afturkalla.';
  }

  @override
  String get deleteSuccess => 'Eytt';

  @override
  String deleteFailed(Object e) {
    return 'Eyðing mistókst: $e';
  }

  @override
  String get parentDirectory => 'Yfirmappa';

  @override
  String get listView => 'Listasýn';

  @override
  String get gridView => 'Ristasýn';

  @override
  String get folderEmpty => 'Mappan er tóm';

  @override
  String openFile(Object name) {
    return 'Opna skrá: $name';
  }

  @override
  String get folder => 'Mappa';

  @override
  String get file => 'Skrá';

  @override
  String get download => 'Sækja';

  @override
  String get downloadNotImplemented => 'Niðurhal er ekki innleitt';

  @override
  String get downloadSuccess => 'Niðurhal tókst';

  @override
  String get downloadCancelled => 'Niðurhali hætt';

  @override
  String get downloadPreparing => 'Undirbýr niðurhal...';

  @override
  String get downloadAndPlay => 'Sækja og spila';

  @override
  String get downloadingForPlayback => 'Sækir til spilunar...';

  @override
  String get fullscreen => 'Fullskjár';

  @override
  String get installSuccess => 'Uppsetning tókst';

  @override
  String installSuccessWithApp(Object title) {
    return '$title sett upp';
  }

  @override
  String installFailed(Object e) {
    return 'Uppsetning mistókst: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Ekki tókst að sækja stillingar forrits: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Sérsniðin uppsetning: $title';
  }

  @override
  String get editComposeHint => 'Breyttu docker-compose og ýttu á setja upp';

  @override
  String get install => 'Setja upp';

  @override
  String get appStore => 'Forritaverslun';

  @override
  String get searchApps => 'Leita að forritum';

  @override
  String get category => 'Flokkur';

  @override
  String get allCategories => 'Allir flokkar';

  @override
  String get noAppsFound => 'Engin samsvörun';

  @override
  String get installed => 'Uppsett';

  @override
  String get custom => 'Sérsniðið';

  @override
  String get appDetail => 'Upplýsingar um forrit';

  @override
  String get appNotFound => 'Forrit fannst ekki';

  @override
  String versionLabel(Object version) {
    return 'Útgáfa: $version';
  }

  @override
  String get description => 'Lýsing';

  @override
  String get status => 'Staða';

  @override
  String get notRunning => 'Ekki keyrir';

  @override
  String get installStartNotImplemented =>
      'Uppsetning/ræsing ekki innleidd (krefst /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Fjarlæging ekki innleidd (krefst /v2/app_management/compose)';

  @override
  String get installStart => 'Setja upp / Ræsa';

  @override
  String get legacyApps => 'Eldri forrit (verða endurbyggð)';

  @override
  String get version => 'Útgáfa';

  @override
  String get cpuUsage => 'Örgjörva notkun';

  @override
  String cores(Object count) {
    return 'Kjarnar: $count';
  }

  @override
  String get memory => 'Minni (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% notkun';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Notað $used / Samtals $total';
  }

  @override
  String get storage => 'Geymsla';

  @override
  String totalLabel(Object storage) {
    return 'Samtals $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Notað $used · $percent%';
  }

  @override
  String get disk => 'Diskur';

  @override
  String get networkStatus => 'Net';

  @override
  String get addServer => 'Bæta við þjóni';

  @override
  String get editServer => 'Breyta þjóni';

  @override
  String get nasType => 'Tegund NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Heiti þjóns';

  @override
  String get serverNameRequired => 'Sláðu inn heiti þjóns';

  @override
  String get hostAddress => 'Vistfang gestgjafa';

  @override
  String get hostAddressHint => '192.168.1.100 eða casaos.local';

  @override
  String get hostAddressRequired => 'Sláðu inn vistfang gestgjafa';

  @override
  String get port => 'Gátt';

  @override
  String get portRequired => 'Sláðu inn gátt';

  @override
  String get portInvalid => 'Ógild gátt (1–65535)';

  @override
  String get useHttps => 'Nota HTTPS';

  @override
  String get save => 'Vista';

  @override
  String get noServerConfigured => 'Enginn þjónn stilltur enn';

  @override
  String get activate => 'Virkja';

  @override
  String get edit => 'Breyta';

  @override
  String get confirmDelete => 'Staðfesta eyðingu';

  @override
  String confirmDeleteServer(Object name) {
    return 'Eyða þjóni „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Velkomin í CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Búum fyrst til upphafsreikninginn þinn.';

  @override
  String get createAccount => 'Búa til reikning';

  @override
  String get start => 'Byrja →';

  @override
  String get confirmPassword => 'Staðfesta lykilorð';

  @override
  String get confirmPasswordRequired => 'Sláðu inn lykilorð aftur';

  @override
  String get passwordMismatch => 'Lykilorðin stemma ekki';

  @override
  String get allDone => 'Lokið!';

  @override
  String get accountCreatedHint =>
      'Reikningurinn þinn var búinn til. Farðu á skjáborðið fyrir CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Fara á skjáborð';

  @override
  String get cannotGetInitKey => 'Ekki tókst að fá init-lykil. Athugaðu þjón.';

  @override
  String initFailed(Object e) {
    return 'Upphaf mistókst: $e';
  }

  @override
  String get openAppWith => 'Opna forrit með';

  @override
  String get builtinBrowser => 'Innbyggður vafri';

  @override
  String get systemBrowser => 'Kerfisvafri';

  @override
  String get openInSystemBrowser => 'Opna í kerfisvafranum';

  @override
  String get loading => 'Hleður...';
}
