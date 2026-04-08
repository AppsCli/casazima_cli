// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Kazakh (`kk`).
class AppLocalizationsKk extends AppLocalizations {
  AppLocalizationsKk([String locale = 'kk']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS клиенті';

  @override
  String get settings => 'Баптаулар';

  @override
  String get about => 'Қолданба туралы';

  @override
  String get appearance => 'Сыртқы түрі';

  @override
  String get openSource => 'Ашық код';

  @override
  String get tapToOpen => 'Браузерде ашу үшін басыңыз';

  @override
  String get themeMode => 'Тақырып режимі';

  @override
  String get followSystem => 'Жүйеге сәйкес';

  @override
  String get lightMode => 'Жарық режим';

  @override
  String get darkMode => 'Қараңғы режим';

  @override
  String get themeColor => 'Тақырып түсі';

  @override
  String get themeColorDescription =>
      'Тақырып түсін таңдаңыз; жарық және қараңғы режимдерге қолданылады.';

  @override
  String get language => 'Тіл';

  @override
  String get languageFollowSystem => 'Жүйеге сәйкес';

  @override
  String get files => 'Файлдар';

  @override
  String get serverConfig => 'Сервер баптауы';

  @override
  String get refresh => 'Жаңарту';

  @override
  String get user => 'Пайдаланушы';

  @override
  String get login => 'Кіру';

  @override
  String get home => 'Басты бет';

  @override
  String get welcome => 'Қош келдіңіз';

  @override
  String get logout => 'Шығу';

  @override
  String get systemStatus => 'Жүйе күйі';

  @override
  String get error => 'Қате';

  @override
  String get apps => 'Қолданбалар';

  @override
  String appCount(Object count) {
    return 'Барлығы $count';
  }

  @override
  String get noApps => 'Қолданба жоқ';

  @override
  String get cancel => 'Болдырмау';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Қайталау';

  @override
  String get back => 'Артқа';

  @override
  String get delete => 'Жою';

  @override
  String get cannotGetAppAddress => 'Қолданба мекенжайын алу мүмкін емес';

  @override
  String cannotOpen(Object url) {
    return 'Ашу мүмкін емес: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Ашу сәтсіз: $e';
  }

  @override
  String get appTypeNotSupported => 'Бұл қолданба түрі бұл әрекетті қолдамайды';

  @override
  String get starting => 'Іске қосылуда';

  @override
  String get restarting => 'Қайта іске қосылуда';

  @override
  String get restart => 'Қайта іске қосу';

  @override
  String get closed => 'Жабық';

  @override
  String operationFailed(Object e) {
    return 'Әрекет сәтсіз: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — кеңестер';
  }

  @override
  String get noDescription =>
      'Сипаттама жоқ. Баптауларда конфигурацияны өзгертіңіз.';

  @override
  String get checkUpdateNotSupported =>
      'Бұл қолданба жаңартуларды тексеруді қолдамайды';

  @override
  String updateFailed(Object e) {
    return 'Жаңарту сәтсіз: $e';
  }

  @override
  String get confirmUninstall => 'Жоюды растаңыз';

  @override
  String uninstallConfirmMessage(Object name) {
    return '«$name» жойғыңыз келе ме? Жойылғаннан кейін деректерді қалпына келтіру мүмкін емес.';
  }

  @override
  String get uninstall => 'Жою';

  @override
  String get cannotUninstall => 'Жою мүмкін емес';

  @override
  String get uninstalled => 'Жойылды';

  @override
  String uninstallFailed(Object e) {
    return 'Жою сәтсіз: $e';
  }

  @override
  String get cannotRestart => 'Қайта іске қосу мүмкін емес';

  @override
  String get cannotClose => 'Жабу мүмкін емес';

  @override
  String get running => 'Жұмыс істейді';

  @override
  String get open => 'Ашу';

  @override
  String get launchAndOpen => 'Іске қосу және ашу';

  @override
  String get tips => 'Кеңестер';

  @override
  String get checkAndUpdate => 'Тексеру және жаңарту';

  @override
  String get close => 'Жабу';

  @override
  String get configureServerFirst => 'Алдымен серверді баптап, белсендіріңіз';

  @override
  String get loginFailed => 'Кіру сәтсіз';

  @override
  String get configureServer => 'Серверді баптау';

  @override
  String get username => 'Пайдаланушы аты';

  @override
  String get password => 'Құпия сөз';

  @override
  String get usernameRequired => 'Пайдаланушы атын енгізіңіз';

  @override
  String get passwordRequired => 'Құпия сөзді енгізіңіз';

  @override
  String get passwordMinLength => 'Құпия сөз кемінде 5 таңбадан тұруы керек';

  @override
  String get rememberCredentials => 'Деректерді есте сақтау';

  @override
  String get newFolder => 'Жаңа қалта';

  @override
  String get newFile => 'Жаңа файл';

  @override
  String get folderName => 'Қалта атауы';

  @override
  String get fileName => 'Файл атауы';

  @override
  String get create => 'Жасау';

  @override
  String get folderCreated => 'Қалта жасалды';

  @override
  String get fileCreated => 'Файл жасалды';

  @override
  String createFailed(Object e) {
    return 'Жасау сәтсіз: $e';
  }

  @override
  String get rename => 'Атын өзгерту';

  @override
  String get renameFolder => 'Қалта атын өзгерту';

  @override
  String get renameFile => 'Файл атын өзгерту';

  @override
  String get newName => 'Жаңа атау';

  @override
  String get renameSuccess => 'Аты өзгертілді';

  @override
  String renameFailed(Object e) {
    return 'Атын өзгерту сәтсіз: $e';
  }

  @override
  String get deleteFolder => 'Қалтаны жою';

  @override
  String get deleteFile => 'Файлды жою';

  @override
  String deleteConfirm(Object name) {
    return '«$name» жою керек пе? Бұл әрекетті болдырмау мүмкін емес.';
  }

  @override
  String get deleteSuccess => 'Жойылды';

  @override
  String deleteFailed(Object e) {
    return 'Жою сәтсіз: $e';
  }

  @override
  String get parentDirectory => 'Жоғарғы каталог';

  @override
  String get listView => 'Тізім';

  @override
  String get gridView => 'Тор';

  @override
  String get folderEmpty => 'Қалта бос';

  @override
  String openFile(Object name) {
    return 'Файлды ашу: $name';
  }

  @override
  String get folder => 'Қалта';

  @override
  String get file => 'Файл';

  @override
  String get download => 'Жүктеу';

  @override
  String get downloadNotImplemented => 'Жүктеу іске асырылмаған';

  @override
  String get downloadSuccess => 'Жүктелді';

  @override
  String get downloadCancelled => 'Жүктеу тоқтатылды';

  @override
  String get downloadPreparing => 'Жүктеу дайындалып жатыр…';

  @override
  String get downloadAndPlay => 'Жүктеп ойнату';

  @override
  String get downloadingForPlayback => 'Ойнату үшін жүктелуде…';

  @override
  String get fullscreen => 'Толық экран';

  @override
  String get installSuccess => 'Орнату сәтті';

  @override
  String installSuccessWithApp(Object title) {
    return '«$title» орнатылды';
  }

  @override
  String installFailed(Object e) {
    return 'Орнату сәтсіз: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Қолданба конфигурациясын алу сәтсіз: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Арнайы орнату: $title';
  }

  @override
  String get editComposeHint => 'docker-compose түзетіп, орнатуды басыңыз';

  @override
  String get install => 'Орнату';

  @override
  String get appStore => 'Қолданба дүкені';

  @override
  String get searchApps => 'Қолданбаларды іздеу';

  @override
  String get category => 'Санат';

  @override
  String get allCategories => 'Барлық санаттар';

  @override
  String get noAppsFound => 'Сәйкес қолданба жоқ';

  @override
  String get installed => 'Орнатылған';

  @override
  String get custom => 'Арнайы';

  @override
  String get appDetail => 'Қолданба мәліметтері';

  @override
  String get appNotFound => 'Қолданба табылмады';

  @override
  String versionLabel(Object version) {
    return 'Нұсқа: $version';
  }

  @override
  String get description => 'Сипаттама';

  @override
  String get status => 'Күйі';

  @override
  String get notRunning => 'Жұмыс істемейді';

  @override
  String get installStartNotImplemented =>
      'Орнату/іске қосу іске асырылмаған (/v2/app_management/compose қажет)';

  @override
  String get uninstallNotImplemented =>
      'Жою іске асырылмаған (/v2/app_management/compose қажет)';

  @override
  String get installStart => 'Орнату / Іске қосу';

  @override
  String get legacyApps => 'Ескі қолданбалар (қайта құрылады)';

  @override
  String get version => 'Нұсқа';

  @override
  String get cpuUsage => 'CPU пайдалануы';

  @override
  String cores(Object count) {
    return 'Ядролар: $count';
  }

  @override
  String get memory => 'Жады (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% пайдаланылған';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Пайдаланылған $used / Барлығы $total';
  }

