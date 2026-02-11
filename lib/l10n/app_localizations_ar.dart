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
  String get appearance => 'المظهر';

  @override
  String get themeMode => 'وضع السمة';

  @override
  String get followSystem => 'اتباع النظام';

  @override
  String get lightMode => 'الوضع الفاتح';

  @override
  String get darkMode => 'الوضع الداكن';

  @override
  String get themeColor => 'لون السمة';

  @override
  String get themeColorDescription =>
      'اختر لون السمة؛ ينطبق على الوضع الفاتح والداكن.';

  @override
  String get language => 'اللغة';

  @override
  String get languageFollowSystem => 'اتباع النظام';

  @override
  String get files => 'إدارة الملفات';

  @override
  String get serverConfig => 'إعدادات الخادم';

  @override
  String get refresh => 'تحديث';

  @override
  String get user => 'المستخدم';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get home => 'الرئيسية';

  @override
  String get welcome => 'مرحباً';

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
    return '$count في المجموع';
  }

  @override
  String get noApps => 'لا توجد تطبيقات';
}
