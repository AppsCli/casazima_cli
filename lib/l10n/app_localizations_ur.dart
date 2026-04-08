// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS کلائنٹ';

  @override
  String get settings => 'ترتیبات';

  @override
  String get about => 'متعلق';

  @override
  String get appearance => 'ظاہری شکل';

  @override
  String get openSource => 'اوپن سورس';

  @override
  String get tapToOpen => 'براؤزر میں کھولنے کے لیے تھپتھپائیں';

  @override
  String get themeMode => 'تھیم موڈ';

  @override
  String get followSystem => 'سسٹم کے مطابق';

  @override
  String get lightMode => 'روشن';

  @override
  String get darkMode => 'تاریک';

  @override
  String get themeColor => 'تھیم کا رنگ';

  @override
  String get themeColorDescription =>
      'تھیم کا رنگ منتخب کریں؛ روشن اور تاریک دونوں موڈ پر لاگو ہوتا ہے۔';

  @override
  String get language => 'زبان';

  @override
  String get languageFollowSystem => 'سسٹم کے مطابق';

  @override
  String get files => 'فائلیں';

  @override
  String get serverConfig => 'سرور';

  @override
  String get refresh => 'تازہ کریں';

  @override
  String get user => 'صارف';

  @override
  String get login => 'لاگ ان';

  @override
  String get home => 'ہوم';

  @override
  String get welcome => 'خوش آمدید';

  @override
  String get logout => 'لاگ آؤٹ';

  @override
  String get systemStatus => 'سسٹم کی حیثیت';

  @override
  String get error => 'خرابی';

  @override
  String get apps => 'ایپس';

  @override
  String appCount(Object count) {
    return 'کل $count';
  }

  @override
  String get noApps => 'کوئی ایپ نہیں';

  @override
  String get cancel => 'منسوخ';

  @override
  String get ok => 'ٹھیک';

  @override
  String get retry => 'دوبارہ کوشش';

  @override
  String get back => 'واپس';

  @override
  String get delete => 'حذف';

  @override
  String get cannotGetAppAddress => 'ایپ کا پتہ حاصل نہیں ہو سکا';

  @override
  String cannotOpen(Object url) {
    return 'نہیں کھول سکتے: $url';
  }

  @override
  String openFailed(Object e) {
    return 'کھولنا ناکام: $e';
  }

  @override
  String get appTypeNotSupported => 'یہ ایپ کی قسم یہ عمل سپورٹ نہیں کرتی';

  @override
  String get starting => 'شروع ہو رہا ہے';

  @override
  String get restarting => 'دوبارہ شروع ہو رہا ہے';

  @override
  String get restart => 'دوبارہ شروع';

  @override
  String get closed => 'بند';

  @override
  String operationFailed(Object e) {
    return 'عمل ناکام: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - تجاویز';
  }

  @override
  String get noDescription => 'کوئی تفصیل نہیں۔ ترتیبات میں ترتیب بدلیں۔';

  @override
  String get checkUpdateNotSupported => 'یہ ایپ اپ ڈیٹ چیک سپورٹ نہیں کرتی';

  @override
  String updateFailed(Object e) {
    return 'اپ ڈیٹ ناکام: $e';
  }

  @override
  String get confirmUninstall => 'ان انسٹال کی تصدیق';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'کیا آپ واقعی \"$name\" ان انسٹال کرنا چاہتے ہیں؟ ان انسٹال کے بعد ڈیٹا واپس نہیں آ سکتا۔';
  }

  @override
  String get uninstall => 'ان انسٹال';

  @override
  String get cannotUninstall => 'ان انسٹال نہیں ہو سکا';

  @override
  String get uninstalled => 'ان انسٹال ہو گیا';

  @override
  String uninstallFailed(Object e) {
    return 'ان انسٹال ناکام: $e';
  }

  @override
  String get cannotRestart => 'دوبارہ شروع نہیں ہو سکا';

  @override
  String get cannotClose => 'بند نہیں ہو سکا';

  @override
  String get running => 'چل رہا ہے';

  @override
  String get open => 'کھولیں';

  @override
  String get launchAndOpen => 'لانچ کریں اور کھولیں';

  @override
  String get tips => 'تجاویز';

  @override
  String get checkAndUpdate => 'چیک اور اپ ڈیٹ';

  @override
  String get close => 'بند کریں';

  @override
  String get configureServerFirst => 'پہلے سرور ترتیب دیں اور فعال کریں';

  @override
  String get loginFailed => 'لاگ ان ناکام';

  @override
  String get configureServer => 'سرور ترتیب دیں';

  @override
  String get username => 'صارف نام';

  @override
  String get password => 'پاس ورڈ';

  @override
  String get usernameRequired => 'صارف نام درج کریں';

  @override
  String get passwordRequired => 'پاس ورڈ درج کریں';

  @override
  String get passwordMinLength => 'پاس ورڈ کم از کم 5 حروف کا ہونا چاہیے';

  @override
  String get rememberCredentials => 'اسناد یاد رکھیں';

  @override
  String get newFolder => 'نیا فولڈر';

  @override
  String get newFile => 'نئی فائل';

  @override
  String get folderName => 'فولڈر کا نام';

  @override
  String get fileName => 'فائل کا نام';

  @override
  String get create => 'بنائیں';

  @override
  String get folderCreated => 'فولڈر بن گیا';

  @override
  String get fileCreated => 'فائل بن گئی';

  @override
  String createFailed(Object e) {
    return 'بنانا ناکام: $e';
  }

  @override
  String get rename => 'نام بدلیں';

  @override
  String get renameFolder => 'فولڈر کا نام بدلیں';

  @override
  String get renameFile => 'فائل کا نام بدلیں';

  @override
  String get newName => 'نیا نام';

  @override
  String get renameSuccess => 'نام کامیابی سے بدلا';

  @override
  String renameFailed(Object e) {
    return 'نام بدلنا ناکام: $e';
  }

  @override
  String get deleteFolder => 'فولڈر حذف';

  @override
  String get deleteFile => 'فائل حذف';

  @override
  String deleteConfirm(Object name) {
    return '\"$name\" حذف کریں؟ یہ عمل واپس نہیں ہو سکتا۔';
  }

  @override
  String get deleteSuccess => 'کامیابی سے حذف';

  @override
  String deleteFailed(Object e) {
    return 'حذف ناکام: $e';
  }

  @override
  String get parentDirectory => 'والد فولڈر';

  @override
  String get listView => 'فہرست منظر';

  @override
  String get gridView => 'گرڈ منظر';

  @override
  String get folderEmpty => 'فولڈر خالی ہے';

  @override
  String openFile(Object name) {
    return 'فائل کھولیں: $name';
  }

  @override
  String get folder => 'فولڈر';

  @override
  String get file => 'فائل';

  @override
  String get download => 'ڈاؤن لوڈ';

  @override
  String get downloadNotImplemented => 'ڈاؤن لوڈ نافذ نہیں';

  @override
  String get downloadSuccess => 'ڈاؤن لوڈ کامیاب';

  @override
  String get downloadCancelled => 'ڈاؤن لوڈ منسوخ';

  @override
  String get downloadPreparing => 'ڈاؤن لوڈ تیار ہو رہا ہے...';

  @override
  String get downloadAndPlay => 'ڈاؤن لوڈ اور چلائیں';

  @override
  String get downloadingForPlayback => 'چلانے کے لیے ڈاؤن لوڈ...';

  @override
  String get fullscreen => 'مکمل اسکرین';

  @override
  String get installSuccess => 'انسٹال کامیاب';

  @override
  String installSuccessWithApp(Object title) {
    return '$title کامیابی سے انسٹال';
  }

  @override
  String installFailed(Object e) {
    return 'انسٹال ناکام: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'ایپ کنفیگ حاصل ناکام: $e';
  }

  @override
  String customInstall(Object title) {
    return 'کسٹم انسٹال: $title';
  }

  @override
  String get editComposeHint =>
      'docker-compose میں ترمیم کریں اور انسٹال تھپتھپائیں';

  @override
  String get install => 'انسٹال';

  @override
  String get appStore => 'ایپ اسٹور';

  @override
  String get searchApps => 'ایپس تلاش';

  @override
  String get category => 'زمرہ';

  @override
  String get allCategories => 'تمام زمرے';

  @override
  String get noAppsFound => 'مماثل ایپ نہیں ملی';

  @override
  String get installed => 'انسٹال ہے';

  @override
  String get custom => 'کسٹم';

  @override
  String get appDetail => 'ایپ تفصیل';

  @override
  String get appNotFound => 'ایپ نہیں ملی';

  @override
  String versionLabel(Object version) {
    return 'ورژن: $version';
  }

  @override
  String get description => 'تفصیل';

  @override
  String get status => 'حیثیت';

  @override
  String get notRunning => 'نہیں چل رہا';

  @override
  String get installStartNotImplemented =>
      'انسٹال/شروع نافذ نہیں (/v2/app_management/compose درکار)';

  @override
  String get uninstallNotImplemented =>
      'ان انسٹال نافذ نہیں (/v2/app_management/compose درکار)';

  @override
  String get installStart => 'انسٹال / شروع';

  @override
  String get legacyApps => 'پرانی ایپس (دوبارہ بنیں گی)';

  @override
  String get version => 'ورژن';

  @override
  String get cpuUsage => 'CPU استعمال';

  @override
  String cores(Object count) {
    return 'کور: $count';
  }

  @override
  String get memory => 'میموری (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% استعمال';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'استعمال $used / کل $total';
  }

  @override
  String get storage => 'اسٹوریج';

  @override
  String totalLabel(Object storage) {
    return 'کل $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'استعمال $used · $percent%';
  }

  @override
  String get disk => 'ڈسک';

  @override
  String get networkStatus => 'نیٹ ورک';

  @override
  String get addServer => 'سرور شامل';

  @override
  String get editServer => 'سرور میں ترمیم';

  @override
  String get nasType => 'NAS قسم';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'سرور نام';

  @override
  String get serverNameRequired => 'سرور نام درج کریں';

  @override
  String get hostAddress => 'میزبان پتہ';

  @override
  String get hostAddressHint => '192.168.1.100 یا casaos.local';

  @override
  String get hostAddressRequired => 'میزبان پتہ درج کریں';

  @override
  String get port => 'پورٹ';

  @override
  String get portRequired => 'پورٹ درج کریں';

  @override
  String get portInvalid => 'درست پورٹ درج کریں (1-65535)';

  @override
  String get useHttps => 'HTTPS استعمال';

  @override
  String get save => 'محفوظ';

  @override
  String get noServerConfigured => 'ابھی کوئی سرور ترتیب نہیں';

  @override
  String get activate => 'فعال';

  @override
  String get edit => 'ترمیم';

  @override
  String get confirmDelete => 'حذف کی تصدیق';

  @override
  String confirmDeleteServer(Object name) {
    return '\"$name\" سرور حذف کریں؟';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS میں خوش آمدید';

  @override
  String get createAccountHint => 'پہلے آپ کا ابتدائی اکاؤنٹ بناتے ہیں۔';

  @override
  String get createAccount => 'اکاؤنٹ بنائیں';

  @override
  String get start => 'شروع →';

  @override
  String get confirmPassword => 'پاس ورڈ کی تصدیق';

  @override
  String get confirmPasswordRequired => 'پاس ورڈ دوبارہ درج کریں';

  @override
  String get passwordMismatch => 'پاس ورڈ میل نہیں کھاتے';

  @override
  String get allDone => 'مکمل!';

  @override
  String get accountCreatedHint =>
      'آپ کا اکاؤنٹ بن گیا۔ CasaOS / ZimaOS ڈیسک ٹاپ میں جائیں۔';

  @override
  String get enterDesktop => 'ڈیسک ٹاپ میں جائیں';

  @override
  String get cannotGetInitKey => 'init کلید نہیں ملی۔ سرور چیک کریں۔';

  @override
  String initFailed(Object e) {
    return 'شروعات ناکام: $e';
  }

  @override
  String get openAppWith => 'ایپ کھولیں';

  @override
  String get builtinBrowser => 'بلٹ ان براؤزر';

  @override
  String get systemBrowser => 'سسٹم براؤزر';

  @override
  String get openInSystemBrowser => 'سسٹم براؤزر میں کھولیں';

  @override
  String get loading => 'لوڈ ہو رہا ہے...';
}
