// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Belarusian (`be`).
class AppLocalizationsBe extends AppLocalizations {
  AppLocalizationsBe([String locale = 'be']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Кліент CasaOS / ZimaOS';

  @override
  String get settings => 'Налады';

  @override
  String get about => 'Пра праграму';

  @override
  String get appearance => 'Выгляд';

  @override
  String get openSource => 'Адкрыты зыходны код';

  @override
  String get tapToOpen => 'Націсніце, каб адкрыць у браўзеры';

  @override
  String get themeMode => 'Рэжым тэмы';

  @override
  String get followSystem => 'Як у сістэме';

  @override
  String get lightMode => 'Светлы рэжым';

  @override
  String get darkMode => 'Цёмны рэжым';

  @override
  String get themeColor => 'Колер тэмы';

  @override
  String get themeColorDescription =>
      'Выберыце колер тэмы; ужываецца ў светлым і цёмным рэжыме.';

  @override
  String get language => 'Мова';

  @override
  String get languageFollowSystem => 'Як у сістэме';

  @override
  String get files => 'Файлы';

  @override
  String get serverConfig => 'Налады сервера';

  @override
  String get refresh => 'Абнавіць';

  @override
  String get user => 'Карыстальнік';

  @override
  String get login => 'Уваход';

  @override
  String get home => 'Галоўная';

  @override
  String get welcome => 'Вітаем';

  @override
  String get logout => 'Выйсці';

  @override
  String get systemStatus => 'Стан сістэмы';

  @override
  String get error => 'Памылка';

  @override
  String get apps => 'Праграмы';

  @override
  String appCount(Object count) {
    return 'Усяго $count';
  }

  @override
  String get noApps => 'Няма праграм';

  @override
  String get cancel => 'Скасаваць';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Паўтарыць';

  @override
  String get back => 'Назад';

  @override
  String get delete => 'Выдаліць';

  @override
  String get cannotGetAppAddress => 'Не ўдалося атрымаць адрас праграмы';

  @override
  String cannotOpen(Object url) {
    return 'Немагчыма адкрыць: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Не ўдалося адкрыць: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Гэты тып праграмы не падтрымлівае гэта дзеянне';

  @override
  String get starting => 'Запуск';

  @override
  String get restarting => 'Перазапуск';

  @override
  String get restart => 'Перазапусціць';

  @override
  String get closed => 'Закрыта';

  @override
  String operationFailed(Object e) {
    return 'Дзеянне не ўдалося: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — парады';
  }

  @override
  String get noDescription => 'Апісання няма. Змяніце канфігурацыю ў наладах.';

  @override
  String get checkUpdateNotSupported =>
      'Гэта праграма не падтрымлівае праверку абнаўленняў';

  @override
  String updateFailed(Object e) {
    return 'Абнаўленне не ўдалося: $e';
  }

  @override
  String get confirmUninstall => 'Пацвердзіце выдаленне';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Вы сапраўды хочаце выдаліць «$name»? Даныя пасля выдалення не аднавяць.';
  }

  @override
  String get uninstall => 'Выдаліць';

  @override
  String get cannotUninstall => 'Немагчыма выдаліць';

  @override
  String get uninstalled => 'Выдалена';

  @override
  String uninstallFailed(Object e) {
    return 'Выдаленне не ўдалося: $e';
  }

  @override
  String get cannotRestart => 'Немагчыма перазапусціць';

  @override
  String get cannotClose => 'Немагчыма закрыць';

  @override
  String get running => 'Працуе';

  @override
  String get open => 'Адкрыць';

  @override
  String get launchAndOpen => 'Запусціць і адкрыць';

  @override
  String get tips => 'Парады';

  @override
  String get checkAndUpdate => 'Праверыць і абнавіць';

  @override
  String get close => 'Закрыць';

  @override
  String get configureServerFirst => 'Спачатку наладзьце і актывуйце сервер';

  @override
  String get loginFailed => 'Уваход не ўдаўся';

  @override
  String get configureServer => 'Наладзіць сервер';

  @override
  String get username => 'Імя карыстальніка';

  @override
  String get password => 'Пароль';

  @override
  String get usernameRequired => 'Увядзіце імя карыстальніка';

  @override
  String get passwordRequired => 'Увядзіце пароль';

  @override
  String get passwordMinLength => 'Пароль павінен быць не менш за 5 сімвалаў';

  @override
  String get rememberCredentials => 'Запомніць даныя';

  @override
  String get newFolder => 'Новая папка';

  @override
  String get newFile => 'Новы файл';

  @override
  String get folderName => 'Назва папкі';

  @override
  String get fileName => 'Назва файла';

  @override
  String get create => 'Стварыць';

  @override
  String get folderCreated => 'Папка створана';

  @override
  String get fileCreated => 'Файл створаны';

  @override
  String createFailed(Object e) {
    return 'Стварэнне не ўдалося: $e';
  }

  @override
  String get rename => 'Перайменаваць';

  @override
  String get renameFolder => 'Перайменаваць папку';

  @override
  String get renameFile => 'Перайменаваць файл';

  @override
  String get newName => 'Новая назва';

  @override
  String get renameSuccess => 'Перайменавана';

  @override
  String renameFailed(Object e) {
    return 'Перайменаванне не ўдалося: $e';
  }

  @override
  String get deleteFolder => 'Выдаліць папку';

  @override
  String get deleteFile => 'Выдаліць файл';

  @override
  String deleteConfirm(Object name) {
    return 'Выдаліць «$name»? Гэта дзеянне немагчыма адмяніць.';
  }

  @override
  String get deleteSuccess => 'Выдалена';

  @override
  String deleteFailed(Object e) {
    return 'Выдаленне не ўдалося: $e';
  }

  @override
  String get parentDirectory => 'Бацькоўскі каталог';

  @override
  String get listView => 'Спіс';

  @override
  String get gridView => 'Сетка';

  @override
  String get folderEmpty => 'Папка пустая';

  @override
  String openFile(Object name) {
    return 'Адкрыць файл: $name';
  }

  @override
  String get folder => 'Папка';

  @override
  String get file => 'Файл';

  @override
  String get download => 'Спампаваць';

  @override
  String get downloadNotImplemented => 'Спампоўванне не рэалізавана';

  @override
  String get downloadSuccess => 'Спампавана';

  @override
  String get downloadCancelled => 'Спампоўванне скасавана';

  @override
  String get downloadPreparing => 'Падрыхтоўка спампоўкі…';

  @override
  String get downloadAndPlay => 'Спампаваць і прайграць';

  @override
  String get downloadingForPlayback => 'Спампоўка для прайгравання…';

  @override
  String get fullscreen => 'Поўнаэкранны рэжым';

  @override
  String get installSuccess => 'Усталяванне паспяховае';

  @override
  String installSuccessWithApp(Object title) {
    return '«$title» усталявана';
  }

  @override
  String installFailed(Object e) {
    return 'Усталяванне не ўдалося: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Не ўдалося атрымаць канфігурацыю праграмы: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Адмысловае ўсталяванне: $title';
  }

  @override
  String get editComposeHint =>
      'Адрэдагуйце docker-compose і націсніце ўсталяваць';

  @override
  String get install => 'Усталяваць';

  @override
  String get appStore => 'Крама праграм';

  @override
  String get searchApps => 'Пошук праграм';

  @override
  String get category => 'Катэгорыя';

  @override
  String get allCategories => 'Усе катэгорыі';

  @override
  String get noAppsFound => 'Праграм не знойдзена';

  @override
  String get installed => 'Усталявана';

  @override
  String get custom => 'Адмысловае';

  @override
  String get appDetail => 'Падрабязнасці праграмы';

  @override
  String get appNotFound => 'Праграма не знойдзена';

  @override
  String versionLabel(Object version) {
    return 'Версія: $version';
  }

  @override
  String get description => 'Апісанне';

  @override
  String get status => 'Статус';

  @override
  String get notRunning => 'Не запушчана';

  @override
  String get installStartNotImplemented =>
      'Усталяванне/запуск не рэалізаваны (патрэбна /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Выдаленне не рэалізавана (патрэбна /v2/app_management/compose)';

  @override
  String get installStart => 'Усталяваць / Запусціць';

  @override
  String get legacyApps => 'Старыя праграмы (будуць перабудаваны)';

  @override
  String get version => 'Версія';

  @override
  String get cpuUsage => 'Выкарыстанне CPU';

  @override
  String cores(Object count) {
    return 'Ядры: $count';
  }

  @override
  String get memory => 'Памяць (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% выкарыстана';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Выкарыстана $used / Усяго $total';
  }