  @override
  String get storage => 'Сақтау орны';

  @override
  String totalLabel(Object storage) {
    return 'Барлығы $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Пайдаланылған $used · $percent%';
  }

  @override
  String get disk => 'Диск';

  @override
  String get networkStatus => 'Желі күйі';

  @override
  String get addServer => 'Сервер қосу';

  @override
  String get editServer => 'Серверді түзету';

  @override
  String get nasType => 'NAS түрі';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Сервер атауы';

  @override
  String get serverNameRequired => 'Сервер атын енгізіңіз';

  @override
  String get hostAddress => 'Хост мекенжайы';

  @override
  String get hostAddressHint => '192.168.1.100 немесе casaos.local';

  @override
  String get hostAddressRequired => 'Хост мекенжайын енгізіңіз';

  @override
  String get port => 'Порт';

  @override
  String get portRequired => 'Портты енгізіңіз';

  @override
  String get portInvalid => 'Жарамды порт енгізіңіз (1–65535)';

  @override
  String get useHttps => 'HTTPS қолдану';

  @override
  String get save => 'Сақтау';

  @override
  String get noServerConfigured => 'Сервер әлі бапталмаған';

  @override
  String get activate => 'Белсендіру';

  @override
  String get edit => 'Түзету';

  @override
  String get confirmDelete => 'Жоюды растаңыз';

