// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Nepali (`ne`).
class AppLocalizationsNe extends AppLocalizations {
  AppLocalizationsNe([String locale = 'ne']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS क्लाइन्ट';

  @override
  String get settings => 'सेटिङहरू';

  @override
  String get about => 'बारेमा';

  @override
  String get appearance => 'देखावट';

  @override
  String get openSource => 'खुला स्रोत';

  @override
  String get tapToOpen => 'ब्राउजरमा खोल्न ट्याप गर्नुहोस्';

  @override
  String get themeMode => 'थिम मोड';

  @override
  String get followSystem => 'प्रणाली अनुसार';

  @override
  String get lightMode => 'उज्यालो';

  @override
  String get darkMode => 'अँध्यारो';

  @override
  String get themeColor => 'थिम रङ';

  @override
  String get themeColorDescription =>
      'थिम रङ छान्नुहोस्; उज्यालो र अँध्यारो दुवै मोडमा लागू हुन्छ।';

  @override
  String get language => 'भाषा';

  @override
  String get languageFollowSystem => 'प्रणाली अनुसार';

  @override
  String get files => 'फाइलहरू';

  @override
  String get serverConfig => 'सर्भर';

  @override
  String get refresh => 'रिफ्रेस';

  @override
  String get user => 'प्रयोगकर्ता';

  @override
  String get login => 'लग इन';

  @override
  String get home => 'गृह';

  @override
  String get welcome => 'स्वागत छ';

  @override
  String get logout => 'लग आउट';

  @override
  String get systemStatus => 'प्रणाली स्थिति';

  @override
  String get error => 'त्रुटि';

  @override
  String get apps => 'एपहरू';

  @override
  String appCount(Object count) {
    return 'जम्मा $count';
  }

  @override
  String get noApps => 'कुनै एप छैन';

  @override
  String get cancel => 'रद्द';

  @override
  String get ok => 'ठीक छ';

  @override
  String get retry => 'पुनः प्रयास';

  @override
  String get back => 'पछाडि';

  @override
  String get delete => 'मेटाउनुहोस्';

  @override
  String get cannotGetAppAddress => 'एप ठेगाना प्राप्त गर्न सकिएन';

  @override
  String cannotOpen(Object url) {
    return 'खोल्न सकिएन: $url';
  }

  @override
  String openFailed(Object e) {
    return 'खोल्न असफल: $e';
  }

  @override
  String get appTypeNotSupported => 'यो प्रकारको एपले यो कार्य समर्थन गर्दैन';

  @override
  String get starting => 'सुरु हुँदैछ';

  @override
  String get restarting => 'पुनः सुरु हुँदैछ';

  @override
  String get restart => 'पुनः सुरु';

  @override
  String get closed => 'बन्द';

  @override
  String operationFailed(Object e) {
    return 'कार्य असफल: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — सुझाव';
  }

  @override
  String get noDescription =>
      'विवरण छैन। सेटिङमा गई कन्फिगरेसन परिवर्तन गर्नुहोस्।';

  @override
  String get checkUpdateNotSupported => 'यो एपले अपडेट जाँच समर्थन गर्दैन';

  @override
  String updateFailed(Object e) {
    return 'अपडेट असफल: $e';
  }

  @override
  String get confirmUninstall => 'अनइन्स्टल पुष्टि';

  @override
  String uninstallConfirmMessage(Object name) {
    return '«$name» अनइन्स्टल गर्ने? अनइन्स्टल पछि डाटा पुनर्स्थापना हुँदैन।';
  }

  @override
  String get uninstall => 'अनइन्स्टल';

  @override
  String get cannotUninstall => 'अनइन्स्टल गर्न सकिएन';

  @override
  String get uninstalled => 'अनइन्स्टल भयो';

  @override
  String uninstallFailed(Object e) {
    return 'अनइन्स्टल असफल: $e';
  }

  @override
  String get cannotRestart => 'पुनः सुरु गर्न सकिएन';

  @override
  String get cannotClose => 'बन्द गर्न सकिएन';

  @override
  String get running => 'चलिरहेको';

  @override
  String get open => 'खोल्नुहोस्';

  @override
  String get launchAndOpen => 'सुरु गरी खोल्नुहोस्';

  @override
  String get tips => 'सुझाव';

  @override
  String get checkAndUpdate => 'जाँच र अपडेट';

  @override
  String get close => 'बन्द';

  @override
  String get configureServerFirst => 'पहिले सर्भर कन्फिगर गरी सक्रिय गर्नुहोस्';

  @override
  String get loginFailed => 'लग इन असफल';

  @override
  String get configureServer => 'सर्भर कन्फिगर';

  @override
  String get username => 'प्रयोगकर्ता नाम';

  @override
  String get password => 'पासवर्ड';

  @override
  String get usernameRequired => 'प्रयोगकर्ता नाम प्रविष्ट गर्नुहोस्';

  @override
  String get passwordRequired => 'पासवर्ड प्रविष्ट गर्नुहोस्';

  @override
  String get passwordMinLength => 'पासवर्ड कम्तिमा ५ अक्षरको हुनुपर्छ';

  @override
  String get rememberCredentials => 'लगइन जानकारी सम्झनुहोस्';

  @override
  String get newFolder => 'नयाँ फोल्डर';

  @override
  String get newFile => 'नयाँ फाइल';

  @override
  String get folderName => 'फोल्डर नाम';

  @override
  String get fileName => 'फाइल नाम';

  @override
  String get create => 'सिर्जना';

  @override
  String get folderCreated => 'फोल्डर सिर्जना भयो';

  @override
  String get fileCreated => 'फाइल सिर्जना भयो';

  @override
  String createFailed(Object e) {
    return 'सिर्जना असफल: $e';
  }

  @override
  String get rename => 'नाम बदल्नुहोस्';

  @override
  String get renameFolder => 'फोल्डर नाम बदल्नुहोस्';

  @override
  String get renameFile => 'फाइल नाम बदल्नुहोस्';

  @override
  String get newName => 'नयाँ नाम';

  @override
  String get renameSuccess => 'नाम बदलियो';

  @override
  String renameFailed(Object e) {
    return 'नाम बदल्न असफल: $e';
  }

  @override
  String get deleteFolder => 'फोल्डर मेटाउनुहोस्';

  @override
  String get deleteFile => 'फाइल मेटाउनुहोस्';

  @override
  String deleteConfirm(Object name) {
    return '«$name» मेटाउने? यो कार्य फिर्ता हुँदैन।';
  }

  @override
  String get deleteSuccess => 'मेटाइयो';

  @override
  String deleteFailed(Object e) {
    return 'मेटाउन असफल: $e';
  }

  @override
  String get parentDirectory => 'माथिल्लो फोल्डर';

  @override
  String get listView => 'सूची दृश्य';

  @override
  String get gridView => 'ग्रिड दृश्य';

  @override
  String get folderEmpty => 'फोल्डर खाली छ';

  @override
  String openFile(Object name) {
    return 'फाइल खोल्नुहोस्: $name';
  }

  @override
  String get folder => 'फोल्डर';

  @override
  String get file => 'फाइल';

  @override
  String get download => 'डाउनलोड';

  @override
  String get downloadNotImplemented => 'डाउनलोड कार्यान्वयन छैन';

  @override
  String get downloadSuccess => 'डाउनलोड सफल';

  @override
  String get downloadCancelled => 'डाउनलोड रद्द';

  @override
  String get downloadPreparing => 'डाउनलोड तयार हुँदै…';

  @override
  String get downloadAndPlay => 'डाउनलोड र प्ले';

  @override
  String get downloadingForPlayback => 'प्लेब्याकका लागि डाउनलोड…';

  @override
  String get fullscreen => 'पूर्ण स्क्रिन';

  @override
  String get installSuccess => 'इन्स्टल सफल';

  @override
  String installSuccessWithApp(Object title) {
    return '«$title» इन्स्टल भयो';
  }

  @override
  String installFailed(Object e) {
    return 'इन्स्टल असफल: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'एप कन्फिग प्राप्त गर्न असफल: $e';
  }

  @override
  String customInstall(Object title) {
    return 'कस्टम इन्स्टल: $title';
  }

  @override
  String get editComposeHint => 'docker-compose सम्पादन गरी इन्स्टल छान्नुहोस्';

  @override
  String get install => 'इन्स्टल';

  @override
  String get appStore => 'एप स्टोर';

  @override
  String get searchApps => 'एप खोज्नुहोस्';

  @override
  String get category => 'श्रेणी';

  @override
  String get allCategories => 'सबै श्रेणी';

  @override
  String get noAppsFound => 'मिल्दो एप छैन';

  @override
  String get installed => 'इन्स्टल भएको';

  @override
  String get custom => 'कस्टम';

  @override
  String get appDetail => 'एप विवरण';

  @override
  String get appNotFound => 'एप फेला परेन';

  @override
  String versionLabel(Object version) {
    return 'संस्करण: $version';
  }

  @override
  String get description => 'विवरण';

  @override
  String get status => 'स्थिति';

  @override
  String get notRunning => 'चलिरहेको छैन';

  @override
  String get installStartNotImplemented =>
      'इन्स्टल/सुरु कार्यान्वयन छैन (/v2/app_management/compose चाहिन्छ)';

  @override
  String get uninstallNotImplemented =>
      'अनइन्स्टल कार्यान्वयन छैन (/v2/app_management/compose चाहिन्छ)';

  @override
  String get installStart => 'इन्स्टल / सुरु';

  @override
  String get legacyApps => 'पुराना एपहरू (पुनर्निर्माण हुने)';

  @override
  String get version => 'संस्करण';

  @override
  String get cpuUsage => 'CPU प्रयोग';

  @override
  String cores(Object count) {
    return 'कोर: $count';
  }

  @override
  String get memory => 'मेमोरी (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% प्रयोग';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'प्रयोग $used / जम्मा $total';
  }

