// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS ক্লায়েন্ট';

  @override
  String get settings => 'সেটিংস';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get appearance => 'চেহারা';

  @override
  String get openSource => 'ওপেন সোর্স';

  @override
  String get tapToOpen => 'ব্রাউজারে খুলতে ট্যাপ করুন';

  @override
  String get themeMode => 'থিম মোড';

  @override
  String get followSystem => 'সিস্টেম অনুযায়ী';

  @override
  String get lightMode => 'লাইট';

  @override
  String get darkMode => 'ডার্ক';

  @override
  String get themeColor => 'থিমের রং';

  @override
  String get themeColorDescription =>
      'থিমের রং বেছে নিন; লাইট ও ডার্ক উভয় মোডে প্রযোজ্য।';

  @override
  String get language => 'ভাষা';

  @override
  String get languageFollowSystem => 'সিস্টেম অনুযায়ী';

  @override
  String get files => 'ফাইল';

  @override
  String get serverConfig => 'সার্ভার';

  @override
  String get refresh => 'রিফ্রেশ';

  @override
  String get user => 'ব্যবহারকারী';

  @override
  String get login => 'লগ ইন';

  @override
  String get home => 'হোম';

  @override
  String get welcome => 'স্বাগতম';

  @override
  String get logout => 'লগ আউট';

  @override
  String get systemStatus => 'সিস্টেম স্ট্যাটাস';

  @override
  String get error => 'ত্রুটি';

  @override
  String get apps => 'অ্যাপ';

  @override
  String appCount(Object count) {
    return 'মোট $count';
  }

  @override
  String get noApps => 'কোনো অ্যাপ নেই';

  @override
  String get cancel => 'বাতিল';

  @override
  String get ok => 'ঠিক আছে';

  @override
  String get retry => 'আবার চেষ্টা';

  @override
  String get back => 'পিছনে';

  @override
  String get delete => 'মুছুন';

  @override
  String get cannotGetAppAddress => 'অ্যাপের ঠিকানা পাওয়া যায়নি';

  @override
  String cannotOpen(Object url) {
    return 'খোলা যায়নি: $url';
  }

  @override
  String openFailed(Object e) {
    return 'খুলতে ব্যর্থ: $e';
  }

  @override
  String get appTypeNotSupported => 'এ ধরনের অ্যাপ এই কাজটি সমর্থন করে না';

  @override
  String get starting => 'শুরু হচ্ছে';

  @override
  String get restarting => 'রিস্টার্ট হচ্ছে';

  @override
  String get restart => 'রিস্টার্ট';

  @override
  String get closed => 'বন্ধ';

  @override
  String operationFailed(Object e) {
    return 'কাজ ব্যর্থ: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - টিপস';
  }

  @override
  String get noDescription =>
      'বর্ণনা নেই। কনফিগারেশন পরিবর্তন করতে সেটিংসে যান।';

  @override
  String get checkUpdateNotSupported => 'এই অ্যাপ আপডেট চেক সমর্থন করে না';

  @override
  String updateFailed(Object e) {
    return 'আপডেট ব্যর্থ: $e';
  }

  @override
  String get confirmUninstall => 'আনইনস্টল নিশ্চিত করুন';

  @override
  String uninstallConfirmMessage(Object name) {
    return '\"$name\" আনইনস্টল করতে চান? আনইনস্টলের পর ডেটা ফেরত পাবেন না।';
  }

  @override
  String get uninstall => 'আনইনস্টল';

  @override
  String get cannotUninstall => 'আনইনস্টল করা যায়নি';

  @override
  String get uninstalled => 'আনইনস্টল হয়েছে';

  @override
  String uninstallFailed(Object e) {
    return 'আনইনস্টল ব্যর্থ: $e';
  }

  @override
  String get cannotRestart => 'রিস্টার্ট করা যায়নি';

  @override
  String get cannotClose => 'বন্ধ করা যায়নি';

  @override
  String get running => 'চলছে';

  @override
  String get open => 'খুলুন';

  @override
  String get launchAndOpen => 'লঞ্চ করে খুলুন';

  @override
  String get tips => 'টিপস';

  @override
  String get checkAndUpdate => 'চেক ও আপডেট';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get configureServerFirst => 'আগে একটি সার্ভার কনফিগার ও সক্রিয় করুন';

  @override
  String get loginFailed => 'লগ ইন ব্যর্থ';

  @override
  String get configureServer => 'সার্ভার কনফিগার';

  @override
  String get username => 'ব্যবহারকারীর নাম';

  @override
  String get password => 'পাসওয়ার্ড';

  @override
  String get usernameRequired => 'ব্যবহারকারীর নাম লিখুন';

  @override
  String get passwordRequired => 'পাসওয়ার্ড লিখুন';

  @override
  String get passwordMinLength => 'পাসওয়ার্ড কমপক্ষে ৫ অক্ষরের হতে হবে';

  @override
  String get rememberCredentials => 'ক্রেডেনশিয়াল মনে রাখুন';

  @override
  String get newFolder => 'নতুন ফোল্ডার';

  @override
  String get newFile => 'নতুন ফাইল';

  @override
  String get folderName => 'ফোল্ডারের নাম';

  @override
  String get fileName => 'ফাইলের নাম';

  @override
  String get create => 'তৈরি করুন';

  @override
  String get folderCreated => 'ফোল্ডার সফলভাবে তৈরি';

  @override
  String get fileCreated => 'ফাইল সফলভাবে তৈরি';

  @override
  String createFailed(Object e) {
    return 'তৈরি ব্যর্থ: $e';
  }

  @override
  String get rename => 'নাম বদলান';

  @override
  String get renameFolder => 'ফোল্ডারের নাম বদলান';

  @override
  String get renameFile => 'ফাইলের নাম বদলান';

  @override
  String get newName => 'নতুন নাম';

  @override
  String get renameSuccess => 'নাম সফলভাবে বদলানো হয়েছে';

  @override
  String renameFailed(Object e) {
    return 'নাম বদলাতে ব্যর্থ: $e';
  }

  @override
  String get deleteFolder => 'ফোল্ডার মুছুন';

  @override
  String get deleteFile => 'ফাইল মুছুন';

  @override
  String deleteConfirm(Object name) {
    return '\"$name\" মুছবেন? এই কাজ ফিরিয়ে নেওয়া যাবে না।';
  }

  @override
  String get deleteSuccess => 'সফলভাবে মুছে ফেলা হয়েছে';

  @override
  String deleteFailed(Object e) {
    return 'মুছতে ব্যর্থ: $e';
  }

  @override
  String get parentDirectory => 'প্যারেন্ট ডিরেক্টরি';

  @override
  String get listView => 'লিস্ট ভিউ';

  @override
  String get gridView => 'গ্রিড ভিউ';

  @override
  String get folderEmpty => 'ফোল্ডার খালি';

  @override
  String openFile(Object name) {
    return 'ফাইল খুলুন: $name';
  }

  @override
  String get folder => 'ফোল্ডার';

  @override
  String get file => 'ফাইল';

  @override
  String get download => 'ডাউনলোড';

  @override
  String get downloadNotImplemented => 'ডাউনলোড বাস্তবায়িত নয়';

  @override
  String get downloadSuccess => 'ডাউনলোড সফল';

  @override
  String get downloadCancelled => 'ডাউনলোড বাতিল';

  @override
  String get downloadPreparing => 'ডাউনলোড প্রস্তুত হচ্ছে...';

  @override
  String get downloadAndPlay => 'ডাউনলোড ও চালান';

  @override
  String get downloadingForPlayback => 'প্লেব্যাকের জন্য ডাউনলোড...';

  @override
  String get fullscreen => 'পূর্ণস্ক্রিন';

  @override
  String get installSuccess => 'সফলভাবে ইনস্টল হয়েছে';

  @override
  String installSuccessWithApp(Object title) {
    return '$title সফলভাবে ইনস্টল হয়েছে';
  }

  @override
  String installFailed(Object e) {
    return 'ইনস্টল ব্যর্থ: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'অ্যাপ কনফিগ পেতে ব্যর্থ: $e';
  }

  @override
  String customInstall(Object title) {
    return 'কাস্টম ইনস্টল: $title';
  }

  @override
  String get editComposeHint =>
      'docker-compose সম্পাদনা করে ইনস্টলে ট্যাপ করুন';

  @override
  String get install => 'ইনস্টল';

  @override
  String get appStore => 'অ্যাপ স্টোর';

  @override
  String get searchApps => 'অ্যাপ খুঁজুন';

  @override
  String get category => 'ক্যাটাগরি';

  @override
  String get allCategories => 'সব ক্যাটাগরি';

  @override
  String get noAppsFound => 'মিলে যাওয়া অ্যাপ নেই';

  @override
  String get installed => 'ইনস্টল আছে';

  @override
  String get custom => 'কাস্টম';

  @override
  String get appDetail => 'অ্যাপ বিস্তারিত';

  @override
  String get appNotFound => 'অ্যাপ পাওয়া যায়নি';

  @override
  String versionLabel(Object version) {
    return 'ভার্সন: $version';
  }

  @override
  String get description => 'বর্ণনা';

  @override
  String get status => 'স্ট্যাটাস';

  @override
  String get notRunning => 'চলছে না';

  @override
  String get installStartNotImplemented =>
      'ইনস্টল/স্টার্ট বাস্তবায়িত নয় (/v2/app_management/compose প্রয়োজন)';

  @override
  String get uninstallNotImplemented =>
      'আনইনস্টল বাস্তবায়িত নয় (/v2/app_management/compose প্রয়োজন)';

  @override
  String get installStart => 'ইনস্টল / স্টার্ট';

  @override
  String get legacyApps => 'পুরনো অ্যাপ (পুনর্নির্মাণ হবে)';

  @override
  String get version => 'ভার্সন';

  @override
  String get cpuUsage => 'CPU ব্যবহার';

  @override
  String cores(Object count) {
    return 'কোর: $count';
  }

  @override
  String get memory => 'মেমোরি (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% ব্যবহার';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'ব্যবহৃত $used / মোট $total';
  }

  @override
  String get storage => 'স্টোরেজ';

  @override
  String totalLabel(Object storage) {
    return 'মোট $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'ব্যবহৃত $used · $percent%';
  }

  @override
  String get disk => 'ডিস্ক';

  @override
  String get networkStatus => 'নেটওয়ার্ক স্ট্যাটাস';

  @override
  String get addServer => 'সার্ভার যোগ করুন';

  @override
  String get editServer => 'সার্ভার সম্পাদনা';

  @override
  String get nasType => 'NAS টাইপ';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'সার্ভারের নাম';

  @override
  String get serverNameRequired => 'সার্ভারের নাম লিখুন';

  @override
  String get hostAddress => 'হোস্ট ঠিকানা';

  @override
  String get hostAddressHint => '192.168.1.100 বা casaos.local';

  @override
  String get hostAddressRequired => 'হোস্ট ঠিকানা লিখুন';

  @override
  String get port => 'পোর্ট';

  @override
  String get portRequired => 'পোর্ট লিখুন';

  @override
  String get portInvalid => 'সঠিক পোর্ট লিখুন (১-৬৫৫৩৫)';

  @override
  String get useHttps => 'HTTPS ব্যবহার করুন';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get noServerConfigured => 'এখনও কোনো সার্ভার কনফিগার করা নেই';

  @override
  String get activate => 'সক্রিয় করুন';

  @override
  String get edit => 'সম্পাদনা';

  @override
  String get confirmDelete => 'মুছে ফেলা নিশ্চিত করুন';

  @override
  String confirmDeleteServer(Object name) {
    return '\"$name\" সার্ভার মুছবেন?';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS-এ স্বাগতম';

  @override
  String get createAccountHint => 'প্রথমে আপনার প্রাথমিক অ্যাকাউন্ট তৈরি করি।';

  @override
  String get createAccount => 'অ্যাকাউন্ট তৈরি';

  @override
  String get start => 'শুরু →';

  @override
  String get confirmPassword => 'পাসওয়ার্ড নিশ্চিত করুন';

  @override
  String get confirmPasswordRequired => 'পাসওয়ার্ড আবার লিখুন';

  @override
  String get passwordMismatch => 'পাসওয়ার্ড মিলছে না';

  @override
  String get allDone => 'সব হয়ে গেছে!';

  @override
  String get accountCreatedHint =>
      'আপনার অ্যাকাউন্ট তৈরি হয়েছে। CasaOS / ZimaOS ডেস্কটপে যান।';

  @override
  String get enterDesktop => 'ডেস্কটপে যান';

  @override
  String get cannotGetInitKey => 'ইনিট কী পাওয়া যায়নি। সার্ভার চেক করুন।';

  @override
  String initFailed(Object e) {
    return 'ইনিট ব্যর্থ: $e';
  }

  @override
  String get openAppWith => 'অ্যাপ খুলুন';

  @override
  String get builtinBrowser => 'বিল্ট-ইন ব্রাউজার';

  @override
  String get systemBrowser => 'সিস্টেম ব্রাউজার';

  @override
  String get openInSystemBrowser => 'সিস্টেম ব্রাউজারে খুলুন';

  @override
  String get loading => 'লোড হচ্ছে...';
}
