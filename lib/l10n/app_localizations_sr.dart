// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS клијент';

  @override
  String get settings => 'Подешавања';

  @override
  String get about => 'О програму';

  @override
  String get appearance => 'Изглед';

  @override
  String get openSource => 'Отворени код';

  @override
  String get tapToOpen => 'Додирните да отворите у прегледачу';

  @override
  String get themeMode => 'Тема';

  @override
  String get followSystem => 'Као систем';

  @override
  String get lightMode => 'Светла';

  @override
  String get darkMode => 'Тамна';

  @override
  String get themeColor => 'Боја теме';

  @override
  String get themeColorDescription =>
      'Изаберите боју теме; важи за светли и тамни режим.';

  @override
  String get language => 'Језик';

  @override
  String get languageFollowSystem => 'Као систем';

  @override
  String get files => 'Датотеке';

  @override
  String get serverConfig => 'Сервер';

  @override
  String get refresh => 'Освежи';

  @override
  String get user => 'Корисник';

  @override
  String get login => 'Пријава';

  @override
  String get home => 'Почетна';

  @override
  String get welcome => 'Добродошли';

  @override
  String get logout => 'Одјава';

  @override
  String get systemStatus => 'Статус система';

  @override
  String get error => 'Грешка';

  @override
  String get apps => 'Апликације';

  @override
  String appCount(Object count) {
    return 'Укупно $count';
  }

  @override
  String get noApps => 'Нема апликација';

  @override
  String get cancel => 'Откажи';

  @override
  String get ok => 'У реду';

  @override
  String get retry => 'Покушај поново';

  @override
  String get back => 'Назад';

  @override
  String get delete => 'Обриши';

  @override
  String get cannotGetAppAddress => 'Није могуће добити адресу апликације';

  @override
  String cannotOpen(Object url) {
    return 'Није могуће отворити: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Отварање није успело: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Ова врста апликације не подржава ову операцију';

  @override
  String get starting => 'Покреће се';

  @override
  String get restarting => 'Поновно покретање';

  @override
  String get restart => 'Поново покрени';

  @override
  String get closed => 'Затворено';

  @override
  String operationFailed(Object e) {
    return 'Операција није успела: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – савети';
  }

  @override
  String get noDescription => 'Нема описа. Промените подешавања у поставкама.';

  @override
  String get checkUpdateNotSupported =>
      'Ова апликација не подржава проверу ажурирања';

  @override
  String updateFailed(Object e) {
    return 'Ажурирање није успело: $e';
  }

  @override
  String get confirmUninstall => 'Потврди деинсталацију';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Да ли сте сигурни да желите да деинсталирате „$name“? Податци се не могу опоравити.';
  }

  @override
  String get uninstall => 'Деинсталирај';

  @override
  String get cannotUninstall => 'Није могуће деинсталирати';

  @override
  String get uninstalled => 'Деинсталирано';

  @override
  String uninstallFailed(Object e) {
    return 'Деинсталација није успела: $e';
  }

  @override
  String get cannotRestart => 'Није могуће поново покренути';

  @override
  String get cannotClose => 'Није могуће затворити';

  @override
  String get running => 'Ради';

  @override
  String get open => 'Отвори';

  @override
  String get launchAndOpen => 'Покрени и отвори';

  @override
  String get tips => 'Савети';

  @override
  String get checkAndUpdate => 'Провери и ажурирај';

  @override
  String get close => 'Затвори';

  @override
  String get configureServerFirst => 'Прво подесите и активирајте сервер';

  @override
  String get loginFailed => 'Пријава није успела';

  @override
  String get configureServer => 'Подеси сервер';

  @override
  String get username => 'Корисничко име';

  @override
  String get password => 'Лозинка';

  @override
  String get usernameRequired => 'Унесите корисничко име';

  @override
  String get passwordRequired => 'Унесите лозинку';

  @override
  String get passwordMinLength => 'Лозинка мора имати најмање 5 знакова';

  @override
  String get rememberCredentials => 'Запамти податке за пријаву';

  @override
  String get newFolder => 'Нови фолдер';

  @override
  String get newFile => 'Нова датотека';

  @override
  String get folderName => 'Име фолдера';

  @override
  String get fileName => 'Име датотеке';

  @override
  String get create => 'Направи';

  @override
  String get folderCreated => 'Фолдер је направљен';

  @override
  String get fileCreated => 'Датотека је направљена';

  @override
  String createFailed(Object e) {
    return 'Прављење није успело: $e';
  }

  @override
  String get rename => 'Преименуј';

  @override
  String get renameFolder => 'Преименуј фолдер';

  @override
  String get renameFile => 'Преименуј датотеку';

  @override
  String get newName => 'Ново име';

  @override
  String get renameSuccess => 'Успешно преименовано';

  @override
  String renameFailed(Object e) {
    return 'Преименовање није успело: $e';
  }

  @override
  String get deleteFolder => 'Обриши фолдер';

  @override
  String get deleteFile => 'Обриши датотеку';

  @override
  String deleteConfirm(Object name) {
    return 'Обрисати „$name“? Ова радња се не може поништити.';
  }

  @override
  String get deleteSuccess => 'Обрисано';

  @override
  String deleteFailed(Object e) {
    return 'Брисање није успело: $e';
  }

  @override
  String get parentDirectory => 'Надређени фолдер';

  @override
  String get listView => 'Приказ листе';

  @override
  String get gridView => 'Приказ мреже';

  @override
  String get folderEmpty => 'Фолдер је празан';

  @override
  String openFile(Object name) {
    return 'Отвори датотеку: $name';
  }

  @override
  String get folder => 'Фолдер';

  @override
  String get file => 'Датотека';

  @override
  String get download => 'Преузми';

  @override
  String get downloadNotImplemented => 'Преузимање није имплементирано';

  @override
  String get downloadSuccess => 'Преузимање успешно';

  @override
  String get downloadCancelled => 'Преузимање отказано';

  @override
  String get downloadPreparing => 'Припрема преузимања...';

  @override
  String get downloadAndPlay => 'Преузми и пусти';

  @override
  String get downloadingForPlayback => 'Преузимање за репродукцију...';

  @override
  String get fullscreen => 'Цео екран';

  @override
  String get installSuccess => 'Инсталација успешна';

  @override
  String installSuccessWithApp(Object title) {
    return '$title је успешно инсталиран';
  }

  @override
  String installFailed(Object e) {
    return 'Инсталација није успела: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Није успело преузимање конфигурације: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Прилагођена инсталација: $title';
  }

  @override
  String get editComposeHint => 'Уредите docker-compose и додирните инсталирај';

  @override
  String get install => 'Инсталирај';

  @override
  String get appStore => 'Продавница апликација';

  @override
  String get searchApps => 'Претражи апликације';

  @override
  String get category => 'Категорија';

  @override
  String get allCategories => 'Све категорије';

  @override
  String get noAppsFound => 'Нема одговарајућих апликација';

  @override
  String get installed => 'Инсталирано';

  @override
  String get custom => 'Прилагођено';

  @override
  String get appDetail => 'Детаљи апликације';

  @override
  String get appNotFound => 'Апликација није пронађена';

  @override
  String versionLabel(Object version) {
    return 'Верзија: $version';
  }

  @override
  String get description => 'Опис';

  @override
  String get status => 'Статус';

  @override
  String get notRunning => 'Не ради';

  @override
  String get installStartNotImplemented =>
      'Инсталација/покретање није имплементирано (потребно /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Деинсталација није имплементирана (потребно /v2/app_management/compose)';

  @override
  String get installStart => 'Инсталирај / Покрени';

  @override
  String get legacyApps => 'Старе апликације (биће обновљене)';

  @override
  String get version => 'Верзија';

  @override
  String get cpuUsage => 'Коришћење CPU';

  @override
  String cores(Object count) {
    return 'Језгра: $count';
  }

  @override
  String get memory => 'Меморија (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% коришћења';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Коришћено $used / Укупно $total';
  }

  @override
  String get storage => 'Складиште';

  @override
  String totalLabel(Object storage) {
    return 'Укупно $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Коришћено $used · $percent%';
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
  String get nasType => 'Тип NAS-а';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Име сервера';

  @override
  String get serverNameRequired => 'Унесите име сервера';

  @override
  String get hostAddress => 'Адреса домаћина';

  @override
  String get hostAddressHint => '192.168.1.100 или casaos.local';

  @override
  String get hostAddressRequired => 'Унесите адресу домаћина';

  @override
  String get port => 'Порт';

  @override
  String get portRequired => 'Унесите порт';

  @override
  String get portInvalid => 'Неважећи порт (1–65535)';

  @override
  String get useHttps => 'Користи HTTPS';

  @override
  String get save => 'Сачувај';

  @override
  String get noServerConfigured => 'Сервер још није подешен';

  @override
  String get activate => 'Активирај';

  @override
  String get edit => 'Уреди';

  @override
  String get confirmDelete => 'Потврди брисање';

  @override
  String confirmDeleteServer(Object name) {
    return 'Обрисати сервер „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Добродошли у CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Прво направимо ваш почетни налог.';

  @override
  String get createAccount => 'Направи налог';

  @override
  String get start => 'Почни →';

  @override
  String get confirmPassword => 'Потврди лозинку';

  @override
  String get confirmPasswordRequired => 'Унесите лозинку поново';

  @override
  String get passwordMismatch => 'Лозинке се не поклапају';

  @override
  String get allDone => 'Готово!';

  @override
  String get accountCreatedHint =>
      'Налог је направљен. Уђите на радну површ за CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'На радну површ';

  @override
  String get cannotGetInitKey =>
      'Није могуће добити init кључ. Проверите сервер.';

  @override
  String initFailed(Object e) {
    return 'Иницијализација није успела: $e';
  }

  @override
  String get openAppWith => 'Отвори апликацију помоћу';

  @override
  String get builtinBrowser => 'Уграђени прегледач';

  @override
  String get systemBrowser => 'Системски прегледач';

  @override
  String get openInSystemBrowser => 'Отвори у системском прегледачу';

  @override
  String get loading => 'Учитавање...';
}