  @override
  String get storage => 'भण्डारण';

  @override
  String totalLabel(Object storage) {
    return 'जम्मा $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'प्रयोग $used · $percent%';
  }

  @override
  String get disk => 'डिस्क';

  @override
  String get networkStatus => 'नेटवर्क';

  @override
  String get addServer => 'सर्भर थप्नुहोस्';

  @override
  String get editServer => 'सर्भर सम्पादन';

  @override
  String get nasType => 'NAS प्रकार';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'सर्भर नाम';

  @override
  String get serverNameRequired => 'सर्भर नाम प्रविष्ट गर्नुहोस्';

  @override
  String get hostAddress => 'होस्ट ठेगाना';

  @override
  String get hostAddressHint => '192.168.1.100 वा casaos.local';

  @override
  String get hostAddressRequired => 'होस्ट ठेगाना प्रविष्ट गर्नुहोस्';

  @override
  String get port => 'पोर्ट';

  @override
  String get portRequired => 'पोर्ट प्रविष्ट गर्नुहोस्';

  @override
  String get portInvalid => 'मान्य पोर्ट प्रविष्ट गर्नुहोस् (१-६५५३५)';

  @override
  String get useHttps => 'HTTPS प्रयोग';

  @override
  String get save => 'सुरक्षित गर्नुहोस्';