  @override
  String confirmDeleteServer(Object name) {
    return '«$name» серверін жою керек пе?';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS-қа қош келдіңіз';

  @override
  String get createAccountHint => 'Алдымен бастапқы тіркелгіңізді жасайық.';

  @override
  String get createAccount => 'Тіркелгі жасау';

  @override
  String get start => 'Бастау →';

  @override
  String get confirmPassword => 'Құпия сөзді растаңыз';

  @override
  String get confirmPasswordRequired => 'Құпия сөзді қайта енгізіңіз';

  @override
  String get passwordMismatch => 'Құпия сөздер сәйкес емес';

  @override
  String get allDone => 'Дайын!';

  @override
  String get accountCreatedHint =>
      'Тіркелгіңіз жасалды. CasaOS / ZimaOS жұмыс үстеліне кіріңіз.';

  @override
  String get enterDesktop => 'Жұмыс үстеліне';

  @override
  String get cannotGetInitKey =>
      'Инициализация кілтін алу мүмкін емес. Сервер күйін тексеріңіз.';

  @override
  String initFailed(Object e) {
    return 'Инициализация сәтсіз: $e';
  }

  @override
  String get openAppWith => 'Қолданбаны ашу';

  @override
  String get builtinBrowser => 'Кірістірілген браузер';

  @override
  String get systemBrowser => 'Жүйелік браузер';

  @override
  String get openInSystemBrowser => 'Жүйелік браузерде ашу';

  @override
  String get loading => 'Жүктелуде…';
}
