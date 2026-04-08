// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'کلاینت CasaOS / ZimaOS';

  @override
  String get settings => 'تنظیمات';

  @override
  String get about => 'درباره';

  @override
  String get appearance => 'ظاهر';

  @override
  String get openSource => 'متن باز';

  @override
  String get tapToOpen => 'برای باز کردن در مرورگر ضربه بزنید';

  @override
  String get themeMode => 'حالت پوسته';

  @override
  String get followSystem => 'مطابق سیستم';

  @override
  String get lightMode => 'روشن';

  @override
  String get darkMode => 'تیره';

  @override
  String get themeColor => 'رنگ پوسته';

  @override
  String get themeColorDescription =>
      'رنگ پوسته را انتخاب کنید؛ برای حالت روشن و تیره اعمال می‌شود.';

  @override
  String get language => 'زبان';

  @override
  String get languageFollowSystem => 'مطابق سیستم';

  @override
  String get files => 'فایل‌ها';

  @override
  String get serverConfig => 'سرور';

  @override
  String get refresh => 'تازه‌سازی';

  @override
  String get user => 'کاربر';

  @override
  String get login => 'ورود';

  @override
  String get home => 'خانه';

  @override
  String get welcome => 'خوش آمدید';

  @override
  String get logout => 'خروج';

  @override
  String get systemStatus => 'وضعیت سیستم';

  @override
  String get error => 'خطا';

  @override
  String get apps => 'برنامه‌ها';

  @override
  String appCount(Object count) {
    return 'مجموع $count';
  }

  @override
  String get noApps => 'برنامه‌ای نیست';

  @override
  String get cancel => 'لغو';

  @override
  String get ok => 'تأیید';

  @override
  String get retry => 'تلاش دوباره';

  @override
  String get back => 'بازگشت';

  @override
  String get delete => 'حذف';

  @override
  String get cannotGetAppAddress => 'نشانی برنامه دریافت نشد';

  @override
  String cannotOpen(Object url) {
    return 'باز نشد: $url';
  }

  @override
  String openFailed(Object e) {
    return 'باز کردن ناموفق: $e';
  }

  @override
  String get appTypeNotSupported =>
      'این نوع برنامه از این عمل پشتیبانی نمی‌کند';

  @override
  String get starting => 'در حال راه‌اندازی';

  @override
  String get restarting => 'در حال راه‌اندازی مجدد';

  @override
  String get restart => 'راه‌اندازی مجدد';

  @override
  String get closed => 'بسته شد';

  @override
  String operationFailed(Object e) {
    return 'عملیات ناموفق: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - نکات';
  }

  @override
  String get noDescription => 'بدون توضیح. پیکربندی را در تنظیمات تغییر دهید.';

  @override
  String get checkUpdateNotSupported =>
      'این برنامه از بررسی به‌روزرسانی پشتیبانی نمی‌کند';

  @override
  String updateFailed(Object e) {
    return 'به‌روزرسانی ناموفق: $e';
  }

  @override
  String get confirmUninstall => 'تأیید حذف نصب';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'آیا مطمئن هستید که \"$name\" را حذف نصب می‌کنید؟ پس از حذف نصب داده‌ها قابل بازیابی نیستند.';
  }

  @override
  String get uninstall => 'حذف نصب';

  @override
  String get cannotUninstall => 'حذف نصب ممکن نیست';

  @override
  String get uninstalled => 'حذف نصب شد';

  @override
  String uninstallFailed(Object e) {
    return 'حذف نصب ناموفق: $e';
  }

  @override
  String get cannotRestart => 'راه‌اندازی مجدد ممکن نیست';

  @override
  String get cannotClose => 'بستن ممکن نیست';

  @override
  String get running => 'در حال اجرا';

  @override
  String get open => 'باز کردن';

  @override
  String get launchAndOpen => 'اجرا و باز کردن';

  @override
  String get tips => 'نکات';

  @override
  String get checkAndUpdate => 'بررسی و به‌روزرسانی';

  @override
  String get close => 'بستن';

  @override
  String get configureServerFirst =>
      'لطفاً ابتدا یک سرور را پیکربندی و فعال کنید';

  @override
  String get loginFailed => 'ورود ناموفق';

  @override
  String get configureServer => 'پیکربندی سرور';

  @override
  String get username => 'نام کاربری';

  @override
  String get password => 'گذرواژه';

  @override
  String get usernameRequired => 'نام کاربری را وارد کنید';

  @override
  String get passwordRequired => 'گذرواژه را وارد کنید';

  @override
  String get passwordMinLength => 'گذرواژه باید حداقل ۵ نویسه باشد';

  @override
  String get rememberCredentials => 'به‌خاطر سپردن اطلاعات ورود';

  @override
  String get newFolder => 'پوشه جدید';

  @override
  String get newFile => 'فایل جدید';

  @override
  String get folderName => 'نام پوشه';

  @override
  String get fileName => 'نام فایل';

  @override
  String get create => 'ایجاد';

  @override
  String get folderCreated => 'پوشه با موفقیت ایجاد شد';

  @override
  String get fileCreated => 'فایل با موفقیت ایجاد شد';

  @override
  String createFailed(Object e) {
    return 'ایجاد ناموفق: $e';
  }

  @override
  String get rename => 'تغییر نام';

  @override
  String get renameFolder => 'تغییر نام پوشه';

  @override
  String get renameFile => 'تغییر نام فایل';

  @override
  String get newName => 'نام جدید';

  @override
  String get renameSuccess => 'نام با موفقیت تغییر کرد';

  @override
  String renameFailed(Object e) {
    return 'تغییر نام ناموفق: $e';
  }

  @override
  String get deleteFolder => 'حذف پوشه';

  @override
  String get deleteFile => 'حذف فایل';

  @override
  String deleteConfirm(Object name) {
    return '\"$name\" حذف شود؟ این کار قابل برگشت نیست.';
  }

  @override
  String get deleteSuccess => 'با موفقیت حذف شد';

  @override
  String deleteFailed(Object e) {
    return 'حذف ناموفق: $e';
  }

  @override
  String get parentDirectory => 'پوشه والد';

  @override
  String get listView => 'نمای فهرست';

  @override
  String get gridView => 'نمای شبکه';

  @override
  String get folderEmpty => 'پوشه خالی است';

  @override
  String openFile(Object name) {
    return 'باز کردن فایل: $name';
  }

  @override
  String get folder => 'پوشه';

  @override
  String get file => 'فایل';

  @override
  String get download => 'بارگیری';

  @override
  String get downloadNotImplemented => 'بارگیری پیاده‌سازی نشده';

  @override
  String get downloadSuccess => 'بارگیری موفق';

  @override
  String get downloadCancelled => 'بارگیری لغو شد';

  @override
  String get downloadPreparing => 'آماده‌سازی بارگیری...';

  @override
  String get downloadAndPlay => 'بارگیری و پخش';

  @override
  String get downloadingForPlayback => 'بارگیری برای پخش...';

  @override
  String get fullscreen => 'تمام‌صفحه';

  @override
  String get installSuccess => 'نصب موفق';

  @override
  String installSuccessWithApp(Object title) {
    return '$title با موفقیت نصب شد';
  }

  @override
  String installFailed(Object e) {
    return 'نصب ناموفق: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'دریافت پیکربندی برنامه ناموفق: $e';
  }

  @override
  String customInstall(Object title) {
    return 'نصب سفارشی: $title';
  }

  @override
  String get editComposeHint =>
      'docker-compose را ویرایش کنید و روی نصب ضربه بزنید';

  @override
  String get install => 'نصب';

  @override
  String get appStore => 'فروشگاه برنامه';

  @override
  String get searchApps => 'جستجوی برنامه‌ها';

  @override
  String get category => 'دسته';

  @override
  String get allCategories => 'همه دسته‌ها';

  @override
  String get noAppsFound => 'برنامه مطابقی یافت نشد';

  @override
  String get installed => 'نصب‌شده';

  @override
  String get custom => 'سفارشی';

  @override
  String get appDetail => 'جزئیات برنامه';

  @override
  String get appNotFound => 'برنامه یافت نشد';

  @override
  String versionLabel(Object version) {
    return 'نسخه: $version';
  }

  @override
  String get description => 'توضیح';

  @override
  String get status => 'وضعیت';

  @override
  String get notRunning => 'اجرا نمی‌شود';

  @override
  String get installStartNotImplemented =>
      'نصب/اجرا پیاده‌سازی نشده (نیاز به /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'حذف نصب پیاده‌سازی نشده (نیاز به /v2/app_management/compose)';

  @override
  String get installStart => 'نصب / اجرا';

  @override
  String get legacyApps => 'برنامه‌های قدیمی (بازسازی خواهند شد)';

  @override
  String get version => 'نسخه';

  @override
  String get cpuUsage => 'استفاده از پردازنده';

  @override
  String cores(Object count) {
    return 'هسته‌ها: $count';
  }

  @override
  String get memory => 'حافظه (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent٪ استفاده';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'استفاده‌شده $used / مجموع $total';
  }

  @override
  String get storage => 'ذخیره‌سازی';

  @override
  String totalLabel(Object storage) {
    return 'مجموع $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'استفاده‌شده $used · $percent٪';
  }

  @override
  String get disk => 'دیسک';

  @override
  String get networkStatus => 'وضعیت شبکه';

  @override
  String get addServer => 'افزودن سرور';

  @override
  String get editServer => 'ویرایش سرور';

  @override
  String get nasType => 'نوع NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'نام سرور';

  @override
  String get serverNameRequired => 'نام سرور را وارد کنید';

  @override
  String get hostAddress => 'نشانی میزبان';

  @override
  String get hostAddressHint => '192.168.1.100 یا casaos.local';

  @override
  String get hostAddressRequired => 'نشانی میزبان را وارد کنید';

  @override
  String get port => 'درگاه';

  @override
  String get portRequired => 'درگاه را وارد کنید';

  @override
  String get portInvalid => 'درگاه نامعتبر (۱–۶۵۵۳۵)';

  @override
  String get useHttps => 'استفاده از HTTPS';

  @override
  String get save => 'ذخیره';

  @override
  String get noServerConfigured => 'هنوز سروری پیکربندی نشده';

  @override
  String get activate => 'فعال‌سازی';

  @override
  String get edit => 'ویرایش';

  @override
  String get confirmDelete => 'تأیید حذف';

  @override
  String confirmDeleteServer(Object name) {
    return 'سرور \"$name\" حذف شود؟';
  }

  @override
  String get welcomeToCasaOS => 'به CasaOS / ZimaOS خوش آمدید';

  @override
  String get createAccountHint => 'ابتدا حساب اولیه شما را ایجاد کنیم.';

  @override
  String get createAccount => 'ایجاد حساب';

  @override
  String get start => 'شروع →';

  @override
  String get confirmPassword => 'تأیید گذرواژه';

  @override
  String get confirmPasswordRequired => 'گذرواژه را دوباره وارد کنید';

  @override
  String get passwordMismatch => 'گذرواژه‌ها یکسان نیستند';

  @override
  String get allDone => 'تمام!';

  @override
  String get accountCreatedHint =>
      'حساب شما ایجاد شد. برای تجربه CasaOS / ZimaOS به میزکار بروید.';

  @override
  String get enterDesktop => 'ورود به میزکار';

  @override
  String get cannotGetInitKey =>
      'کلید init دریافت نشد. وضعیت سرور را بررسی کنید.';

  @override
  String initFailed(Object e) {
    return 'راه‌اندازی اولیه ناموفق: $e';
  }

  @override
  String get openAppWith => 'باز کردن برنامه با';

  @override
  String get builtinBrowser => 'مرورگر داخلی';

  @override
  String get systemBrowser => 'مرورگر سیستم';

  @override
  String get openInSystemBrowser => 'باز کردن در مرورگر سیستم';

  @override
  String get loading => 'در حال بارگذاری...';
}
