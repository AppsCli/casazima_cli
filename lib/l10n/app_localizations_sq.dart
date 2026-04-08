// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Albanian (`sq`).
class AppLocalizationsSq extends AppLocalizations {
  AppLocalizationsSq([String locale = 'sq']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Klienti CasaOS / ZimaOS';

  @override
  String get settings => 'Cilësimet';

  @override
  String get about => 'Rreth';

  @override
  String get appearance => 'Pamja';

  @override
  String get openSource => 'Burim i hapur';

  @override
  String get tapToOpen => 'Prekni për të hapur në shfletues';

  @override
  String get themeMode => 'Moti i temës';

  @override
  String get followSystem => 'Si sistemi';

  @override
  String get lightMode => 'E çelët';

  @override
  String get darkMode => 'E errët';

  @override
  String get themeColor => 'Ngjyra e temës';

  @override
  String get themeColorDescription =>
      'Zgjidhni një ngjyrë teme; vlen për modalitetin e çelët dhe të errët.';

  @override
  String get language => 'Gjuha';

  @override
  String get languageFollowSystem => 'Si sistemi';

  @override
  String get files => 'Skedarët';

  @override
  String get serverConfig => 'Shërbyesi';

  @override
  String get refresh => 'Rifresko';

  @override
  String get user => 'Përdoruesi';

  @override
  String get login => 'Hyr';

  @override
  String get home => 'Kryefaqja';

  @override
  String get welcome => 'Mirë se vini';

  @override
  String get logout => 'Dil';

  @override
  String get systemStatus => 'Statusi i sistemit';

  @override
  String get error => 'Gabim';

  @override
  String get apps => 'Aplikacionet';

  @override
  String appCount(Object count) {
    return '$count gjithsej';
  }

  @override
  String get noApps => 'Nuk ka aplikacione';

  @override
  String get cancel => 'Anulo';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Provo përsëri';

  @override
  String get back => 'Prapa';

  @override
  String get delete => 'Fshi';

  @override
  String get cannotGetAppAddress => 'Nuk mund të merret adresa e aplikacionit';

  @override
  String cannotOpen(Object url) {
    return 'Nuk mund të hapet: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Hapja dështoi: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Ky lloj aplikacioni nuk e mbështet këtë veprim';

  @override
  String get starting => 'Po niset';

  @override
  String get restarting => 'Po riniset';

  @override
  String get restart => 'Rinis';

  @override
  String get closed => 'Mbyllur';

  @override
  String operationFailed(Object e) {
    return 'Veprimi dështoi: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Këshilla';
  }

  @override
  String get noDescription =>
      'Pa përshkrim. Shkoni te cilësimet për të ndryshuar konfigurimin.';

  @override
  String get checkUpdateNotSupported =>
      'Ky aplikacion nuk mbështet kontrollin e përditësimeve';

  @override
  String updateFailed(Object e) {
    return 'Përditësimi dështoi: $e';
  }

  @override
  String get confirmUninstall => 'Konfirmo çinstalimin';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Jeni i sigurt që doni të çinstaloni \"$name\"? Të dhënat nuk rikuperohen pas çinstalimit.';
  }

  @override
  String get uninstall => 'Çinstalo';

  @override
  String get cannotUninstall => 'Nuk mund të çinstalohet';

  @override
  String get uninstalled => 'Çinstaluar';

  @override
  String uninstallFailed(Object e) {
    return 'Çinstalimi dështoi: $e';
  }

  @override
  String get cannotRestart => 'Nuk mund të riniset';

  @override
  String get cannotClose => 'Nuk mund të mbyllet';

  @override
  String get running => 'Duke punuar';

  @override
  String get open => 'Hap';

  @override
  String get launchAndOpen => 'Nis dhe hap';

  @override
  String get tips => 'Këshilla';

  @override
  String get checkAndUpdate => 'Kontrollo dhe përditëso';

  @override
  String get close => 'Mbyll';

  @override
  String get configureServerFirst =>
      'Ju lutemi konfiguroni dhe aktivizoni një shërbyes së pari';

  @override
  String get loginFailed => 'Hyrja dështoi';

  @override
  String get configureServer => 'Konfiguro shërbyesin';

  @override
  String get username => 'Emri i përdoruesit';

  @override
  String get password => 'Fjalëkalimi';

  @override
  String get usernameRequired => 'Shkruani emrin e përdoruesit';

  @override
  String get passwordRequired => 'Shkruani fjalëkalimin';

  @override
  String get passwordMinLength =>
      'Fjalëkalimi duhet të ketë të paktën 5 karaktere';

  @override
  String get rememberCredentials => 'Mbaj mend kredencialet';

  @override
  String get newFolder => 'Dosje e re';

  @override
  String get newFile => 'Skedar i ri';

  @override
  String get folderName => 'Emri i dosjes';

  @override
  String get fileName => 'Emri i skedarit';

  @override
  String get create => 'Krijo';

  @override
  String get folderCreated => 'Dosja u krijua';

  @override
  String get fileCreated => 'Skedari u krijua';

  @override
  String createFailed(Object e) {
    return 'Krijimi dështoi: $e';
  }

  @override
  String get rename => 'Riemëro';

  @override
  String get renameFolder => 'Riemëro dosjen';

  @override
  String get renameFile => 'Riemëro skedarin';

  @override
  String get newName => 'Emër i ri';

  @override
  String get renameSuccess => 'Riemëruar me sukses';

  @override
  String renameFailed(Object e) {
    return 'Riemërimi dështoi: $e';
  }

  @override
  String get deleteFolder => 'Fshi dosjen';

  @override
  String get deleteFile => 'Fshi skedarin';

  @override
  String deleteConfirm(Object name) {
    return 'Të fshihet \"$name\"? Ky veprim nuk mund të zhbëhet.';
  }

  @override
  String get deleteSuccess => 'U fshi me sukses';

  @override
  String deleteFailed(Object e) {
    return 'Fshirja dështoi: $e';
  }

  @override
  String get parentDirectory => 'Dosja prind';

  @override
  String get listView => 'Pamja listë';

  @override
  String get gridView => 'Pamja rrjetë';

  @override
  String get folderEmpty => 'Dosja është bosh';

  @override
  String openFile(Object name) {
    return 'Hap skedarin: $name';
  }

  @override
  String get folder => 'Dosje';

  @override
  String get file => 'Skedar';

  @override
  String get download => 'Shkarko';

  @override
  String get downloadNotImplemented => 'Shkarkimi nuk është zbatuar';

  @override
  String get downloadSuccess => 'Shkarkimi me sukses';

  @override
  String get downloadCancelled => 'Shkarkimi u anulua';

  @override
  String get downloadPreparing => 'Po përgatitet shkarkimi...';

  @override
  String get downloadAndPlay => 'Shkarko dhe luaj';

  @override
  String get downloadingForPlayback => 'Duke shkarkuar për luajtje...';

  @override
  String get fullscreen => 'Ekran i plotë';

  @override
  String get installSuccess => 'Instalimi me sukses';

  @override
  String installSuccessWithApp(Object title) {
    return '$title u instalua me sukses';
  }

  @override
  String installFailed(Object e) {
    return 'Instalimi dështoi: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Marrja e konfigurimit dështoi: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instalim i personalizuar: $title';
  }

  @override
  String get editComposeHint => 'Ndrysho docker-compose dhe prek instaloj';

  @override
  String get install => 'Instalo';

  @override
  String get appStore => 'Dyqani i aplikacioneve';

  @override
  String get searchApps => 'Kërko aplikacione';

  @override
  String get category => 'Kategoria';

  @override
  String get allCategories => 'Të gjitha kategoritë';

  @override
  String get noAppsFound => 'Nuk u gjetën aplikacione përputhëse';

  @override
  String get installed => 'I instaluar';

  @override
  String get custom => 'I personalizuar';

  @override
  String get appDetail => 'Detajet e aplikacionit';

  @override
  String get appNotFound => 'Aplikacioni nuk u gjet';

  @override
  String versionLabel(Object version) {
    return 'Versioni: $version';
  }

  @override
  String get description => 'Përshkrimi';

  @override
  String get status => 'Statusi';

  @override
  String get notRunning => 'Nuk punon';

  @override
  String get installStartNotImplemented =>
      'Instalim/nisje nuk është zbatuar (kërkon /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Çinstalim nuk është zbatuar (kërkon /v2/app_management/compose)';

  @override
  String get installStart => 'Instalo / Nis';

  @override
  String get legacyApps => 'Aplikacione të vjetra (do të rindërtohen)';

  @override
  String get version => 'Versioni';

  @override
  String get cpuUsage => 'Përdorimi i CPU';

  @override
  String cores(Object count) {
    return 'Bërthamat: $count';
  }

  @override
  String get memory => 'Memoria (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% përdorim';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Përdorur $used / Gjithsej $total';
  }

