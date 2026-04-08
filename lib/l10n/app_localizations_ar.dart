// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'عميل CasaOS / ZimaOS';

  @override
  String get settings => 'الإعدادات';

  @override
  String get about => 'حول';

  @override
  String get appearance => 'المظهر';

  @override
  String get openSource => 'مصدر مفتوح';

  @override
  String get tapToOpen => 'اضغط للفتح في المتصفح';

  @override
  String get themeMode => 'وضع السمة';

  @override
  String get followSystem => 'مطابقة النظام';

  @override
  String get lightMode => 'فاتح';

  @override
  String get darkMode => 'داكن';

  @override
  String get themeColor => 'لون السمة';

  @override
  String get themeColorDescription =>
      'اختر لون السمة؛ يُطبَّق على الوضعين الفاتح والداكن.';

  @override
  String get language => 'اللغة';

  @override
  String get languageFollowSystem => 'مطابقة النظام';

  @override
  String get files => 'الملفات';

  @override
  String get serverConfig => 'إعداد الخادم';

  @override
  String get refresh => 'تحديث';

  @override
  String get user => 'المستخدم';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get home => 'الرئيسية';

  @override
  String get welcome => 'مرحبًا';

  @override
  String get logout => 'تسجيل الخروج';

  @override
  String get systemStatus => 'حالة النظام';

  @override
  String get error => 'خطأ';

  @override
  String get apps => 'التطبيقات';

  @override
  String appCount(Object count) {
    return 'إجمالي $count';
  }

  @override
  String get noApps => 'لا توجد تطبيقات';

  @override
  String get cancel => 'إلغاء';

  @override
  String get ok => 'موافق';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get back => 'رجوع';

  @override
  String get delete => 'حذف';

  @override
  String get cannotGetAppAddress => 'تعذّر الحصول على عنوان التطبيق';

  @override
  String cannotOpen(Object url) {
    return 'تعذّر الفتح: $url';
  }

  @override
  String openFailed(Object e) {
    return 'فشل الفتح: $e';
  }

  @override
  String get appTypeNotSupported => 'نوع هذا التطبيق لا يدعم هذه العملية';

  @override
  String get starting => 'جارٍ التشغيل';

  @override
  String get restarting => 'جارٍ إعادة التشغيل';

  @override
  String get restart => 'إعادة التشغيل';

  @override
  String get closed => 'مغلق';

  @override
  String operationFailed(Object e) {
    return 'فشلت العملية: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — نصائح';
  }

  @override
  String get noDescription => 'لا يوجد وصف. عدّل التكوين من الإعدادات.';

  @override
  String get checkUpdateNotSupported =>
      'هذا التطبيق لا يدعم التحقق من التحديثات';

  @override
  String updateFailed(Object e) {
    return 'فشل التحديث: $e';
  }

  @override
  String get confirmUninstall => 'تأكيد إلغاء التثبيت';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'هل تريد إلغاء تثبيت «$name»؟ لا يمكن استعادة البيانات بعد الإزالة.';
  }

  @override
  String get uninstall => 'إلغاء التثبيت';

  @override
  String get cannotUninstall => 'تعذّر إلغاء التثبيت';

  @override
  String get uninstalled => 'تم إلغاء التثبيت';

  @override
  String uninstallFailed(Object e) {
    return 'فشل إلغاء التثبيت: $e';
  }

  @override
  String get cannotRestart => 'تعذّر إعادة التشغيل';

  @override
  String get cannotClose => 'تعذّر الإغلاق';

  @override
  String get running => 'قيد التشغيل';

  @override
  String get open => 'فتح';

  @override
  String get launchAndOpen => 'تشغيل وفتح';

  @override
  String get tips => 'نصائح';

  @override
  String get checkAndUpdate => 'التحقق والتحديث';

  @override
  String get close => 'إغلاق';

  @override
  String get configureServerFirst => 'يُرجى ضبط خادم وتفعيله أولًا';

  @override
  String get loginFailed => 'فشل تسجيل الدخول';

  @override
  String get configureServer => 'ضبط الخادم';

  @override
  String get username => 'اسم المستخدم';

  @override
  String get password => 'كلمة المرور';

  @override
  String get usernameRequired => 'يُرجى إدخال اسم المستخدم';

  @override
  String get passwordRequired => 'يُرجى إدخال كلمة المرور';

  @override
  String get passwordMinLength => 'يجب أن تكون كلمة المرور 5 أحرف على الأقل';

  @override
  String get rememberCredentials => 'تذكّر بيانات الدخول';

  @override
  String get newFolder => 'مجلد جديد';

  @override
  String get newFile => 'ملف جديد';

  @override
  String get folderName => 'اسم المجلد';

  @override
  String get fileName => 'اسم الملف';

  @override
  String get create => 'إنشاء';

  @override
  String get folderCreated => 'تم إنشاء المجلد';

  @override
  String get fileCreated => 'تم إنشاء الملف';

  @override
  String createFailed(Object e) {
    return 'فشل الإنشاء: $e';
  }

  @override
  String get rename => 'إعادة تسمية';

  @override
  String get renameFolder => 'إعادة تسمية المجلد';

  @override
  String get renameFile => 'إعادة تسمية الملف';

  @override
  String get newName => 'اسم جديد';

  @override
  String get renameSuccess => 'تمت إعادة التسمية';

  @override
  String renameFailed(Object e) {
    return 'فشلت إعادة التسمية: $e';
  }

  @override
  String get deleteFolder => 'حذف المجلد';

  @override
  String get deleteFile => 'حذف الملف';

  @override
  String deleteConfirm(Object name) {
    return 'حذف «$name»؟ لا يمكن التراجع عن هذا الإجراء.';
  }

  @override
  String get deleteSuccess => 'تم الحذف';

  @override
  String deleteFailed(Object e) {
    return 'فشل الحذف: $e';
  }

  @override
  String get parentDirectory => 'المجلد الأب';

  @override
  String get listView => 'عرض قائمة';

  @override
  String get gridView => 'عرض شبكة';

  @override
  String get folderEmpty => 'المجلد فارغ';

  @override
  String openFile(Object name) {
    return 'فتح الملف: $name';
  }

  @override
  String get folder => 'مجلد';

  @override
  String get file => 'ملف';

  @override
  String get download => 'تنزيل';

  @override
  String get downloadNotImplemented => 'التنزيل غير مُنفَّذ';

  @override
  String get downloadSuccess => 'اكتمل التنزيل';

  @override
  String get downloadCancelled => 'أُلغي التنزيل';

  @override
  String get downloadPreparing => 'جارٍ تجهيز التنزيل…';

  @override
  String get downloadAndPlay => 'تنزيل وتشغيل';

  @override
  String get downloadingForPlayback => 'جارٍ التنزيل للتشغيل…';

  @override
  String get fullscreen => 'ملء الشاشة';

  @override
  String get installSuccess => 'تم التثبيت بنجاح';

  @override
  String installSuccessWithApp(Object title) {
    return 'تم تثبيت «$title» بنجاح';
  }

  @override
  String installFailed(Object e) {
    return 'فشل التثبيت: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'تعذّر جلب إعداد التطبيق: $e';
  }

  @override
  String customInstall(Object title) {
    return 'تثبيت مخصص: $title';
  }

  @override
  String get editComposeHint => 'حرّر إعداد docker-compose ثم اضغط تثبيت';

  @override
  String get install => 'تثبيت';

  @override
  String get appStore => 'متجر التطبيقات';

  @override
  String get searchApps => 'بحث في التطبيقات';

  @override
  String get category => 'الفئة';

  @override
  String get allCategories => 'كل الفئات';

  @override
  String get noAppsFound => 'لا توجد تطبيقات مطابقة';

  @override
  String get installed => 'مثبّت';

  @override
  String get custom => 'مخصص';

  @override
  String get appDetail => 'تفاصيل التطبيق';

  @override
  String get appNotFound => 'التطبيق غير موجود';

  @override
  String versionLabel(Object version) {
    return 'الإصدار: $version';
  }

  @override
  String get description => 'الوصف';

  @override
  String get status => 'الحالة';

  @override
  String get notRunning => 'غير قيد التشغيل';

  @override
  String get installStartNotImplemented =>
      'التثبيت/التشغيل غير مُنفَّذ (يتطلب /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'إلغاء التثبيت غير مُنفَّذ (يتطلب /v2/app_management/compose)';

  @override
  String get installStart => 'تثبيت / تشغيل';

  @override
  String get legacyApps => 'تطبيقات قديمة (سيتم إعادة بنائها)';

  @override
  String get version => 'الإصدار';

  @override
  String get cpuUsage => 'استخدام المعالج';

  @override
  String cores(Object count) {
    return 'الأنوية: $count';
  }

  @override
  String get memory => 'الذاكرة (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'الاستخدام $percent٪';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'المستخدم $used / الإجمالي $total';
  }

  @override
  String get storage => 'التخزين';

  @override
  String totalLabel(Object storage) {
    return 'الإجمالي $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'المستخدم $used · $percent٪';
  }

  @override
  String get disk => 'القرص';

  @override
  String get networkStatus => 'حالة الشبكة';

  @override
  String get addServer => 'إضافة خادم';

  @override
  String get editServer => 'تحرير الخادم';

  @override
  String get nasType => 'نوع NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'اسم الخادم';

  @override
  String get serverNameRequired => 'يُرجى إدخال اسم الخادم';

  @override
  String get hostAddress => 'عنوان المضيف';

  @override
  String get hostAddressHint => '192.168.1.100 أو casaos.local';

  @override
  String get hostAddressRequired => 'يُرجى إدخال عنوان المضيف';

  @override
  String get port => 'المنفذ';

  @override
  String get portRequired => 'يُرجى إدخال المنفذ';

  @override
  String get portInvalid => 'يُرجى إدخال منفذ صالح (1-65535)';

  @override
  String get useHttps => 'استخدام HTTPS';

  @override
  String get save => 'حفظ';

  @override
  String get noServerConfigured => 'لم يُضبط خادم بعد';

  @override
  String get activate => 'تفعيل';

  @override
  String get edit => 'تحرير';

  @override
  String get confirmDelete => 'تأكيد الحذف';

  @override
  String confirmDeleteServer(Object name) {
    return 'حذف الخادم «$name»؟';
  }

  @override
  String get welcomeToCasaOS => 'مرحبًا بك في CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'لننشئ حسابك الأولي أولًا.';

  @override
  String get createAccount => 'إنشاء حساب';

  @override
  String get start => 'ابدأ ←';

  @override
  String get confirmPassword => 'تأكيد كلمة المرور';

  @override
  String get confirmPasswordRequired => 'يُرجى إدخال كلمة المرور مرة أخرى';

  @override
  String get passwordMismatch => 'كلمتا المرور غير متطابقتين';

  @override
  String get allDone => 'تم!';

  @override
  String get accountCreatedHint =>
      'تم إنشاء حسابك. انتقل إلى سطح المكتب لتجربة CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'دخول سطح المكتب';

  @override
  String get cannotGetInitKey =>
      'تعذّر الحصول على مفتاح التهيئة. تحقق من حالة الخادم.';

  @override
  String initFailed(Object e) {
    return 'فشلت التهيئة: $e';
  }

  @override
  String get openAppWith => 'فتح التطبيق باستخدام';

  @override
  String get builtinBrowser => 'المتصفح المدمج';

  @override
  String get systemBrowser => 'متصفح النظام';

  @override
  String get openInSystemBrowser => 'فتح في متصفح النظام';

  @override
  String get loading => 'جارٍ التحميل…';
}
