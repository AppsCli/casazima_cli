// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swahili (`sw`).
class AppLocalizationsSw extends AppLocalizations {
  AppLocalizationsSw([String locale = 'sw']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Mteja wa CasaOS / ZimaOS';

  @override
  String get settings => 'Mipangilio';

  @override
  String get about => 'Kuhusu';

  @override
  String get appearance => 'Muonekano';

  @override
  String get openSource => 'Chanzo wazi';

  @override
  String get tapToOpen => 'Gusa kufungua katika kivinjari';

  @override
  String get themeMode => 'Hali ya mandhari';

  @override
  String get followSystem => 'Fuata mfumo';

  @override
  String get lightMode => 'Mwanga';

  @override
  String get darkMode => 'Giza';

  @override
  String get themeColor => 'Rangi ya mandhari';

  @override
  String get themeColorDescription =>
      'Chagua rangi ya mandhari; inatumika kwa hali ya mwanga na giza.';

  @override
  String get language => 'Lugha';

  @override
  String get languageFollowSystem => 'Fuata mfumo';

  @override
  String get files => 'Faili';

  @override
  String get serverConfig => 'Seva';

  @override
  String get refresh => 'Onyesha upya';

  @override
  String get user => 'Mtumiaji';

  @override
  String get login => 'Ingia';

  @override
  String get home => 'Nyumbani';

  @override
  String get welcome => 'Karibu';

  @override
  String get logout => 'Toka';

  @override
  String get systemStatus => 'Hali ya mfumo';

  @override
  String get error => 'Hitilafu';

  @override
  String get apps => 'Programu';

  @override
  String appCount(Object count) {
    return 'Jumla $count';
  }

  @override
  String get noApps => 'Hakuna programu';

  @override
  String get cancel => 'Ghairi';

  @override
  String get ok => 'Sawa';

  @override
  String get retry => 'Jaribu tena';

  @override
  String get back => 'Rudi';

  @override
  String get delete => 'Futa';

  @override
  String get cannotGetAppAddress => 'Haiwezi kupata anwani ya programu';

  @override
  String cannotOpen(Object url) {
    return 'Haiwezi kufungua: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Kufungua kumeshindwa: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Aina hii ya programu haiungi mkono hatua hii';

  @override
  String get starting => 'Inaanza';

  @override
  String get restarting => 'Inaanza upya';

  @override
  String get restart => 'Anza upya';

  @override
  String get closed => 'Imefungwa';

  @override
  String operationFailed(Object e) {
    return 'Hatua imeshindwa: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Vidokezo';
  }

  @override
  String get noDescription =>
      'Hakuna maelezo. Nenda kwenye mipangilio kubadilisha usanidi.';

  @override
  String get checkUpdateNotSupported =>
      'Programu hii haiungi mkono kuangalia masasisho';

  @override
  String updateFailed(Object e) {
    return 'Kusasisha kumeshindwa: $e';
  }

  @override
  String get confirmUninstall => 'Thibitisha kutolea';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Una uhakika unataka kutolea \"$name\"? Data haiwezi kurejeshwa baada ya kutolea.';
  }

  @override
  String get uninstall => 'Tolea';

  @override
  String get cannotUninstall => 'Haiwezi kutolea';

  @override
  String get uninstalled => 'Imetolewa';

  @override
  String uninstallFailed(Object e) {
    return 'Kutolea kumeshindwa: $e';
  }

  @override
  String get cannotRestart => 'Haiwezi kuanza upya';

  @override
  String get cannotClose => 'Haiwezi kufunga';

  @override
  String get running => 'Inaendesha';

  @override
  String get open => 'Fungua';

  @override
  String get launchAndOpen => 'Zindua na ufungue';

  @override
  String get tips => 'Vidokezo';

  @override
  String get checkAndUpdate => 'Angalia na sasisha';

  @override
  String get close => 'Funga';

  @override
  String get configureServerFirst => 'Tafadhali sanidi na uwashe seva kwanza';

  @override
  String get loginFailed => 'Kuingia kumeshindwa';

  @override
  String get configureServer => 'Sanidi seva';

  @override
  String get username => 'Jina la mtumiaji';

  @override
  String get password => 'Nenosiri';

  @override
  String get usernameRequired => 'Ingiza jina la mtumiaji';

  @override
  String get passwordRequired => 'Ingiza nenosiri';

  @override
  String get passwordMinLength => 'Nenosiri lazima liwe na angalau herufi 5';

  @override
  String get rememberCredentials => 'Kumbuka maingizo';

  @override
  String get newFolder => 'Folda mpya';

  @override
  String get newFile => 'Faili mpya';

  @override
  String get folderName => 'Jina la folda';

  @override
  String get fileName => 'Jina la faili';

  @override
  String get create => 'Unda';

  @override
  String get folderCreated => 'Folda imeundwa';

  @override
  String get fileCreated => 'Faili imeundwa';

  @override
  String createFailed(Object e) {
    return 'Kuunda kumeshindwa: $e';
  }

  @override
  String get rename => 'Badilisha jina';

  @override
  String get renameFolder => 'Badilisha jina la folda';

  @override
  String get renameFile => 'Badilisha jina la faili';

  @override
  String get newName => 'Jina jipya';

  @override
  String get renameSuccess => 'Jina limebadilishwa';

  @override
  String renameFailed(Object e) {
    return 'Kubadilisha jina kumeshindwa: $e';
  }

  @override
  String get deleteFolder => 'Futa folda';

  @override
  String get deleteFile => 'Futa faili';

  @override
  String deleteConfirm(Object name) {
    return 'Futa \"$name\"? Hatua hii haiwezi kutenduliwa.';
  }

  @override
  String get deleteSuccess => 'Imefutwa';

  @override
  String deleteFailed(Object e) {
    return 'Kufuta kumeshindwa: $e';
  }

  @override
  String get parentDirectory => 'Folda kuu';

  @override
  String get listView => 'Mwonekano wa orodha';

  @override
  String get gridView => 'Mwonekano wa gridi';

  @override
  String get folderEmpty => 'Folda ni tupu';

  @override
  String openFile(Object name) {
    return 'Fungua faili: $name';
  }

  @override
  String get folder => 'Folda';

  @override
  String get file => 'Faili';

  @override
  String get download => 'Pakua';

  @override
  String get downloadNotImplemented => 'Upakuaji haujatekelezwa';

  @override
  String get downloadSuccess => 'Upakuaji umefanikiwa';

  @override
  String get downloadCancelled => 'Upakuaji umeghairiwa';

  @override
  String get downloadPreparing => 'Inaandaa upakuaji...';

  @override
  String get downloadAndPlay => 'Pakua na cheza';

  @override
  String get downloadingForPlayback => 'Inapakua kwa uchezaji...';

  @override
  String get fullscreen => 'Skrini nzima';

  @override
  String get installSuccess => 'Kusakinisha kumefanikiwa';

  @override
  String installSuccessWithApp(Object title) {
    return '$title imesakinishwa';
  }

  @override
  String installFailed(Object e) {
    return 'Kusakinisha kumeshindwa: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Kupata usanidi wa programu kumeshindwa: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Usakinishaji maalum: $title';
  }

  @override
  String get editComposeHint => 'Hariri docker-compose na uguse sakinisha';

  @override
  String get install => 'Sakinisha';

  @override
  String get appStore => 'Duka la programu';

  @override
  String get searchApps => 'Tafuta programu';

  @override
  String get category => 'Jamii';

  @override
  String get allCategories => 'Jamii zote';

  @override
  String get noAppsFound => 'Hakuna programu zinazolingana';

  @override
  String get installed => 'Imesakinishwa';

  @override
  String get custom => 'Maalum';

  @override
  String get appDetail => 'Maelezo ya programu';

  @override
  String get appNotFound => 'Programu haipatikani';

  @override
  String versionLabel(Object version) {
    return 'Toleo: $version';
  }

  @override
  String get description => 'Maelezo';

  @override
  String get status => 'Hali';

  @override
  String get notRunning => 'Haiendeshwi';

  @override
  String get installStartNotImplemented =>
      'Kusakinisha/kuanza hakujatekelezwa (inahitaji /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Kutolea hakujatekelezwa (inahitaji /v2/app_management/compose)';

  @override
  String get installStart => 'Sakinisha / Anza';

  @override
  String get legacyApps => 'Programu za zamani (zitajengwa upya)';

  @override
  String get version => 'Toleo';

  @override
  String get cpuUsage => 'Matumizi ya CPU';

  @override
  String cores(Object count) {
    return 'Magenge: $count';
  }

  @override
  String get memory => 'Kumbukumbu (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'Matumizi $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Imetumika $used / Jumla $total';
  }

