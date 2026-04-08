// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS Client';

  @override
  String get settings => 'Mga setting';

  @override
  String get about => 'Tungkol';

  @override
  String get appearance => 'Hitsura';

  @override
  String get openSource => 'Open source';

  @override
  String get tapToOpen => 'I-tap para buksan sa browser';

  @override
  String get themeMode => 'Theme mode';

  @override
  String get followSystem => 'Sundin ang system';

  @override
  String get lightMode => 'Maliwanag';

  @override
  String get darkMode => 'Madilim';

  @override
  String get themeColor => 'Kulay ng theme';

  @override
  String get themeColorDescription =>
      'Pumili ng kulay ng theme; nalalapat sa maliwanag at madilim.';

  @override
  String get language => 'Wika';

  @override
  String get languageFollowSystem => 'Sundin ang system';

  @override
  String get files => 'Mga file';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'I-refresh';

  @override
  String get user => 'User';

  @override
  String get login => 'Mag-login';

  @override
  String get home => 'Home';

  @override
  String get welcome => 'Maligayang pagdating';

  @override
  String get logout => 'Mag-log out';

  @override
  String get systemStatus => 'Status ng system';

  @override
  String get error => 'Error';

  @override
  String get apps => 'Mga app';

  @override
  String appCount(Object count) {
    return '$count sa kabuuan';
  }

  @override
  String get noApps => 'Walang app';

  @override
  String get cancel => 'Kanselahin';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Subukan muli';

  @override
  String get back => 'Bumalik';

  @override
  String get delete => 'Tanggalin';

  @override
  String get cannotGetAppAddress => 'Hindi makuha ang address ng app';

  @override
  String cannotOpen(Object url) {
    return 'Hindi mabuksan: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Hindi nabukas: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Hindi sinusuportahan ng app na ito ang operasyong ito';

  @override
  String get starting => 'Nagsisimula';

  @override
  String get restarting => 'Nagre-restart';

  @override
  String get restart => 'I-restart';

  @override
  String get closed => 'Sarado';

  @override
  String operationFailed(Object e) {
    return 'Bigo ang operasyon: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Mga tip';
  }

  @override
  String get noDescription =>
      'Walang deskripsyon. Pumunta sa settings para baguhin ang config.';

  @override
  String get checkUpdateNotSupported =>
      'Hindi sinusuportahan ng app na ito ang pag-check ng update';

  @override
  String updateFailed(Object e) {
    return 'Bigo ang update: $e';
  }

  @override
  String get confirmUninstall => 'Kumpirmahin ang uninstall';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Sigurado ka bang i-uninstall ang \"$name\"? Hindi na mababawi ang data pagkatapos.';
  }

  @override
  String get uninstall => 'I-uninstall';

  @override
  String get cannotUninstall => 'Hindi ma-uninstall';

  @override
  String get uninstalled => 'Na-uninstall';

  @override
  String uninstallFailed(Object e) {
    return 'Bigo ang uninstall: $e';
  }

  @override
  String get cannotRestart => 'Hindi ma-restart';

  @override
  String get cannotClose => 'Hindi masara';

  @override
  String get running => 'Tumatakbo';

  @override
  String get open => 'Buksan';

  @override
  String get launchAndOpen => 'Ilunsad at buksan';

  @override
  String get tips => 'Mga tip';

  @override
  String get checkAndUpdate => 'Suriin at i-update';

  @override
  String get close => 'Isara';

  @override
  String get configureServerFirst =>
      'Mangyaring i-configure at i-activate muna ang server';

  @override
  String get loginFailed => 'Bigo ang login';

  @override
  String get configureServer => 'I-configure ang server';

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get usernameRequired => 'Ilagay ang username';

  @override
  String get passwordRequired => 'Ilagay ang password';

  @override
  String get passwordMinLength =>
      'Ang password ay dapat hindi bababa sa 5 character';

  @override
  String get rememberCredentials => 'Tandaan ang credentials';

  @override
  String get newFolder => 'Bagong folder';

  @override
  String get newFile => 'Bagong file';

  @override
  String get folderName => 'Pangalan ng folder';

  @override
  String get fileName => 'Pangalan ng file';

  @override
  String get create => 'Gumawa';

  @override
  String get folderCreated => 'Matagumpay na nagawa ang folder';

  @override
  String get fileCreated => 'Matagumpay na nagawa ang file';

  @override
  String createFailed(Object e) {
    return 'Bigo ang paggawa: $e';
  }

  @override
  String get rename => 'Palitan ang pangalan';

  @override
  String get renameFolder => 'Palitan ang pangalan ng folder';

  @override
  String get renameFile => 'Palitan ang pangalan ng file';

  @override
  String get newName => 'Bagong pangalan';

  @override
  String get renameSuccess => 'Matagumpay na napalitan ang pangalan';

  @override
  String renameFailed(Object e) {
    return 'Bigo ang pagpapalit ng pangalan: $e';
  }

  @override
  String get deleteFolder => 'Tanggalin ang folder';

  @override
  String get deleteFile => 'Tanggalin ang file';

  @override
  String deleteConfirm(Object name) {
    return 'Tanggalin ang \"$name\"? Hindi na ito maibabalik.';
  }

  @override
  String get deleteSuccess => 'Matagumpay na natanggal';

  @override
  String deleteFailed(Object e) {
    return 'Bigo ang pagtanggal: $e';
  }

  @override
  String get parentDirectory => 'Parent directory';

  @override
  String get listView => 'List view';

  @override
  String get gridView => 'Grid view';

  @override
  String get folderEmpty => 'Walang laman ang folder';

  @override
  String openFile(Object name) {
    return 'Buksan ang file: $name';
  }

  @override
  String get folder => 'Folder';

  @override
  String get file => 'File';

  @override
  String get download => 'I-download';

  @override
  String get downloadNotImplemented => 'Hindi pa na-i-implement ang download';

  @override
  String get downloadSuccess => 'Matagumpay na na-download';

  @override
  String get downloadCancelled => 'Kinansela ang download';

  @override
  String get downloadPreparing => 'Inihahanda ang download...';

  @override
  String get downloadAndPlay => 'I-download at i-play';

  @override
  String get downloadingForPlayback => 'Dina-download para sa playback...';

  @override
  String get fullscreen => 'Fullscreen';

  @override
  String get installSuccess => 'Matagumpay na na-install';

  @override
  String installSuccessWithApp(Object title) {
    return 'Matagumpay na na-install ang $title';
  }

  @override
  String installFailed(Object e) {
    return 'Bigo ang install: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Hindi nakuha ang app config: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Custom install: $title';
  }

  @override
  String get editComposeHint =>
      'I-edit ang docker-compose at i-tap ang install';

  @override
  String get install => 'I-install';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => 'Maghanap ng app';

  @override
  String get category => 'Kategorya';

  @override
  String get allCategories => 'Lahat ng kategorya';

  @override
  String get noAppsFound => 'Walang tumugmang app';

  @override
  String get installed => 'Naka-install';

  @override
  String get custom => 'Custom';

  @override
  String get appDetail => 'Detalye ng app';

  @override
  String get appNotFound => 'Hindi nahanap ang app';

  @override
  String versionLabel(Object version) {
    return 'Bersyon: $version';
  }

  @override
  String get description => 'Deskripsyon';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Hindi tumatakbo';

  @override
  String get installStartNotImplemented =>
      'Hindi pa na-i-implement ang install/start (kailangan /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Hindi pa na-i-implement ang uninstall (kailangan /v2/app_management/compose)';

  @override
  String get installStart => 'I-install / Simulan';

  @override
  String get legacyApps => 'Lumang app (ibubuild ulit)';

  @override
  String get version => 'Bersyon';

  @override
  String get cpuUsage => 'Paggamit ng CPU';

  @override
  String cores(Object count) {
    return 'Mga core: $count';
  }

  @override
  String get memory => 'Memory (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% ang gamit';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Ginamit $used / Kabuuan $total';
  }

  @override
  String get storage => 'Storage';

  @override
  String totalLabel(Object storage) {
    return 'Kabuuan $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Ginamit $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Status ng network';

  @override
  String get addServer => 'Magdagdag ng server';

  @override
  String get editServer => 'I-edit ang server';

  @override
  String get nasType => 'Uri ng NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Pangalan ng server';

  @override
  String get serverNameRequired => 'Ilagay ang pangalan ng server';

  @override
  String get hostAddress => 'Address ng host';

  @override
  String get hostAddressHint => '192.168.1.100 o casaos.local';

  @override
  String get hostAddressRequired => 'Ilagay ang address ng host';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Ilagay ang port';

  @override
  String get portInvalid => 'Di-wastong port (1-65535)';

  @override
  String get useHttps => 'Gamitin ang HTTPS';

  @override
  String get save => 'I-save';

  @override
  String get noServerConfigured => 'Wala pang na-configure na server';

  @override
  String get activate => 'I-activate';

  @override
  String get edit => 'I-edit';

  @override
  String get confirmDelete => 'Kumpirmahin ang pagtanggal';

  @override
  String confirmDeleteServer(Object name) {
    return 'Tanggalin ang server na \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Maligayang pagdating sa CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Gumawa muna tayo ng unang account mo.';

  @override
  String get createAccount => 'Gumawa ng account';

  @override
  String get start => 'Simula →';

  @override
  String get confirmPassword => 'Kumpirmahin ang password';

  @override
  String get confirmPasswordRequired => 'Ilagay muli ang password';

  @override
  String get passwordMismatch => 'Hindi tugma ang mga password';

  @override
  String get allDone => 'Tapos na!';

  @override
  String get accountCreatedHint =>
      'Nagawa na ang account mo. Pumasok sa desktop para sa CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Pumasok sa desktop';

  @override
  String get cannotGetInitKey =>
      'Hindi makuha ang init key. Suriin ang server.';

  @override
  String initFailed(Object e) {
    return 'Bigo ang init: $e';
  }

  @override
  String get openAppWith => 'Buksan ang app gamit ang';

  @override
  String get builtinBrowser => 'Built-in browser';

  @override
  String get systemBrowser => 'Browser ng system';

  @override
  String get openInSystemBrowser => 'Buksan sa browser ng system';

  @override
  String get loading => 'Naglo-load...';
}