  @override
  String get storage => 'Сховішча';

  @override
  String totalLabel(Object storage) {
    return 'Усяго $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Выкарыстана $used · $percent%';
  }

  @override
  String get disk => 'Дыск';

  @override
  String get networkStatus => 'Сетка';

  @override
  String get addServer => 'Дадаць сервер';

  @override
  String get editServer => 'Рэдагаваць сервер';

  @override
  String get nasType => 'Тып NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Назва сервера';

  @override
  String get serverNameRequired => 'Увядзіце назву сервера';

  @override
  String get hostAddress => 'Адрас хаста';

  @override
  String get hostAddressHint => '192.168.1.100 або casaos.local';

  @override
  String get hostAddressRequired => 'Увядзіце адрас хаста';

  @override
  String get port => 'Порт';

  @override
  String get portRequired => 'Увядзіце порт';

  @override
  String get portInvalid => 'Увядзіце карэктны порт (1–65535)';

  @override
  String get useHttps => 'Выкарыстоўваць HTTPS';

  @override
  String get save => 'Захаваць';

  @override
  String get noServerConfigured => 'Сервер пакуль не наладжаны';

  @override
  String get activate => 'Актываваць';

  @override
  String get edit => 'Рэдагаваць';

  @override
  String get confirmDelete => 'Пацвердзіце выдаленне';

  @override
  String confirmDeleteServer(Object name) {
    return 'Выдаліць сервер «$name»?';
  }

  @override
  String get welcomeToCasaOS => 'Вітаем у CasaOS / ZimaOS';

  @override
  String get createAccountHint =>
      'Спачатку стварым ваш першапачатковы ўліковы запіс.';

  @override
  String get createAccount => 'Стварыць уліковы запіс';

  @override
  String get start => 'Пачаць →';

  @override
  String get confirmPassword => 'Пацвердзіце пароль';

  @override
  String get confirmPasswordRequired => 'Увядзіце пароль яшчэ раз';

  @override
  String get passwordMismatch => 'Паролі не супадаюць';

  @override
  String get allDone => 'Гатова!';

  @override
  String get accountCreatedHint =>
      'Уліковы запіс створаны. Увайдзіце на працоўны стол CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'На працоўны стол';

  @override
  String get cannotGetInitKey =>
      'Не ўдалося атрымаць ключ ініцыялізацыі. Праверце сервер.';

  @override
  String initFailed(Object e) {
    return 'Ініцыялізацыя не ўдалася: $e';
  }

  @override
  String get openAppWith => 'Адкрыць праграму ў';

  @override
  String get builtinBrowser => 'Убудаваны браўзер';

  @override
  String get systemBrowser => 'Сістэмны браўзер';

  @override
  String get openInSystemBrowser => 'Адкрыць у сістэмным браўзеры';

  @override
  String get loading => 'Загрузка…';
}
