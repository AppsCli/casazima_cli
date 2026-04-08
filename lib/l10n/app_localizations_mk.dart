// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Macedonian (`mk`).
class AppLocalizationsMk extends AppLocalizations {
  AppLocalizationsMk([String locale = 'mk']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Клиент за CasaOS / ZimaOS';

  @override
  String get settings => 'Поставки';

  @override
  String get about => 'За апликацијата';

  @override
  String get appearance => 'Изглед';

  @override
  String get openSource => 'Отворен код';

  @override
  String get tapToOpen => 'Допрете за да отворите во прелистувач';

  @override
  String get themeMode => 'Режим на тема';

  @override
  String get followSystem => 'Според системот';

  @override
  String get lightMode => 'Светла';

  @override
  String get darkMode => 'Темна';

  @override
  String get themeColor => 'Боја на тема';

  @override
  String get themeColorDescription =>
      'Изберете боја на тема; важи за светлиот и темниот режим.';

  @override
  String get language => 'Јазик';

  @override
  String get languageFollowSystem => 'Според системот';

  @override
  String get files => 'Датотеки';

  @override
  String get serverConfig => 'Сервер';

  @override
  String get refresh => 'Освежи';

  @override
  String get user => 'Корисник';

  @override
  String get login => 'Најава';

  @override
  String get home => 'Почетна';

  @override
  String get welcome => 'Добредојдовте';

  @override
  String get logout => 'Одјава';

  @override
  String get systemStatus => 'Статус на системот';

  @override
  String get error => 'Грешка';

  @override
  String get apps => 'Апликации';

  @override
  String appCount(Object count) {
    return 'Вкупно $count';
  }

  @override
  String get noApps => 'Нема апликации';

  @override
  String get cancel => 'Откажи';

  @override
  String get ok => 'ОК';

  @override
  String get retry => 'Обиди се повторно';

  @override
  String get back => 'Назад';

  @override
  String get delete => 'Избриши';

  @override
  String get cannotGetAppAddress =>
      'Не може да се добие адресата на апликацијата';

  @override
  String cannotOpen(Object url) {
    return 'Не може да се отвори: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Отворањето не успеа: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Овој тип апликација не ја поддржува оваа операција';

  @override
  String get starting => 'Се стартува';

  @override
  String get restarting => 'Се рестартира';

  @override
  String get restart => 'Рестартирај';

  @override
  String get closed => 'Затворено';

  @override
  String operationFailed(Object e) {
    return 'Операцијата не успеа: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — совети';
  }

  @override
  String get noDescription =>
      'Нема опис. Изменете ја конфигурацијата во поставките.';

  @override
  String get checkUpdateNotSupported =>
      'Оваа апликација не поддржува проверка на ажурирања';

  @override
  String updateFailed(Object e) {
    return 'Ажурирањето не успеа: $e';
  }

  @override
  String get confirmUninstall => 'Потврдете деинсталација';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Да се деинсталира „$name“? Податоците не можат да се вратат.';
  }

  @override
  String get uninstall => 'Деинсталирај';

  @override
  String get cannotUninstall => 'Не може да се деинсталира';

  @override
  String get uninstalled => 'Деинсталирано';

  @override
  String uninstallFailed(Object e) {
    return 'Деинсталацијата не успеа: $e';
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
  String get launchAndOpen => 'Стартувај и отвори';

  @override
  String get tips => 'Совети';

  @override
  String get checkAndUpdate => 'Провери и ажурирај';

  @override
  String get close => 'Затвори';

  @override
  String get configureServerFirst => 'Прво конфигурирајте и активирајте сервер';

  @override
  String get loginFailed => 'Најавата не успеа';

  @override
  String get configureServer => 'Конфигурирај сервер';

  @override
  String get username => 'Корисничко име';

  @override
  String get password => 'Лозинка';

  @override
  String get usernameRequired => 'Внесете корисничко име';

  @override
  String get passwordRequired => 'Внесете лозинка';

  @override
  String get passwordMinLength => 'Лозинката мора да има најмалку 5 знаци';

  @override
  String get rememberCredentials => 'Запомни ги податоците';

  @override
  String get newFolder => 'Нова папка';

  @override
  String get newFile => 'Нова датотека';

  @override
  String get folderName => 'Име на папка';

  @override
  String get fileName => 'Име на датотека';

  @override
  String get create => 'Креирај';

  @override
  String get folderCreated => 'Папката е креирана';

  @override
  String get fileCreated => 'Датотеката е креирана';

  @override
  String createFailed(Object e) {
    return 'Креирањето не успеа: $e';
  }

  @override
  String get rename => 'Преименувај';

  @override
  String get renameFolder => 'Преименувај папка';

  @override
  String get renameFile => 'Преименувај датотека';

  @override
  String get newName => 'Ново име';

  @override
  String get renameSuccess => 'Успешно преименувано';

  @override
  String renameFailed(Object e) {
    return 'Преименувањето не успеа: $e';
  }

  @override
  String get deleteFolder => 'Избриши папка';

  @override
  String get deleteFile => 'Избриши датотека';

  @override
  String deleteConfirm(Object name) {
    return 'Да се избрише „$name“? Ова не може да се врати.';
  }

  @override
  String get deleteSuccess => 'Избришано';

  @override
  String deleteFailed(Object e) {
    return 'Бришењето не успеа: $e';
  }

  @override
  String get parentDirectory => 'Родителска папка';

  @override
  String get listView => 'Список';

  @override
  String get gridView => 'Мрежа';

  @override
  String get folderEmpty => 'Папката е празна';

  @override
  String openFile(Object name) {
    return 'Отвори датотека: $name';
  }

  @override
  String get folder => 'Папка';

  @override
  String get file => 'Датотека';

  @override
  String get download => 'Преземи';

  @override
  String get downloadNotImplemented => 'Преземањето не е имплементирано';

  @override
  String get downloadSuccess => 'Преземањето успеа';

  @override
  String get downloadCancelled => 'Преземањето е откажано';

  @override
  String get downloadPreparing => 'Се подготвува преземање…';

  @override
  String get downloadAndPlay => 'Преземи и пушти';

  @override
  String get downloadingForPlayback => 'Се презема за репродукција…';

  @override
  String get fullscreen => 'Цел екран';

  @override
  String get installSuccess => 'Инсталацијата успеа';

  @override
  String installSuccessWithApp(Object title) {
    return '„$title“ е инсталирана';
  }

  @override
  String installFailed(Object e) {
    return 'Инсталацијата не успеа: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Не може да се земе конфигурацијата на апликацијата: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Прилагодена инсталација: $title';
  }

  @override
  String get editComposeHint => 'Уредете docker-compose и допрете инсталирај';

  @override
  String get install => 'Инсталирај';

  @override
  String get appStore => 'Продавница за апликации';

  @override
  String get searchApps => 'Пребарај апликации';

  @override
  String get category => 'Категорија';

  @override
  String get allCategories => 'Сите категории';

  @override
  String get noAppsFound => 'Нема совпаѓачки апликации';

  @override
  String get installed => 'Инсталирано';

  @override
  String get custom => 'Прилагодено';

  @override
  String get appDetail => 'Детали за апликацијата';

  @override
  String get appNotFound => 'Апликацијата не е пронајдена';

  @override
  String versionLabel(Object version) {
    return 'Верзија: $version';
  }

  @override
  String get description => 'Опис';

  @override
  String get status => 'Статус';

  @override
  String get notRunning => 'Не работи';

  @override
  String get installStartNotImplemented =>
      'Инсталирање/стартување не е имплементирано (потребно /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Деинсталација не е имплементирана (потребно /v2/app_management/compose)';

  @override
  String get installStart => 'Инсталирај / Стартувај';

  @override
  String get legacyApps => 'Застарени апликации (ќе се обноват)';

  @override
  String get version => 'Верзија';

  @override
  String get cpuUsage => 'Користење на CPU';

  @override
  String cores(Object count) {
    return 'Јадра: $count';
  }

  @override
  String get memory => 'Меморија (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% искористеност';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Користено $used / Вкупно $total';
  }

  @override
  String get storage => 'Складиште';

  @override
  String totalLabel(Object storage) {
    return 'Вкупно $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Користено $used · $percent%';
  }

  @override
  String get disk => 'Диск';

  @override
  String get networkStatus => 'Мрежа';

  @override
  String get addServer => 'Додај сервер';

  @override
  String get editServer => 'Уреди сервер';

  @override
  String get nasType => 'Тип на NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Име на сервер';

  @override
  String get serverNameRequired => 'Внесете име на сервер';

  @override
  String get hostAddress => 'Адреса на домаќин';

  @override
  String get hostAddressHint => '192.168.1.100 или casaos.local';

  @override
  String get hostAddressRequired => 'Внесете адреса на домаќин';

  @override
  String get port => 'Порта';

  @override
  String get portRequired => 'Внесете порта';

  @override
  String get portInvalid => 'Внесете валидна порта (1-65535)';

  @override
  String get useHttps => 'Користи HTTPS';

  @override
  String get save => 'Зачувај';

  @override
  String get noServerConfigured => 'Сè уште нема конфигуриран сервер';

  @override
  String get activate => 'Активирај';

  @override
  String get edit => 'Уреди';

  @override
  String get confirmDelete => 'Потврдете бришење';

  @override
  String confirmDeleteServer(Object name) {
    return 'Да се избрише серверот „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Добредојдовте во CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Прво да го креираме вашиот почетен профил.';

  @override
  String get createAccount => 'Креирај профил';

  @override
  String get start => 'Почни →';

  @override
  String get confirmPassword => 'Потврди лозинка';

  @override
  String get confirmPasswordRequired => 'Внесете ја лозинката повторно';

  @override
  String get passwordMismatch => 'Лозинките не се совпаѓаат';

  @override
  String get allDone => 'Готово!';

  @override
  String get accountCreatedHint =>
      'Профилот е креиран. Влезете на работната површина за CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'На работна површина';

  @override
  String get cannotGetInitKey =>
      'Не може да се добие клучот за иницијализација. Проверете го серверот.';

  @override
  String initFailed(Object e) {
    return 'Иницијализацијата не успеа: $e';
  }

  @override
  String get openAppWith => 'Отвори апликација со';

  @override
  String get builtinBrowser => 'Вграден прелистувач';

  @override
  String get systemBrowser => 'Системски прелистувач';

  @override
  String get openInSystemBrowser => 'Отвори во системски прелистувач';

  @override
  String get loading => 'Се вчитува…';
}