  @override
  String get storage => 'Hapësira';

  @override
  String totalLabel(Object storage) {
    return 'Gjithsej $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Përdorur $used · $percent%';
  }

  @override
  String get disk => 'Disku';

  @override
  String get networkStatus => 'Rrjeti';

  @override
  String get addServer => 'Shto shërbyes';

  @override
  String get editServer => 'Ndrysho shërbyesin';

  @override
  String get nasType => 'Lloji i NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Emri i shërbyesit';

  @override
  String get serverNameRequired => 'Shkruani emrin e shërbyesit';

  @override
  String get hostAddress => 'Adresa e hostit';

  @override
  String get hostAddressHint => '192.168.1.100 ose casaos.local';

  @override
  String get hostAddressRequired => 'Shkruani adresën e hostit';

  @override
  String get port => 'Porta';

  @override
  String get portRequired => 'Shkruani portën';

  @override
  String get portInvalid => 'Portë e pavlefshme (1–65535)';

  @override
  String get useHttps => 'Përdor HTTPS';

  @override
  String get save => 'Ruaj';

  @override
  String get noServerConfigured => 'Ende nuk është konfiguruar asnjë shërbyes';

  @override
  String get activate => 'Aktivizo';

  @override
  String get edit => 'Ndrysho';

  @override
  String get confirmDelete => 'Konfirmo fshirjen';

