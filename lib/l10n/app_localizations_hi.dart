// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS क्लाइंट';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get about => 'परिचय';

  @override
  String get appearance => 'दिखावट';

  @override
  String get openSource => 'ओपन सोर्स';

  @override
  String get tapToOpen => 'ब्राउज़र में खोलने के लिए टैप करें';

  @override
  String get themeMode => 'थीम मोड';

  @override
  String get followSystem => 'सिस्टम के अनुसार';

  @override
  String get lightMode => 'लाइट';

  @override
  String get darkMode => 'डार्क';

  @override
  String get themeColor => 'थीम रंग';

  @override
  String get themeColorDescription =>
      'थीम रंग चुनें; लाइट और डार्क दोनों मोड पर लागू होता है।';

  @override
  String get language => 'भाषा';

  @override
  String get languageFollowSystem => 'सिस्टम के अनुसार';

  @override
  String get files => 'फ़ाइलें';

  @override
  String get serverConfig => 'सर्वर';

  @override
  String get refresh => 'रीफ़्रेश';

  @override
  String get user => 'उपयोगकर्ता';

  @override
  String get login => 'लॉग इन';

  @override
  String get home => 'होम';

  @override
  String get welcome => 'स्वागत है';

  @override
  String get logout => 'लॉग आउट';

  @override
  String get systemStatus => 'सिस्टम स्थिति';

  @override
  String get error => 'त्रुटि';

  @override
  String get apps => 'ऐप्स';

  @override
  String appCount(Object count) {
    return 'कुल $count';
  }

  @override
  String get noApps => 'कोई ऐप नहीं';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get ok => 'ठीक';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String get back => 'पीछे';

  @override
  String get delete => 'हटाएँ';

  @override
  String get cannotGetAppAddress => 'ऐप पता प्राप्त नहीं हो सका';

  @override
  String cannotOpen(Object url) {
    return 'खोला नहीं जा सका: $url';
  }

  @override
  String openFailed(Object e) {
    return 'खोलने में विफल: $e';
  }

  @override
  String get appTypeNotSupported => 'यह ऐप प्रकार यह क्रिया समर्थित नहीं करता';

  @override
  String get starting => 'शुरू हो रहा है';

  @override
  String get restarting => 'रीस्टार्ट हो रहा है';

  @override
  String get restart => 'रीस्टार्ट';

  @override
  String get closed => 'बंद';

  @override
  String operationFailed(Object e) {
    return 'क्रिया विफल: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - सुझाव';
  }

  @override
  String get noDescription =>
      'कोई विवरण नहीं। कॉन्फ़िगरेशन बदलने के लिए सेटिंग्स में जाएँ।';

  @override
  String get checkUpdateNotSupported => 'यह ऐप अपडेट जाँच समर्थित नहीं करता';

  @override
  String updateFailed(Object e) {
    return 'अपडेट विफल: $e';
  }

  @override
  String get confirmUninstall => 'अनइंस्टॉल की पुष्टि करें';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'क्या आप वाकई \"$name\" अनइंस्टॉल करना चाहते हैं? अनइंस्टॉल के बाद डेटा पुनर्प्राप्त नहीं होगा।';
  }

  @override
  String get uninstall => 'अनइंस्टॉल';

  @override
  String get cannotUninstall => 'अनइंस्टॉल नहीं हो सका';

  @override
  String get uninstalled => 'अनइंस्टॉल हो गया';

  @override
  String uninstallFailed(Object e) {
    return 'अनइंस्टॉल विफल: $e';
  }

  @override
  String get cannotRestart => 'रीस्टार्ट नहीं हो सका';

  @override
  String get cannotClose => 'बंद नहीं हो सका';

  @override
  String get running => 'चल रहा है';

  @override
  String get open => 'खोलें';

  @override
  String get launchAndOpen => 'लॉन्च करें और खोलें';

  @override
  String get tips => 'सुझाव';

  @override
  String get checkAndUpdate => 'जाँचें और अपडेट करें';

  @override
  String get close => 'बंद करें';

  @override
  String get configureServerFirst =>
      'कृपया पहले सर्वर कॉन्फ़िगर करें और सक्रिय करें';

  @override
  String get loginFailed => 'लॉग इन विफल';

  @override
  String get configureServer => 'सर्वर कॉन्फ़िगर करें';

  @override
  String get username => 'उपयोगकर्ता नाम';

  @override
  String get password => 'पासवर्ड';

  @override
  String get usernameRequired => 'उपयोगकर्ता नाम दर्ज करें';

  @override
  String get passwordRequired => 'पासवर्ड दर्ज करें';

  @override
  String get passwordMinLength => 'पासवर्ड कम से कम 5 अक्षरों का होना चाहिए';

  @override
  String get rememberCredentials => 'क्रेडेंशियल याद रखें';

  @override
  String get newFolder => 'नया फ़ोल्डर';

  @override
  String get newFile => 'नई फ़ाइल';

  @override
  String get folderName => 'फ़ोल्डर नाम';

  @override
  String get fileName => 'फ़ाइल नाम';

  @override
  String get create => 'बनाएँ';

  @override
  String get folderCreated => 'फ़ोल्डर सफलतापूर्वक बना';

  @override
  String get fileCreated => 'फ़ाइल सफलतापूर्वक बनी';

  @override
  String createFailed(Object e) {
    return 'बनाना विफल: $e';
  }

  @override
  String get rename => 'नाम बदलें';

  @override
  String get renameFolder => 'फ़ोल्डर का नाम बदलें';

  @override
  String get renameFile => 'फ़ाइल का नाम बदलें';

  @override
  String get newName => 'नया नाम';

  @override
  String get renameSuccess => 'नाम सफलतापूर्वक बदला गया';

  @override
  String renameFailed(Object e) {
    return 'नाम बदलना विफल: $e';
  }

  @override
  String get deleteFolder => 'फ़ोल्डर हटाएँ';

  @override
  String get deleteFile => 'फ़ाइल हटाएँ';

  @override
  String deleteConfirm(Object name) {
    return 'क्या \"$name\" हटाना है? यह क्रिया पूर्ववत नहीं हो सकती।';
  }

  @override
  String get deleteSuccess => 'सफलतापूर्वक हटाया गया';

  @override
  String deleteFailed(Object e) {
    return 'हटाना विफल: $e';
  }

  @override
  String get parentDirectory => 'मूल निर्देशिका';

  @override
  String get listView => 'सूची दृश्य';

  @override
  String get gridView => 'ग्रिड दृश्य';

  @override
  String get folderEmpty => 'फ़ोल्डर खाली है';

  @override
  String openFile(Object name) {
    return 'फ़ाइल खोलें: $name';
  }

  @override
  String get folder => 'फ़ोल्डर';

  @override
  String get file => 'फ़ाइल';

  @override
  String get download => 'डाउनलोड';

  @override
  String get downloadNotImplemented => 'डाउनलोड लागू नहीं';

  @override
  String get downloadSuccess => 'डाउनलोड सफल';

  @override
  String get downloadCancelled => 'डाउनलोड रद्द';

  @override
  String get downloadPreparing => 'डाउनलोड तैयार हो रहा है...';

  @override
  String get downloadAndPlay => 'डाउनलोड करें और चलाएँ';

  @override
  String get downloadingForPlayback => 'प्लेबैक के लिए डाउनलोड...';

  @override
  String get fullscreen => 'पूर्ण स्क्रीन';

  @override
  String get installSuccess => 'सफलतापूर्वक इंस्टॉल हुआ';

  @override
  String installSuccessWithApp(Object title) {
    return '$title सफलतापूर्वक इंस्टॉल हुआ';
  }

  @override
  String installFailed(Object e) {
    return 'इंस्टॉल विफल: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'ऐप कॉन्फ़िग प्राप्त करने में विफल: $e';
  }

  @override
  String customInstall(Object title) {
    return 'कस्टम इंस्टॉल: $title';
  }

  @override
  String get editComposeHint =>
      'docker-compose संपादित करें और इंस्टॉल पर टैप करें';

  @override
  String get install => 'इंस्टॉल';

  @override
  String get appStore => 'ऐप स्टोर';

  @override
  String get searchApps => 'ऐप खोजें';

  @override
  String get category => 'श्रेणी';

  @override
  String get allCategories => 'सभी श्रेणियाँ';

  @override
  String get noAppsFound => 'कोई मेल खाता ऐप नहीं';

  @override
  String get installed => 'इंस्टॉल है';

  @override
  String get custom => 'कस्टम';

  @override
  String get appDetail => 'ऐप विवरण';

  @override
  String get appNotFound => 'ऐप नहीं मिला';

  @override
  String versionLabel(Object version) {
    return 'संस्करण: $version';
  }

  @override
  String get description => 'विवरण';

  @override
  String get status => 'स्थिति';

  @override
  String get notRunning => 'नहीं चल रहा';

  @override
  String get installStartNotImplemented =>
      'इंस्टॉल/स्टार्ट लागू नहीं (/v2/app_management/compose आवश्यक)';

  @override
  String get uninstallNotImplemented =>
      'अनइंस्टॉल लागू नहीं (/v2/app_management/compose आवश्यक)';

  @override
  String get installStart => 'इंस्टॉल / स्टार्ट';

  @override
  String get legacyApps => 'पुराने ऐप (पुनर्निर्माण होंगे)';

  @override
  String get version => 'संस्करण';

  @override
  String get cpuUsage => 'CPU उपयोग';

  @override
  String cores(Object count) {
    return 'कोर: $count';
  }

  @override
  String get memory => 'मेमोरी (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% उपयोग';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'उपयोग $used / कुल $total';
  }

  @override
  String get storage => 'स्टोरेज';

  @override
  String totalLabel(Object storage) {
    return 'कुल $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'उपयोग $used · $percent%';
  }

  @override
  String get disk => 'डिस्क';

  @override
  String get networkStatus => 'नेटवर्क स्थिति';

  @override
  String get addServer => 'सर्वर जोड़ें';

  @override
  String get editServer => 'सर्वर संपादित करें';

  @override
  String get nasType => 'NAS प्रकार';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'सर्वर नाम';

  @override
  String get serverNameRequired => 'सर्वर नाम दर्ज करें';

  @override
  String get hostAddress => 'होस्ट पता';

  @override
  String get hostAddressHint => '192.168.1.100 या casaos.local';

  @override
  String get hostAddressRequired => 'होस्ट पता दर्ज करें';

  @override
  String get port => 'पोर्ट';

  @override
  String get portRequired => 'पोर्ट दर्ज करें';

  @override
  String get portInvalid => 'मान्य पोर्ट दर्ज करें (1-65535)';

  @override
  String get useHttps => 'HTTPS उपयोग करें';

  @override
  String get save => 'सहेजें';

  @override
  String get noServerConfigured => 'अभी कोई सर्वर कॉन्फ़िगर नहीं';

  @override
  String get activate => 'सक्रिय करें';

  @override
  String get edit => 'संपादित करें';

  @override
  String get confirmDelete => 'हटाने की पुष्टि';

  @override
  String confirmDeleteServer(Object name) {
    return 'सर्वर \"$name\" हटाएँ?';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS में स्वागत है';

  @override
  String get createAccountHint => 'पहले अपना प्रारंभिक खाता बनाते हैं।';

  @override
  String get createAccount => 'खाता बनाएँ';

  @override
  String get start => 'शुरू →';

  @override
  String get confirmPassword => 'पासवर्ड पुष्टि करें';

  @override
  String get confirmPasswordRequired => 'पासवर्ड फिर दर्ज करें';

  @override
  String get passwordMismatch => 'पासवर्ड मेल नहीं खाते';

  @override
  String get allDone => 'सब हो गया!';

  @override
  String get accountCreatedHint =>
      'आपका खाता बन गया। CasaOS / ZimaOS डेस्कटॉप में जाएँ।';

  @override
  String get enterDesktop => 'डेस्कटॉप में जाएँ';

  @override
  String get cannotGetInitKey => 'इनिट कुंजी नहीं मिली। सर्वर जाँचें।';

  @override
  String initFailed(Object e) {
    return 'आरंभ विफल: $e';
  }

  @override
  String get openAppWith => 'ऐप खोलें';

  @override
  String get builtinBrowser => 'अंतर्निहित ब्राउज़र';

  @override
  String get systemBrowser => 'सिस्टम ब्राउज़र';

  @override
  String get openInSystemBrowser => 'सिस्टम ब्राउज़र में खोलें';

  @override
  String get loading => 'लोड हो रहा है...';
}
