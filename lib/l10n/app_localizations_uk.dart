// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Клієнт CasaOS / ZimaOS';

  @override
  String get settings => 'Налаштування';

  @override
  String get about => 'Про застосунок';

  @override
  String get appearance => 'Оформлення';

  @override
  String get openSource => 'Відкритий код';

  @override
  String get tapToOpen => 'Торкніться, щоб відкрити в браузері';

  @override
  String get themeMode => 'Тема';

  @override
  String get followSystem => 'Як у системі';

  @override
  String get lightMode => 'Світла';

  @override
  String get darkMode => 'Темна';

  @override
  String get themeColor => 'Колір теми';

  @override
  String get themeColorDescription =>
      'Оберіть колір теми; діє для світлого та темного режиму.';

  @override
  String get language => 'Мова';

  @override
  String get languageFollowSystem => 'Як у системі';

  @override
  String get files => 'Файли';

  @override
  String get serverConfig => 'Сервер';

  @override
  String get refresh => 'Оновити';

  @override
  String get user => 'Користувач';

  @override
  String get login => 'Увійти';

  @override
  String get home => 'Головна';

  @override
  String get welcome => 'Ласкаво просимо';

  @override
  String get logout => 'Вийти';

  @override
  String get systemStatus => 'Стан системи';

  @override
  String get error => 'Помилка';

  @override
  String get apps => 'Застосунки';

  @override
  String appCount(Object count) {
    return 'Усього: $count';
  }

  @override
  String get noApps => 'Немає застосунків';

  @override
  String get cancel => 'Скасувати';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Повторити';

  @override
  String get back => 'Назад';

  @override
  String get delete => 'Видалити';

  @override
  String get cannotGetAppAddress => 'Не вдалося отримати адресу застосунку';

  @override
  String cannotOpen(Object url) {
    return 'Не вдалося відкрити: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Не вдалося відкрити: $e';
  }

  @override
  String get appTypeNotSupported => 'Цей тип застосунку не підтримує цю дію';

  @override
  String get starting => 'Запуск';

  @override
  String get restarting => 'Перезапуск';

  @override
  String get restart => 'Перезапустити';

  @override
  String get closed => 'Закрито';

  @override
  String operationFailed(Object e) {
    return 'Операція не вдалася: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — поради';
  }

  @override
  String get noDescription =>
      'Без опису. Змініть конфігурацію в налаштуваннях.';

  @override
  String get checkUpdateNotSupported =>
      'Цей застосунок не підтримує перевірку оновлень';

  @override
  String updateFailed(Object e) {
    return 'Оновлення не вдалося: $e';
  }

  @override
  String get confirmUninstall => 'Підтвердити деінсталяцію';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Деінсталювати «$name»? Після деінсталяції дані не відновити.';
  }

  @override
  String get uninstall => 'Деінсталювати';

  @override
  String get cannotUninstall => 'Не вдалося деінсталювати';

  @override
  String get uninstalled => 'Деінстальовано';

  @override
  String uninstallFailed(Object e) {
    return 'Деінсталяція не вдалася: $e';
  }

  @override
  String get cannotRestart => 'Не вдалося перезапустити';

  @override
  String get cannotClose => 'Не вдалося закрити';

  @override
  String get running => 'Працює';

  @override
  String get open => 'Відкрити';

  @override
  String get launchAndOpen => 'Запустити й відкрити';

  @override
  String get tips => 'Поради';

  @override
  String get checkAndUpdate => 'Перевірити й оновити';

  @override
  String get close => 'Закрити';

  @override
  String get configureServerFirst => 'Спочатку налаштуйте та активуйте сервер';

  @override
  String get loginFailed => 'Не вдалося увійти';

  @override
  String get configureServer => 'Налаштувати сервер';

  @override
  String get username => 'Ім’я користувача';

  @override
  String get password => 'Пароль';

  @override
  String get usernameRequired => 'Введіть ім’я користувача';

  @override
  String get passwordRequired => 'Введіть пароль';

  @override
  String get passwordMinLength => 'Пароль має містити щонайменше 5 символів';

  @override
  String get rememberCredentials => 'Запам’ятати облікові дані';

  @override
  String get newFolder => 'Нова папка';

  @override
  String get newFile => 'Новий файл';

  @override
  String get folderName => 'Назва папки';

  @override
  String get fileName => 'Назва файлу';

  @override
  String get create => 'Створити';

  @override
  String get folderCreated => 'Папку створено';

  @override
  String get fileCreated => 'Файл створено';

  @override
  String createFailed(Object e) {
    return 'Не вдалося створити: $e';
  }

  @override
  String get rename => 'Перейменувати';

  @override
  String get renameFolder => 'Перейменувати папку';

  @override
  String get renameFile => 'Перейменувати файл';

  @override
  String get newName => 'Нова назва';

  @override
  String get renameSuccess => 'Перейменовано';

  @override
  String renameFailed(Object e) {
    return 'Не вдалося перейменувати: $e';
  }

  @override
  String get deleteFolder => 'Видалити папку';

  @override
  String get deleteFile => 'Видалити файл';

  @override
  String deleteConfirm(Object name) {
    return 'Видалити «$name»? Цю дію не скасувати.';
  }

  @override
  String get deleteSuccess => 'Видалено';

  @override
  String deleteFailed(Object e) {
    return 'Не вдалося видалити: $e';
  }

  @override
  String get parentDirectory => 'Батьківська папка';

  @override
  String get listView => 'Список';

  @override
  String get gridView => 'Сітка';

  @override
  String get folderEmpty => 'Папка порожня';

  @override
  String openFile(Object name) {
    return 'Відкрити файл: $name';
  }

  @override
  String get folder => 'Папка';

  @override
  String get file => 'Файл';

  @override
  String get download => 'Завантажити';

  @override
  String get downloadNotImplemented => 'Завантаження не реалізовано';

  @override
  String get downloadSuccess => 'Завантажено';

  @override
  String get downloadCancelled => 'Завантаження скасовано';

  @override
  String get downloadPreparing => 'Підготовка до завантаження...';

  @override
  String get downloadAndPlay => 'Завантажити й відтворити';

  @override
  String get downloadingForPlayback => 'Завантаження для відтворення...';

  @override
  String get fullscreen => 'На весь екран';

  @override
  String get installSuccess => 'Установлено успішно';

  @override
  String installSuccessWithApp(Object title) {
    return '«$title» установлено';
  }

  @override
  String installFailed(Object e) {
    return 'Не вдалося встановити: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Не вдалося отримати конфігурацію: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Власне встановлення: $title';
  }

  @override
  String get editComposeHint =>
      'Відредагуйте docker-compose і натисніть установити';

  @override
  String get install => 'Встановити';

  @override
  String get appStore => 'Крамниця застосунків';

  @override
  String get searchApps => 'Пошук застосунків';

  @override
  String get category => 'Категорія';

  @override
  String get allCategories => 'Усі категорії';

  @override
  String get noAppsFound => 'Немає відповідних застосунків';

  @override
  String get installed => 'Встановлено';

  @override
  String get custom => 'Власний';

  @override
  String get appDetail => 'Про застосунок';

  @override
  String get appNotFound => 'Застосунок не знайдено';

  @override
  String versionLabel(Object version) {
    return 'Версія: $version';
  }

  @override
  String get description => 'Опис';

  @override
  String get status => 'Статус';

  @override
  String get notRunning => 'Не працює';

  @override
  String get installStartNotImplemented =>
      'Установлення/запуск не реалізовано (потрібно /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Деінсталяцію не реалізовано (потрібно /v2/app_management/compose)';

  @override
  String get installStart => 'Встановити / Запустити';

  @override
  String get legacyApps => 'Застарілі застосунки (буде перебудовано)';

  @override
  String get version => 'Версія';

  @override
  String get cpuUsage => 'Використання ЦП';

  @override
  String cores(Object count) {
    return 'Ядра: $count';
  }

  @override
  String get memory => 'Пам’ять (ОЗП)';

  @override
  String memoryUsage(Object percent) {
    return 'Використано $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Використано $used / Усього $total';
  }

  @override
  String get storage => 'Сховище';

  @override
  String totalLabel(Object storage) {
    return 'Усього $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Використано $used · $percent%';
  }

  @override
  String get disk => 'Диск';

  @override
  String get networkStatus => 'Мережа';

  @override
  String get addServer => 'Додати сервер';

  @override
  String get editServer => 'Змінити сервер';

  @override
  String get nasType => 'Тип NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Назва сервера';

  @override
  String get serverNameRequired => 'Введіть назву сервера';

  @override
  String get hostAddress => 'Адреса вузла';

  @override
  String get hostAddressHint => '192.168.1.100 або casaos.local';

  @override
  String get hostAddressRequired => 'Введіть адресу вузла';

  @override
  String get port => 'Порт';

  @override
  String get portRequired => 'Введіть порт';

  @override
  String get portInvalid => 'Некоректний порт (1–65535)';

  @override
  String get useHttps => 'Використовувати HTTPS';

  @override
  String get save => 'Зберегти';

  @override
  String get noServerConfigured => 'Сервер ще не налаштовано';

  @override
  String get activate => 'Активувати';

  @override
  String get edit => 'Змінити';

  @override
  String get confirmDelete => 'Підтвердити видалення';

  @override
  String confirmDeleteServer(Object name) {
    return 'Видалити сервер «$name»?';
  }

  @override
  String get welcomeToCasaOS => 'Ласкаво просимо до CasaOS / ZimaOS';

  @override
  String get createAccountHint =>
      'Спочатку створімо ваш початковий обліковий запис.';

  @override
  String get createAccount => 'Створити обліковий запис';

  @override
  String get start => 'Почати →';

  @override
  String get confirmPassword => 'Підтвердити пароль';

  @override
  String get confirmPasswordRequired => 'Введіть пароль ще раз';

  @override
  String get passwordMismatch => 'Паролі не збігаються';

  @override
  String get allDone => 'Готово!';

  @override
  String get accountCreatedHint =>
      'Обліковий запис створено. Перейдіть на робочий стіл CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'На робочий стіл';

  @override
  String get cannotGetInitKey =>
      'Не вдалося отримати ключ ініціалізації. Перевірте сервер.';

  @override
  String initFailed(Object e) {
    return 'Ініціалізація не вдалася: $e';
  }

  @override
  String get openAppWith => 'Відкрити застосунок у';

  @override
  String get builtinBrowser => 'Вбудований браузер';

  @override
  String get systemBrowser => 'Системний браузер';

  @override
  String get openInSystemBrowser => 'Відкрити в системному браузері';

  @override
  String get loading => 'Завантаження...';
}
