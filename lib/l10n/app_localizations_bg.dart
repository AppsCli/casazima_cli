// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Клиент CasaOS / ZimaOS';

  @override
  String get settings => 'Настройки';

  @override
  String get about => 'Относно';

  @override
  String get appearance => 'Изглед';

  @override
  String get openSource => 'Отворен код';

  @override
  String get tapToOpen => 'Докоснете за отваряне в браузъра';

  @override
  String get themeMode => 'Тема';

  @override
  String get followSystem => 'Като системата';

  @override
  String get lightMode => 'Светла';

  @override
  String get darkMode => 'Тъмна';

  @override
  String get themeColor => 'Цвят на темата';

  @override
  String get themeColorDescription =>
      'Изберете цвят на темата; важи за светъл и тъмен режим.';

  @override
  String get language => 'Език';

  @override
  String get languageFollowSystem => 'Като системата';

  @override
  String get files => 'Файлове';

  @override
  String get serverConfig => 'Сървър';

  @override
  String get refresh => 'Опресни';

  @override
  String get user => 'Потребител';

  @override
  String get login => 'Вход';

  @override
  String get home => 'Начало';

  @override
  String get welcome => 'Добре дошли';

  @override
  String get logout => 'Изход';

  @override
  String get systemStatus => 'Състояние на системата';

  @override
  String get error => 'Грешка';

  @override
  String get apps => 'Приложения';

  @override
  String appCount(Object count) {
    return 'Общо $count';
  }

  @override
  String get noApps => 'Няма приложения';

  @override
  String get cancel => 'Отказ';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Опитай отново';

  @override
  String get back => 'Назад';

  @override
  String get delete => 'Изтриване';

  @override
  String get cannotGetAppAddress =>
      'Не може да се получи адресът на приложението';

  @override
  String cannotOpen(Object url) {
    return 'Не може да се отвори: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Отварянето не успя: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Този тип приложение не поддържа тази операция';

  @override
  String get starting => 'Стартиране';

  @override
  String get restarting => 'Рестартиране';

  @override
  String get restart => 'Рестарт';

  @override
  String get closed => 'Затворено';

  @override
  String operationFailed(Object e) {
    return 'Операцията не успя: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – съвети';
  }

  @override
  String get noDescription =>
      'Няма описание. Променете конфигурацията в настройките.';

  @override
  String get checkUpdateNotSupported =>
      'Това приложение не поддържа проверка за актуализации';

  @override
  String updateFailed(Object e) {
    return 'Актуализацията не успя: $e';
  }

  @override
  String get confirmUninstall => 'Потвърдете деинсталиране';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Сигурни ли сте, че искате да деинсталирате „$name“? Данните не могат да се възстановят след деинсталиране.';
  }

  @override
  String get uninstall => 'Деинсталиране';

  @override
  String get cannotUninstall => 'Не може да се деинсталира';

  @override
  String get uninstalled => 'Деинсталирано';

  @override
  String uninstallFailed(Object e) {
    return 'Деинсталирането не успя: $e';
  }

  @override
  String get cannotRestart => 'Не може да се рестартира';

  @override
  String get cannotClose => 'Не може да се затвори';

  @override
  String get running => 'Работи';

  @override
  String get open => 'Отвори';

  @override
  String get launchAndOpen => 'Стартирай и отвори';

  @override
  String get tips => 'Съвети';

  @override
  String get checkAndUpdate => 'Провери и актуализирай';

  @override
  String get close => 'Затвори';

  @override
  String get configureServerFirst =>
      'Първо конфигурирайте и активирайте сървър';

  @override
  String get loginFailed => 'Входът не успя';

  @override
  String get configureServer => 'Конфигуриране на сървър';

  @override
  String get username => 'Потребителско име';

  @override
  String get password => 'Парола';

  @override
  String get usernameRequired => 'Въведете потребителско име';

  @override
  String get passwordRequired => 'Въведете парола';

  @override
  String get passwordMinLength => 'Паролата трябва да е поне 5 знака';

  @override
  String get rememberCredentials => 'Запомни данните за вход';

  @override
  String get newFolder => 'Нова папка';

  @override
  String get newFile => 'Нов файл';

  @override
  String get folderName => 'Име на папка';

  @override
  String get fileName => 'Име на файл';

  @override
  String get create => 'Създай';

  @override
  String get folderCreated => 'Папката е създадена';

  @override
  String get fileCreated => 'Файлът е създаден';

  @override
  String createFailed(Object e) {
    return 'Създаването не успя: $e';
  }

  @override
  String get rename => 'Преименувай';

  @override
  String get renameFolder => 'Преименувай папка';

  @override
  String get renameFile => 'Преименувай файл';

  @override
  String get newName => 'Ново име';

  @override
  String get renameSuccess => 'Успешно преименувано';

  @override
  String renameFailed(Object e) {
    return 'Преименуването не успя: $e';
  }

  @override
  String get deleteFolder => 'Изтрий папка';

  @override
  String get deleteFile => 'Изтрий файл';

  @override
  String deleteConfirm(Object name) {
    return 'Изтриване на „$name“? Действието е необратимо.';
  }

  @override
  String get deleteSuccess => 'Успешно изтрито';

  @override
  String deleteFailed(Object e) {
    return 'Изтриването не успя: $e';
  }

  @override
  String get parentDirectory => 'Родителска папка';

  @override
  String get listView => 'Списъчен изглед';

  @override
  String get gridView => 'Решетъчен изглед';

  @override
  String get folderEmpty => 'Папката е празна';

  @override
  String openFile(Object name) {
    return 'Отвори файл: $name';
  }

  @override
  String get folder => 'Папка';

  @override
  String get file => 'Файл';

  @override
  String get download => 'Изтегли';

  @override
  String get downloadNotImplemented => 'Изтеглянето не е имплементирано';

  @override
  String get downloadSuccess => 'Успешно изтегляне';

  @override
  String get downloadCancelled => 'Изтеглянето е отменено';

  @override
  String get downloadPreparing => 'Подготовка за изтегляне...';

  @override
  String get downloadAndPlay => 'Изтегли и пусни';

  @override
  String get downloadingForPlayback => 'Изтегляне за възпроизвеждане...';

  @override
  String get fullscreen => 'Цял екран';

  @override
  String get installSuccess => 'Инсталацията успя';

  @override
  String installSuccessWithApp(Object title) {
    return '$title е инсталиран успешно';
  }

  @override
  String installFailed(Object e) {
    return 'Инсталацията не успя: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Неуспешно получаване на конфигурация: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Персонализирана инсталация: $title';
  }

  @override
  String get editComposeHint =>
      'Редактирайте docker-compose и докоснете инсталирай';

  @override
  String get install => 'Инсталирай';

  @override
  String get appStore => 'Магазин за приложения';

  @override
  String get searchApps => 'Търсене на приложения';

  @override
  String get category => 'Категория';

  @override
  String get allCategories => 'Всички категории';

  @override
  String get noAppsFound => 'Няма съвпадащи приложения';

  @override
  String get installed => 'Инсталирано';

  @override
  String get custom => 'По избор';

  @override
  String get appDetail => 'Подробности за приложението';

  @override
  String get appNotFound => 'Приложението не е намерено';

  @override
  String versionLabel(Object version) {
    return 'Версия: $version';
  }

  @override
  String get description => 'Описание';

  @override
  String get status => 'Статус';

  @override
  String get notRunning => 'Не работи';

  @override
  String get installStartNotImplemented =>
      'Инсталиране/стартиране не е имплементирано (изисква /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Деинсталиране не е имплементирано (изисква /v2/app_management/compose)';

  @override
  String get installStart => 'Инсталирай / Стартирай';

  @override
  String get legacyApps => 'Стари приложения (ще бъдат преизградени)';

  @override
  String get version => 'Версия';

  @override
  String get cpuUsage => 'Натоварване на CPU';

  @override
  String cores(Object count) {
    return 'Ядра: $count';
  }

  @override
  String get memory => 'Памет (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% използване';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Използвано $used / Общо $total';
  }

  @override
  String get storage => 'Съхранение';

  @override
  String totalLabel(Object storage) {
    return 'Общо $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Използвано $used · $percent%';
  }

  @override
  String get disk => 'Диск';

  @override
  String get networkStatus => 'Мрежа';

  @override
  String get addServer => 'Добави сървър';

  @override
  String get editServer => 'Редактирай сървър';

  @override
  String get nasType => 'Тип NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Име на сървър';

  @override
  String get serverNameRequired => 'Въведете име на сървър';

  @override
  String get hostAddress => 'Адрес на хост';

  @override
  String get hostAddressHint => '192.168.1.100 или casaos.local';

  @override
  String get hostAddressRequired => 'Въведете адрес на хост';

  @override
  String get port => 'Порт';

  @override
  String get portRequired => 'Въведете порт';

  @override
  String get portInvalid => 'Невалиден порт (1–65535)';

  @override
  String get useHttps => 'Използвай HTTPS';

  @override
  String get save => 'Запази';

  @override
  String get noServerConfigured => 'Все още няма конфигуриран сървър';

  @override
  String get activate => 'Активирай';

  @override
  String get edit => 'Редактирай';

  @override
  String get confirmDelete => 'Потвърди изтриване';

  @override
  String confirmDeleteServer(Object name) {
    return 'Изтриване на сървър „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Добре дошли в CasaOS / ZimaOS';

  @override
  String get createAccountHint =>
      'Първо нека създадем първоначалния ви акаунт.';

  @override
  String get createAccount => 'Създай акаунт';

  @override
  String get start => 'Старт →';

  @override
  String get confirmPassword => 'Потвърди парола';

  @override
  String get confirmPasswordRequired => 'Въведете паролата отново';

  @override
  String get passwordMismatch => 'Паролите не съвпадат';

  @override
  String get allDone => 'Готово!';

  @override
  String get accountCreatedHint =>
      'Акаунтът ви е създаден. Влезте в работния плот за CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Към работния плот';

  @override
  String get cannotGetInitKey =>
      'Не може да се получи init ключ. Проверете сървъра.';

  @override
  String initFailed(Object e) {
    return 'Инициализацията не успя: $e';
  }

  @override
  String get openAppWith => 'Отвори приложение с';

  @override
  String get builtinBrowser => 'Вграден браузър';

  @override
  String get systemBrowser => 'Системен браузър';

  @override
  String get openInSystemBrowser => 'Отвори в системния браузър';

  @override
  String get loading => 'Зареждане...';
}
