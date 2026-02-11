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
  String get appearance => 'Внешний вид';

  @override
  String get themeMode => 'Режим темы';

  @override
  String get followSystem => 'Как в системе';

  @override
  String get lightMode => 'Светлый режим';

  @override
  String get darkMode => 'Тёмный режим';

  @override
  String get themeColor => 'Цвет темы';

  @override
  String get themeColorDescription =>
      'Выберите цвет темы; он применяется к светлому и тёмному режиму.';

  @override
  String get language => 'Язык';

  @override
  String get languageFollowSystem => 'Как в системе';

  @override
  String get files => 'Управление файлами';

  @override
  String get serverConfig => 'Настройка сервера';

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
}
