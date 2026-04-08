// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Uzbek (`uz`).
class AppLocalizationsUz extends AppLocalizations {
  AppLocalizationsUz([String locale = 'uz']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS mijoz';

  @override
  String get settings => 'Sozlamalar';

  @override
  String get about => 'Haqida';

  @override
  String get appearance => 'Ko‘rinish';

  @override
  String get openSource => 'Ochiq kod';

  @override
  String get tapToOpen => 'Brauzerda ochish uchun bosing';

  @override
  String get themeMode => 'Mavzu rejimi';

  @override
  String get followSystem => 'Tizim bo‘yicha';

  @override
  String get lightMode => 'Yorug‘';

  @override
  String get darkMode => 'Qorong‘u';

  @override
  String get themeColor => 'Mavzu rangi';

  @override
  String get themeColorDescription =>
      'Mavzu rangini tanlang; yorug‘ va qorong‘u rejimlarga qo‘llanadi.';

  @override
  String get language => 'Til';

  @override
  String get languageFollowSystem => 'Tizim bo‘yicha';

  @override
  String get files => 'Fayllar';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Yangilash';

  @override
  String get user => 'Foydalanuvchi';

  @override
  String get login => 'Kirish';

  @override
  String get home => 'Bosh sahifa';

  @override
  String get welcome => 'Xush kelibsiz';

  @override
  String get logout => 'Chiqish';

  @override
  String get systemStatus => 'Tizim holati';

  @override
  String get error => 'Xato';

  @override
  String get apps => 'Ilovalar';

  @override
  String appCount(Object count) {
    return 'Jami $count';
  }

  @override
  String get noApps => 'Ilovalar yo‘q';

  @override
  String get cancel => 'Bekor qilish';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Qayta urinish';

  @override
  String get back => 'Orqaga';

  @override
  String get delete => 'O‘chirish';

  @override
  String get cannotGetAppAddress => 'Ilova manzili olinmadi';

  @override
  String cannotOpen(Object url) {
    return 'Ochib bo‘lmadi: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Ochish muvaffaqiyatsiz: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Bu ilova turi bu amalni qo‘llab-quvvatlamaydi';

  @override
  String get starting => 'Ishga tushmoqda';

  @override
  String get restarting => 'Qayta ishga tushmoqda';

  @override
  String get restart => 'Qayta ishga tushirish';

  @override
  String get closed => 'Yopiq';

  @override
  String operationFailed(Object e) {
    return 'Amal muvaffaqiyatsiz: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – maslahatlar';
  }

  @override
  String get noDescription =>
      'Tavsif yo‘q. Sozlamalarda konfiguratsiyani o‘zgartiring.';

  @override
  String get checkUpdateNotSupported =>
      'Bu ilova yangilanishlarni tekshirishni qo‘llab-quvvatlamaydi';

  @override
  String updateFailed(Object e) {
    return 'Yangilash muvaffaqiyatsiz: $e';
  }

  @override
  String get confirmUninstall => 'O‘chirishni tasdiqlash';

  @override
  String uninstallConfirmMessage(Object name) {
    return '\"$name\" ni o‘chirishni xohlaysizmi? O‘chirilgach ma’lumotlar tiklanmaydi.';
  }

  @override
  String get uninstall => 'O‘chirish';

  @override
  String get cannotUninstall => 'O‘chirib bo‘lmadi';

  @override
  String get uninstalled => 'O‘chirildi';

  @override
  String uninstallFailed(Object e) {
    return 'O‘chirish muvaffaqiyatsiz: $e';
  }

  @override
  String get cannotRestart => 'Qayta ishga tushirib bo‘lmadi';

  @override
  String get cannotClose => 'Yopib bo‘lmadi';

  @override
  String get running => 'Ishlamoqda';

  @override
  String get open => 'Ochish';

  @override
  String get launchAndOpen => 'Ishga tushirish va ochish';

  @override
  String get tips => 'Maslahatlar';

  @override
  String get checkAndUpdate => 'Tekshirish va yangilash';

  @override
  String get close => 'Yopish';

  @override
  String get configureServerFirst => 'Avval serverni sozlang va faollashtiring';

  @override
  String get loginFailed => 'Kirish muvaffaqiyatsiz';

  @override
  String get configureServer => 'Serverni sozlash';

  @override
  String get username => 'Foydalanuvchi nomi';

  @override
  String get password => 'Parol';

  @override
  String get usernameRequired => 'Foydalanuvchi nomini kiriting';

  @override
  String get passwordRequired => 'Parolni kiriting';

  @override
  String get passwordMinLength =>
      'Parol kamida 5 belgidan iborat bo‘lishi kerak';

  @override
  String get rememberCredentials => 'Ma’lumotlarni eslab qolish';

  @override
  String get newFolder => 'Yangi papka';

  @override
  String get newFile => 'Yangi fayl';

  @override
  String get folderName => 'Papka nomi';

  @override
  String get fileName => 'Fayl nomi';

  @override
  String get create => 'Yaratish';

  @override
  String get folderCreated => 'Papka yaratildi';

  @override
  String get fileCreated => 'Fayl yaratildi';

  @override
  String createFailed(Object e) {
    return 'Yaratish muvaffaqiyatsiz: $e';
  }

  @override
  String get rename => 'Nomini o‘zgartirish';

  @override
  String get renameFolder => 'Papka nomini o‘zgartirish';

  @override
  String get renameFile => 'Fayl nomini o‘zgartirish';

  @override
  String get newName => 'Yangi nom';

  @override
  String get renameSuccess => 'Nom muvaffaqiyatli o‘zgartirildi';

  @override
  String renameFailed(Object e) {
    return 'Nomni o‘zgartirish muvaffaqiyatsiz: $e';
  }

  @override
  String get deleteFolder => 'Papkani o‘chirish';

  @override
  String get deleteFile => 'Faylni o‘chirish';

  @override
  String deleteConfirm(Object name) {
    return '\"$name\" ni o‘chirish? Bu amalni bekor qilib bo‘lmaydi.';
  }

  @override
  String get deleteSuccess => 'Muvaffaqiyatli o‘chirildi';

  @override
  String deleteFailed(Object e) {
    return 'O‘chirish muvaffaqiyatsiz: $e';
  }

  @override
  String get parentDirectory => 'Yuqori papka';

  @override
  String get listView => 'Ro‘yxat ko‘rinishi';

  @override
  String get gridView => 'Panjara ko‘rinishi';

  @override
  String get folderEmpty => 'Papka bo‘sh';

  @override
  String openFile(Object name) {
    return 'Faylni ochish: $name';
  }

  @override
  String get folder => 'Papka';

  @override
  String get file => 'Fayl';

  @override
  String get download => 'Yuklab olish';

  @override
  String get downloadNotImplemented => 'Yuklab olish amalga oshirilmagan';

  @override
  String get downloadSuccess => 'Yuklab olindi';

  @override
  String get downloadCancelled => 'Yuklab olish bekor qilindi';

  @override
  String get downloadPreparing => 'Yuklab olish tayyorlanmoqda...';

  @override
  String get downloadAndPlay => 'Yuklab olish va ijro etish';

  @override
  String get downloadingForPlayback => 'Ijro uchun yuklanmoqda...';

  @override
  String get fullscreen => 'To‘liq ekran';

  @override
  String get installSuccess => 'O‘rnatish muvaffaqiyatli';

  @override
  String installSuccessWithApp(Object title) {
    return '$title muvaffaqiyatli o‘rnatildi';
  }

  @override
  String installFailed(Object e) {
    return 'O‘rnatish muvaffaqiyatsiz: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Ilova sozlamalarini olish muvaffaqiyatsiz: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Maxsus o‘rnatish: $title';
  }

  @override
  String get editComposeHint =>
      'docker-compose ni tahrirlang va o‘rnatishni bosing';

  @override
  String get install => 'O‘rnatish';

  @override
  String get appStore => 'Ilovalar do‘koni';

  @override
  String get searchApps => 'Ilovalarni qidirish';

  @override
  String get category => 'Kategoriya';

  @override
  String get allCategories => 'Barcha kategoriyalar';

  @override
  String get noAppsFound => 'Mos ilovalar topilmadi';

  @override
  String get installed => 'O‘rnatilgan';

  @override
  String get custom => 'Maxsus';

  @override
  String get appDetail => 'Ilova tafsilotlari';

  @override
  String get appNotFound => 'Ilova topilmadi';

  @override
  String versionLabel(Object version) {
    return 'Versiya: $version';
  }

  @override
  String get description => 'Tavsif';

  @override
  String get status => 'Holat';

  @override
  String get notRunning => 'Ishlamayapti';

  @override
  String get installStartNotImplemented =>
      'O‘rnatish/ishga tushirish amalga oshirilmagan (/v2/app_management/compose kerak)';

  @override
  String get uninstallNotImplemented =>
      'O‘chirish amalga oshirilmagan (/v2/app_management/compose kerak)';

  @override
  String get installStart => 'O‘rnatish / Ishga tushirish';

  @override
  String get legacyApps => 'Eski ilovalar (qayta quriladi)';

  @override
  String get version => 'Versiya';

  @override
  String get cpuUsage => 'CPU yuklamasi';

  @override
  String cores(Object count) {
    return 'Yadrolar: $count';
  }

  @override
  String get memory => 'Xotira (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% foydalanish';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Ishlatilgan $used / Jami $total';
  }

  @override
  String get storage => 'Xotira maydoni';

  @override
  String totalLabel(Object storage) {
    return 'Jami $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Ishlatilgan $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Tarmoq';

  @override
  String get addServer => 'Server qo‘shish';

  @override
  String get editServer => 'Serverni tahrirlash';

  @override
  String get nasType => 'NAS turi';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Server nomi';

  @override
  String get serverNameRequired => 'Server nomini kiriting';

  @override
  String get hostAddress => 'Xost manzili';

  @override
  String get hostAddressHint => '192.168.1.100 yoki casaos.local';

  @override
  String get hostAddressRequired => 'Xost manzilini kiriting';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Portni kiriting';

  @override
  String get portInvalid => 'Noto‘g‘ri port (1-65535)';

  @override
  String get useHttps => 'HTTPS ishlatish';

  @override
  String get save => 'Saqlash';

  @override
  String get noServerConfigured => 'Hali server sozlanmagan';

  @override
  String get activate => 'Faollashtirish';

  @override
  String get edit => 'Tahrirlash';

  @override
  String get confirmDelete => 'O‘chirishni tasdiqlash';

  @override
  String confirmDeleteServer(Object name) {
    return '\"$name\" serverini o‘chirish?';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS ga xush kelibsiz';

  @override
  String get createAccountHint => 'Avval boshlang‘ich hisobingizni yaratamiz.';

  @override
  String get createAccount => 'Hisob yaratish';

  @override
  String get start => 'Boshlash →';

  @override
  String get confirmPassword => 'Parolni tasdiqlash';

  @override
  String get confirmPasswordRequired => 'Parolni qayta kiriting';

  @override
  String get passwordMismatch => 'Parollar mos kelmaydi';

  @override
  String get allDone => 'Tayyor!';

  @override
  String get accountCreatedHint =>
      'Hisobingiz yaratildi. CasaOS / ZimaOS ish stoliga kiring.';

  @override
  String get enterDesktop => 'Ish stoliga o‘tish';

  @override
  String get cannotGetInitKey => 'Init kalit olinmadi. Serverni tekshiring.';

  @override
  String initFailed(Object e) {
    return 'Ishga tushirish muvaffaqiyatsiz: $e';
  }

  @override
  String get openAppWith => 'Ilovani ochish';

  @override
  String get builtinBrowser => 'Ichki brauzer';

  @override
  String get systemBrowser => 'Tizim brauzeri';

  @override
  String get openInSystemBrowser => 'Tizim brauzerida ochish';

  @override
  String get loading => 'Yuklanmoqda...';
}