  @override
  String get storage => 'Hifadhi';

  @override
  String totalLabel(Object storage) {
    return 'Jumla $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Imetumika $used · $percent%';
  }

  @override
  String get disk => 'Diski';

  @override
  String get networkStatus => 'Mtandao';

  @override
  String get addServer => 'Ongeza seva';

  @override
  String get editServer => 'Hariri seva';

  @override
  String get nasType => 'Aina ya NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Jina la seva';

  @override
  String get serverNameRequired => 'Ingiza jina la seva';

  @override
  String get hostAddress => 'Anwani ya mwenyeji';

  @override
  String get hostAddressHint => '192.168.1.100 au casaos.local';

  @override
  String get hostAddressRequired => 'Ingiza anwani ya mwenyeji';

  @override
  String get port => 'Bandari';

  @override
  String get portRequired => 'Ingiza bandari';

  @override
  String get portInvalid => 'Bandari si halali (1-65535)';

  @override
  String get useHttps => 'Tumia HTTPS';

  @override
  String get save => 'Hifadhi';

  @override
  String get noServerConfigured => 'Hakuna seva iliyosanidiwa bado';

  @override
  String get activate => 'Washa';

  @override
  String get edit => 'Hariri';

  @override
  String get confirmDelete => 'Thibitisha kufuta';

  @override
  String confirmDeleteServer(Object name) {
    return 'Futa seva \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Karibu CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Tuanze kwa kuunda akaunti yako ya kwanza.';

  @override
  String get createAccount => 'Unda akaunti';

  @override
  String get start => 'Anza →';

  @override
  String get confirmPassword => 'Thibitisha nenosiri';

  @override
  String get confirmPasswordRequired => 'Ingiza nenosiri tena';

  @override
  String get passwordMismatch => 'Manenosiri hayalingani';

  @override
  String get allDone => 'Imekamilika!';

  @override
  String get accountCreatedHint =>
      'Akaunti yako imeundwa. Ingia kwenye skrini kuu ya CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Ingia skrini kuu';

  @override
  String get cannotGetInitKey =>
      'Haiwezi kupata ufunguo wa kuanzisha. Angalia seva.';

  @override
  String initFailed(Object e) {
    return 'Kuanzisha kumeshindwa: $e';
  }

  @override
  String get openAppWith => 'Fungua programu kwa';

  @override
  String get builtinBrowser => 'Kivinjari kilichojengwa ndani';

  @override
  String get systemBrowser => 'Kivinjari cha mfumo';

  @override
  String get openInSystemBrowser => 'Fungua katika kivinjari cha mfumo';

  @override
  String get loading => 'Inapakia...';
}
