// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Cliente CasaOS / ZimaOS';

  @override
  String get settings => 'Ajustes';

  @override
  String get appearance => 'Apariencia';

  @override
  String get themeMode => 'Modo de tema';

  @override
  String get followSystem => 'Seguir sistema';

  @override
  String get lightMode => 'Modo claro';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get themeColorDescription =>
      'Seleccione un color de tema; se aplica al modo claro y oscuro.';

  @override
  String get language => 'Idioma';

  @override
  String get languageFollowSystem => 'Seguir sistema';

  @override
  String get files => 'Administración de archivos';

  @override
  String get serverConfig => 'Configuración del servidor';

  @override
  String get refresh => 'Actualizar';

  @override
  String get user => 'Usuario';

  @override
  String get login => 'Iniciar sesión';

  @override
  String get home => 'Inicio';

  @override
  String get welcome => 'Bienvenido';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get systemStatus => 'Estado del sistema';

  @override
  String get error => 'Error';

  @override
  String get apps => 'Aplicaciones';

  @override
  String appCount(Object count) {
    return '$count en total';
  }

  @override
  String get noApps => 'Sin aplicaciones';
}