  @override
  String confirmDeleteServer(Object name) {
    return 'Të fshihet shërbyesi \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Mirë se vini në CasaOS / ZimaOS';

  @override
  String get createAccountHint =>
      'Le të krijojmë së pari llogarinë tuaj fillestare.';

  @override
  String get createAccount => 'Krijo llogari';

  @override
  String get start => 'Fillo →';

  @override
  String get confirmPassword => 'Konfirmo fjalëkalimin';

  @override
  String get confirmPasswordRequired => 'Shkruani përsëri fjalëkalimin';

  @override
  String get passwordMismatch => 'Fjalëkalimet nuk përputhen';

  @override
  String get allDone => 'U krye!';

  @override
  String get accountCreatedHint =>
      'Llogaria juaj u krijua. Hyni në desktop për CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Hyr në desktop';

  @override
  String get cannotGetInitKey =>
      'Nuk mund të merret çelësi i init. Kontrolloni shërbyesin.';

  @override
  String initFailed(Object e) {
    return 'Nisja dështoi: $e';
  }

  @override
  String get openAppWith => 'Hap aplikacionin me';

  @override
  String get builtinBrowser => 'Shfletuesi i integruar';

  @override
  String get systemBrowser => 'Shfletuesi i sistemit';

  @override
  String get openInSystemBrowser => 'Hap në shfletuesin e sistemit';

  @override
  String get loading => 'Duke u ngarkuar...';
}
