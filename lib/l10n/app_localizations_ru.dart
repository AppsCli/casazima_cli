// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Клиент CasaOS / ZimaOS';

  @override
  String get settings => 'Настройки';

  @override
  String get about => 'О приложении';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get openSource => 'Открытый исходный код';

  @override
  String get tapToOpen => 'Нажмите, чтобы открыть в браузере';

  @override
  String get themeMode => 'Режим темы';

  @override
  String get followSystem => 'Как в системе';

  @override
  String get lightMode => 'Светлая тема';

  @override
  String get darkMode => 'Тёмная тема';

  @override
  String get themeColor => 'Цвет темы';

  @override
  String get themeColorDescription =>
      'Выберите цвет темы; применяется к светлой и тёмной теме.';

  @override
  String get language => 'Язык';

  @override
  String get languageFollowSystem => 'Как в системе';

  @override
  String get files => 'Файлы';

  @override
  String get serverConfig => 'Сервер';

  @override
  String get refresh => 'Обновить';

  @override
  String get user => 'Пользователь';

  @override
  String get login => 'Вход';

  @override
  String get home => 'Главная';

  @override
  String get welcome => 'Добро пожаловать';

  @override
  String get logout => 'Выйти';

  @override
  String get systemStatus => 'Состояние системы';

  @override
  String get error => 'Ошибка';

  @override
  String get apps => 'Приложения';

  @override
  String appCount(Object count) {
    return 'Всего $count';
  }

  @override
  String get noApps => 'Нет приложений';

  @override
  String get cancel => 'Отмена';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Повторить';

  @override
  String get back => 'Назад';

  @override
  String get delete => 'Удалить';

  @override
  String get cannotGetAppAddress => 'Не удалось получить адрес приложения';

  @override
  String cannotOpen(Object url) {
    return 'Не удалось открыть: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Ошибка открытия: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Этот тип приложения не поддерживает это действие';

  @override
  String get starting => 'Запуск';

  @override
  String get restarting => 'Перезапуск';

  @override
  String get restart => 'Перезапустить';

  @override
  String get closed => 'Закрыто';

  @override
  String operationFailed(Object e) {
    return 'Операция не выполнена: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — подсказки';
  }

  @override
  String get noDescription =>
      'Описания нет. Измените конфигурацию в настройках.';

  @override
  String get checkUpdateNotSupported =>
      'Это приложение не поддерживает проверку обновлений';

  @override
  String updateFailed(Object e) {
    return 'Ошибка обновления: $e';
  }

  @override
  String get confirmUninstall => 'Подтвердите удаление';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Удалить «$name»? Данные после удаления восстановить нельзя.';
  }

  @override
  String get uninstall => 'Удалить';

  @override
  String get cannotUninstall => 'Не удалось удалить';

  @override
  String get uninstalled => 'Удалено';

  @override
  String uninstallFailed(Object e) {
    return 'Ошибка удаления: $e';
  }

  @override
  String get cannotRestart => 'Не удалось перезапустить';

  @override
  String get cannotClose => 'Не удалось закрыть';

  @override
  String get running => 'Запущено';

  @override
  String get open => 'Открыть';

  @override
  String get launchAndOpen => 'Запустить и открыть';

  @override
  String get tips => 'Подсказки';

  @override
  String get checkAndUpdate => 'Проверить и обновить';

  @override
  String get close => 'Закрыть';

  @override
  String get configureServerFirst => 'Сначала настройте и активируйте сервер';

  @override
  String get loginFailed => 'Не удалось войти';

  @override
  String get configureServer => 'Настроить сервер';

  @override
  String get username => 'Имя пользователя';

  @override
  String get password => 'Пароль';

  @override
  String get usernameRequired => 'Введите имя пользователя';

  @override
  String get passwordRequired => 'Введите пароль';

  @override
  String get passwordMinLength => 'Пароль не короче 5 символов';

  @override
  String get rememberCredentials => 'Запомнить данные';

  @override
  String get newFolder => 'Новая папка';

  @override
  String get newFile => 'Новый файл';

  @override
  String get folderName => 'Имя папки';

  @override
  String get fileName => 'Имя файла';

  @override
  String get create => 'Создать';

  @override
  String get folderCreated => 'Папка создана';

  @override
  String get fileCreated => 'Файл создан';

  @override
  String createFailed(Object e) {
    return 'Не удалось создать: $e';
  }

  @override
  String get rename => 'Переименовать';

  @override
  String get renameFolder => 'Переименовать папку';

  @override
  String get renameFile => 'Переименовать файл';

  @override
  String get newName => 'Новое имя';

  @override
  String get renameSuccess => 'Переименовано';

  @override
  String renameFailed(Object e) {
    return 'Ошибка переименования: $e';
  }

  @override
  String get deleteFolder => 'Удалить папку';

  @override
  String get deleteFile => 'Удалить файл';

  @override
  String deleteConfirm(Object name) {
    return 'Удалить «$name»? Это действие нельзя отменить.';
  }

  @override
  String get deleteSuccess => 'Удалено';

  @override
  String deleteFailed(Object e) {
    return 'Ошибка удаления: $e';
  }

  @override
  String get parentDirectory => 'Родительская папка';

  @override
  String get listView => 'Список';

  @override
  String get gridView => 'Сетка';

  @override
  String get folderEmpty => 'Папка пуста';

  @override
  String openFile(Object name) {
    return 'Открыть файл: $name';
  }

  @override
  String get folder => 'Папка';

  @override
  String get file => 'Файл';

  @override
  String get download => 'Скачать';

  @override
  String get downloadNotImplemented => 'Загрузка не реализована';

  @override
  String get downloadSuccess => 'Загрузка завершена';

  @override
  String get downloadCancelled => 'Загрузка отменена';

  @override
  String get downloadPreparing => 'Подготовка загрузки…';

  @override
  String get downloadAndPlay => 'Скачать и воспроизвести';

  @override
  String get downloadingForPlayback => 'Загрузка для воспроизведения…';

  @override
  String get fullscreen => 'Полный экран';

  @override
  String get installSuccess => 'Установка выполнена';

  @override
  String installSuccessWithApp(Object title) {
    return '«$title» установлено';
  }

  @override
  String installFailed(Object e) {
    return 'Ошибка установки: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Не удалось получить конфигурацию приложения: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Особая установка: $title';
  }

  @override
  String get editComposeHint =>
      'Отредактируйте docker-compose и нажмите «Установить»';

  @override
  String get install => 'Установить';

  @override
  String get appStore => 'Магазин приложений';

  @override
  String get searchApps => 'Поиск приложений';

  @override
  String get category => 'Категория';

  @override
  String get allCategories => 'Все категории';

  @override
  String get noAppsFound => 'Подходящих приложений нет';

  @override
  String get installed => 'Установлено';

  @override
  String get custom => 'Своё';

  @override
  String get appDetail => 'Сведения о приложении';

  @override
  String get appNotFound => 'Приложение не найдено';

  @override
  String versionLabel(Object version) {
    return 'Версия: $version';
  }

  @override
  String get description => 'Описание';

  @override
  String get status => 'Статус';

  @override
  String get notRunning => 'Не запущено';

  @override
  String get installStartNotImplemented =>
      'Установка/запуск не реализованы (нужен /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Удаление не реализовано (нужен /v2/app_management/compose)';

  @override
  String get installStart => 'Установить / Запустить';

  @override
  String get legacyApps => 'Устаревшие приложения (будут пересобраны)';

  @override
  String get version => 'Версия';

  @override
  String get cpuUsage => 'Загрузка ЦП';

  @override
  String cores(Object count) {
    return 'Ядра: $count';
  }

  @override
  String get memory => 'Память (ОЗУ)';

  @override
  String memoryUsage(Object percent) {
    return 'Использование $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Использовано $used / Всего $total';
  }

  @override
  String get storage => 'Хранилище';

  @override
  String totalLabel(Object storage) {
    return 'Всего $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Использовано $used · $percent%';
  }

  @override
  String get disk => 'Диск';

  @override
  String get networkStatus => 'Сеть';

  @override
  String get addServer => 'Добавить сервер';

  @override
  String get editServer => 'Изменить сервер';

  @override
  String get nasType => 'Тип NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Имя сервера';

  @override
  String get serverNameRequired => 'Введите имя сервера';

  @override
  String get hostAddress => 'Адрес хоста';

  @override
  String get hostAddressHint => '192.168.1.100 или casaos.local';

  @override
  String get hostAddressRequired => 'Введите адрес хоста';

  @override
  String get port => 'Порт';

  @override
  String get portRequired => 'Введите порт';

  @override
  String get portInvalid => 'Укажите порт от 1 до 65535';

  @override
  String get useHttps => 'Использовать HTTPS';

  @override
  String get save => 'Сохранить';

  @override
  String get noServerConfigured => 'Сервер ещё не настроен';

  @override
  String get activate => 'Активировать';

  @override
  String get edit => 'Изменить';

  @override
  String get confirmDelete => 'Подтвердите удаление';

  @override
  String confirmDeleteServer(Object name) {
    return 'Удалить сервер «$name»?';
  }

  @override
  String get welcomeToCasaOS => 'Добро пожаловать в CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Сначала создадим вашу учётную запись.';

  @override
  String get createAccount => 'Создать учётную запись';

  @override
  String get start => 'Начать →';

  @override
  String get confirmPassword => 'Подтвердите пароль';

  @override
  String get confirmPasswordRequired => 'Введите пароль ещё раз';

  @override
  String get passwordMismatch => 'Пароли не совпадают';

  @override
  String get allDone => 'Готово!';

  @override
  String get accountCreatedHint =>
      'Учётная запись создана. Перейдите на рабочий стол CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'На рабочий стол';

  @override
  String get cannotGetInitKey =>
      'Не удалось получить ключ инициализации. Проверьте сервер.';

  @override
  String initFailed(Object e) {
    return 'Ошибка инициализации: $e';
  }

  @override
  String get openAppWith => 'Открыть приложение в';

  @override
  String get builtinBrowser => 'Встроенный браузер';

  @override
  String get systemBrowser => 'Системный браузер';

  @override
  String get openInSystemBrowser => 'Открыть в системном браузере';

  @override
  String get loading => 'Загрузка…';
}