  @override
  String get noServerConfigured => 'अझै कुनै सर्भर कन्फिगर छैन';

  @override
  String get activate => 'सक्रिय';

  @override
  String get edit => 'सम्पादन';

  @override
  String get confirmDelete => 'मेटाउने पुष्टि';

  @override
  String confirmDeleteServer(Object name) {
    return 'सर्भर «$name» मेटाउने?';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS मा स्वागत छ';

  @override
  String get createAccountHint => 'पहिले सुरुवाती खाता बनाऔँ।';

  @override
  String get createAccount => 'खाता बनाउनुहोस्';

  @override
  String get start => 'सुरु →';

  @override
  String get confirmPassword => 'पासवर्ड पुष्टि';

  @override
  String get confirmPasswordRequired => 'पासवर्ड पुनः प्रविष्ट गर्नुहोस्';

  @override
  String get passwordMismatch => 'पासवर्ड मेल खाँदैन';

  @override
  String get allDone => 'सबै भयो!';

  @override
  String get accountCreatedHint =>
      'खाता बन्यो। डेस्कटपमा गई CasaOS / ZimaOS प्रयोग गर्नुहोस्।';

  @override
  String get enterDesktop => 'डेस्कटपमा जानुहोस्';

  @override
  String get cannotGetInitKey =>
      'इनिट कुञ्जी प्राप्त गर्न सकिएन। सर्भर जाँच गर्नुहोस्।';

  @override
  String initFailed(Object e) {
    return 'इनिसियलाइजेसन असफल: $e';
  }

  @override
  String get openAppWith => 'एप यसमा खोल्नुहोस्';

  @override
  String get builtinBrowser => 'अन्तर्निहित ब्राउजर';

  @override
  String get systemBrowser => 'प्रणाली ब्राउजर';

  @override
  String get openInSystemBrowser => 'प्रणाली ब्राउजरमा खोल्नुहोस्';

  @override
  String get loading => 'लोड हुँदैछ…';
}
