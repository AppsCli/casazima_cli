// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'לקוח CasaOS / ZimaOS';

  @override
  String get settings => 'הגדרות';

  @override
  String get about => 'אודות';

  @override
  String get appearance => 'מראה';

  @override
  String get openSource => 'קוד פתוח';

  @override
  String get tapToOpen => 'הקישו לפתיחה בדפדפן';

  @override
  String get themeMode => 'מצב ערכת נושא';

  @override
  String get followSystem => 'כמו המערכת';

  @override
  String get lightMode => 'בהיר';

  @override
  String get darkMode => 'כהה';

  @override
  String get themeColor => 'צבע ערכת נושא';

  @override
  String get themeColorDescription => 'בחרו צבע; חל על מצב בהיר וכהה.';

  @override
  String get language => 'שפה';

  @override
  String get languageFollowSystem => 'כמו המערכת';

  @override
  String get files => 'קבצים';

  @override
  String get serverConfig => 'שרת';

  @override
  String get refresh => 'רענון';

  @override
  String get user => 'משתמש';

  @override
  String get login => 'התחברות';

  @override
  String get home => 'בית';

  @override
  String get welcome => 'ברוכים הבאים';

  @override
  String get logout => 'התנתקות';

  @override
  String get systemStatus => 'מצב המערכת';

  @override
  String get error => 'שגיאה';

  @override
  String get apps => 'יישומים';

  @override
  String appCount(Object count) {
    return 'סה\"כ $count';
  }

  @override
  String get noApps => 'אין יישומים';

  @override
  String get cancel => 'ביטול';

  @override
  String get ok => 'אישור';

  @override
  String get retry => 'נסו שוב';

  @override
  String get back => 'חזרה';

  @override
  String get delete => 'מחיקה';

  @override
  String get cannotGetAppAddress => 'לא ניתן לקבל כתובת היישום';

  @override
  String cannotOpen(Object url) {
    return 'לא ניתן לפתוח: $url';
  }

  @override
  String openFailed(Object e) {
    return 'הפתיחה נכשלה: $e';
  }

  @override
  String get appTypeNotSupported => 'סוג יישום זה אינו תומך בפעולה';

  @override
  String get starting => 'מתחיל';

  @override
  String get restarting => 'מפעיל מחדש';

  @override
  String get restart => 'הפעלה מחדש';

  @override
  String get closed => 'סגור';

  @override
  String operationFailed(Object e) {
    return 'הפעולה נכשלה: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - טיפים';
  }

  @override
  String get noDescription => 'אין תיאור. שינו הגדרות בהגדרות.';

  @override
  String get checkUpdateNotSupported => 'יישום זה אינו תומך בבדיקת עדכונים';

  @override
  String updateFailed(Object e) {
    return 'העדכון נכשל: $e';
  }

  @override
  String get confirmUninstall => 'אישור הסרה';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'להסיר את \"$name\"? לא ניתן לשחזר נתונים לאחר ההסרה.';
  }

  @override
  String get uninstall => 'הסרה';

  @override
  String get cannotUninstall => 'לא ניתן להסיר';

  @override
  String get uninstalled => 'הוסר';

  @override
  String uninstallFailed(Object e) {
    return 'ההסרה נכשלה: $e';
  }

  @override
  String get cannotRestart => 'לא ניתן להפעיל מחדש';

  @override
  String get cannotClose => 'לא ניתן לסגור';

  @override
  String get running => 'פועל';

  @override
  String get open => 'פתיחה';

  @override
  String get launchAndOpen => 'הפעלה ופתיחה';

  @override
  String get tips => 'טיפים';

  @override
  String get checkAndUpdate => 'בדיקה ועדכון';

  @override
  String get close => 'סגירה';

  @override
  String get configureServerFirst => 'יש להגדיר ולהפעיל שרת תחילה';

  @override
  String get loginFailed => 'ההתחברות נכשלה';

  @override
  String get configureServer => 'הגדרת שרת';

  @override
  String get username => 'שם משתמש';

  @override
  String get password => 'סיסמה';

  @override
  String get usernameRequired => 'הזינו שם משתמש';

  @override
  String get passwordRequired => 'הזינו סיסמה';

  @override
  String get passwordMinLength => 'הסיסמה חייבת להכיל לפחות 5 תווים';

  @override
  String get rememberCredentials => 'זכור פרטי התחברות';

  @override
  String get newFolder => 'תיקייה חדשה';

  @override
  String get newFile => 'קובץ חדש';

  @override
  String get folderName => 'שם התיקייה';

  @override
  String get fileName => 'שם הקובץ';

  @override
  String get create => 'יצירה';

  @override
  String get folderCreated => 'התיקייה נוצרה';

  @override
  String get fileCreated => 'הקובץ נוצר';

  @override
  String createFailed(Object e) {
    return 'היצירה נכשלה: $e';
  }

  @override
  String get rename => 'שינוי שם';

  @override
  String get renameFolder => 'שינוי שם תיקייה';

  @override
  String get renameFile => 'שינוי שם קובץ';

  @override
  String get newName => 'שם חדש';

  @override
  String get renameSuccess => 'השם שונה בהצלחה';

  @override
  String renameFailed(Object e) {
    return 'שינוי השם נכשל: $e';
  }

  @override
  String get deleteFolder => 'מחיקת תיקייה';

  @override
  String get deleteFile => 'מחיקת קובץ';

  @override
  String deleteConfirm(Object name) {
    return 'למחוק את \"$name\"? לא ניתן לבטל.';
  }

  @override
  String get deleteSuccess => 'נמחק בהצלחה';

  @override
  String deleteFailed(Object e) {
    return 'המחיקה נכשלה: $e';
  }

  @override
  String get parentDirectory => 'תיקיית הורה';

  @override
  String get listView => 'תצוגת רשימה';

  @override
  String get gridView => 'תצוגת רשת';

  @override
  String get folderEmpty => 'התיקייה ריקה';

  @override
  String openFile(Object name) {
    return 'פתיחת קובץ: $name';
  }

  @override
  String get folder => 'תיקייה';

  @override
  String get file => 'קובץ';

  @override
  String get download => 'הורדה';

  @override
  String get downloadNotImplemented => 'הורדה לא מיושמת';

  @override
  String get downloadSuccess => 'ההורדה הצליחה';

  @override
  String get downloadCancelled => 'ההורדה בוטלה';

  @override
  String get downloadPreparing => 'מכין הורדה...';

  @override
  String get downloadAndPlay => 'הורדה והפעלה';

  @override
  String get downloadingForPlayback => 'מוריד להפעלה...';

  @override
  String get fullscreen => 'מסך מלא';

  @override
  String get installSuccess => 'ההתקנה הצליחה';

  @override
  String installSuccessWithApp(Object title) {
    return '$title הותקן בהצלחה';
  }

  @override
  String installFailed(Object e) {
    return 'ההתקנה נכשלה: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'קבלת הגדרות היישום נכשלה: $e';
  }

  @override
  String customInstall(Object title) {
    return 'התקנה מותאמת: $title';
  }

  @override
  String get editComposeHint => 'ערכו docker-compose והקישו על התקן';

  @override
  String get install => 'התקנה';

  @override
  String get appStore => 'חנות יישומים';

  @override
  String get searchApps => 'חיפוש יישומים';

  @override
  String get category => 'קטגוריה';

  @override
  String get allCategories => 'כל הקטגוריות';

  @override
  String get noAppsFound => 'לא נמצאו יישומים תואמים';

  @override
  String get installed => 'מותקן';

  @override
  String get custom => 'מותאם';

  @override
  String get appDetail => 'פרטי יישום';

  @override
  String get appNotFound => 'היישום לא נמצא';

  @override
  String versionLabel(Object version) {
    return 'גרסה: $version';
  }

  @override
  String get description => 'תיאור';

  @override
  String get status => 'מצב';

  @override
  String get notRunning => 'לא פועל';

  @override
  String get installStartNotImplemented =>
      'התקנה/הפעלה לא מיושמת (נדרש /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'הסרה לא מיושמת (נדרש /v2/app_management/compose)';

  @override
  String get installStart => 'התקנה / הפעלה';

  @override
  String get legacyApps => 'יישומים ישנים (ייבנו מחדש)';

  @override
  String get version => 'גרסה';

  @override
  String get cpuUsage => 'שימוש במעבד';

  @override
  String cores(Object count) {
    return 'ליבות: $count';
  }

  @override
  String get memory => 'זיכרון (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% שימוש';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'בשימוש $used / סה\"כ $total';
  }

  @override
  String get storage => 'אחסון';

  @override
  String totalLabel(Object storage) {
    return 'סה\"כ $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'בשימוש $used · $percent%';
  }

  @override
  String get disk => 'דיסק';

  @override
  String get networkStatus => 'רשת';

  @override
  String get addServer => 'הוספת שרת';

  @override
  String get editServer => 'עריכת שרת';

  @override
  String get nasType => 'סוג NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'שם השרת';

  @override
  String get serverNameRequired => 'הזינו שם שרת';

  @override
  String get hostAddress => 'כתובת מארח';

  @override
  String get hostAddressHint => '192.168.1.100 או casaos.local';

  @override
  String get hostAddressRequired => 'הזינו כתובת מארח';

  @override
  String get port => 'פורט';

  @override
  String get portRequired => 'הזינו פורט';

  @override
  String get portInvalid => 'פורט לא חוקי (1–65535)';

  @override
  String get useHttps => 'שימוש ב-HTTPS';

  @override
  String get save => 'שמירה';

  @override
  String get noServerConfigured => 'עדיין לא הוגדר שרת';

  @override
  String get activate => 'הפעלה';

  @override
  String get edit => 'עריכה';

  @override
  String get confirmDelete => 'אישור מחיקה';

  @override
  String confirmDeleteServer(Object name) {
    return 'למחוק את השרת \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'ברוכים הבאים ל-CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'ניצור תחילה את החשבון הראשוני שלכם.';

  @override
  String get createAccount => 'יצירת חשבון';

  @override
  String get start => 'התחלה →';

  @override
  String get confirmPassword => 'אישור סיסמה';

  @override
  String get confirmPasswordRequired => 'הזינו סיסמה שוב';

  @override
  String get passwordMismatch => 'הסיסמאות אינן תואמות';

  @override
  String get allDone => 'סיימנו!';

  @override
  String get accountCreatedHint =>
      'החשבון נוצר. היכנסו לשולחן העבודה של CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'כניסה לשולחן עבודה';

  @override
  String get cannotGetInitKey => 'לא ניתן לקבל מפתח אתחול. בדקו את השרת.';

  @override
  String initFailed(Object e) {
    return 'האתחול נכשל: $e';
  }

  @override
  String get openAppWith => 'פתיחת יישום באמצעות';

  @override
  String get builtinBrowser => 'דפדפן מובנה';

  @override
  String get systemBrowser => 'דפדפן המערכת';

  @override
  String get openInSystemBrowser => 'פתיחה בדפדפן המערכת';

  @override
  String get loading => 'טוען...';
}
