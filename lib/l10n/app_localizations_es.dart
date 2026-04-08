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
  String get appTitleClient => 'Cliente de CasaOS / ZimaOS';

  @override
  String get settings => 'Ajustes';

  @override
  String get about => 'Acerca de';

  @override
  String get appearance => 'Apariencia';

  @override
  String get openSource => 'Código abierto';

  @override
  String get tapToOpen => 'Toca para abrir en el navegador';

  @override
  String get themeMode => 'Modo de tema';

  @override
  String get followSystem => 'Seguir el sistema';

  @override
  String get lightMode => 'Claro';

  @override
  String get darkMode => 'Oscuro';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get themeColorDescription =>
      'Elige un color de tema; se aplica al modo claro y oscuro.';

  @override
  String get language => 'Idioma';

  @override
  String get languageFollowSystem => 'Seguir el sistema';

  @override
  String get files => 'Archivos';

  @override
  String get serverConfig => 'Servidor';

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

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'Aceptar';

  @override
  String get retry => 'Reintentar';

  @override
  String get back => 'Atrás';

  @override
  String get delete => 'Eliminar';

  @override
  String get cannotGetAppAddress =>
      'No se puede obtener la dirección de la aplicación';

  @override
  String cannotOpen(Object url) {
    return 'No se puede abrir: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Error al abrir: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Este tipo de aplicación no admite esta acción';

  @override
  String get starting => 'Iniciando';

  @override
  String get restarting => 'Reiniciando';

  @override
  String get restart => 'Reiniciar';

  @override
  String get closed => 'Cerrada';

  @override
  String operationFailed(Object e) {
    return 'La operación falló: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — Consejos';
  }

  @override
  String get noDescription =>
      'Sin descripción. Modifica la configuración en ajustes.';

  @override
  String get checkUpdateNotSupported =>
      'Esta aplicación no admite comprobar actualizaciones';

  @override
  String updateFailed(Object e) {
    return 'Error al actualizar: $e';
  }

  @override
  String get confirmUninstall => 'Confirmar desinstalación';

  @override
  String uninstallConfirmMessage(Object name) {
    return '¿Deseas desinstalar «$name»? Los datos no se podrán recuperar.';
  }

  @override
  String get uninstall => 'Desinstalar';

  @override
  String get cannotUninstall => 'No se puede desinstalar';

  @override
  String get uninstalled => 'Desinstalada';

  @override
  String uninstallFailed(Object e) {
    return 'Error al desinstalar: $e';
  }

  @override
  String get cannotRestart => 'No se puede reiniciar';

  @override
  String get cannotClose => 'No se puede cerrar';

  @override
  String get running => 'En ejecución';

  @override
  String get open => 'Abrir';

  @override
  String get launchAndOpen => 'Iniciar y abrir';

  @override
  String get tips => 'Consejos';

  @override
  String get checkAndUpdate => 'Comprobar y actualizar';

  @override
  String get close => 'Cerrar';

  @override
  String get configureServerFirst => 'Configura y activa un servidor primero';

  @override
  String get loginFailed => 'Error al iniciar sesión';

  @override
  String get configureServer => 'Configurar servidor';

  @override
  String get username => 'Nombre de usuario';

  @override
  String get password => 'Contraseña';

  @override
  String get usernameRequired => 'Introduce el nombre de usuario';

  @override
  String get passwordRequired => 'Introduce la contraseña';

  @override
  String get passwordMinLength =>
      'La contraseña debe tener al menos 5 caracteres';

  @override
  String get rememberCredentials => 'Recordar credenciales';

  @override
  String get newFolder => 'Carpeta nueva';

  @override
  String get newFile => 'Archivo nuevo';

  @override
  String get folderName => 'Nombre de la carpeta';

  @override
  String get fileName => 'Nombre del archivo';

  @override
  String get create => 'Crear';

  @override
  String get folderCreated => 'Carpeta creada';

  @override
  String get fileCreated => 'Archivo creado';

  @override
  String createFailed(Object e) {
    return 'Error al crear: $e';
  }

  @override
  String get rename => 'Renombrar';

  @override
  String get renameFolder => 'Renombrar carpeta';

  @override
  String get renameFile => 'Renombrar archivo';

  @override
  String get newName => 'Nombre nuevo';

  @override
  String get renameSuccess => 'Renombrado correctamente';

  @override
  String renameFailed(Object e) {
    return 'Error al renombrar: $e';
  }

  @override
  String get deleteFolder => 'Eliminar carpeta';

  @override
  String get deleteFile => 'Eliminar archivo';

  @override
  String deleteConfirm(Object name) {
    return '¿Eliminar «$name»? Esta acción no se puede deshacer.';
  }

  @override
  String get deleteSuccess => 'Eliminado correctamente';

  @override
  String deleteFailed(Object e) {
    return 'Error al eliminar: $e';
  }

  @override
  String get parentDirectory => 'Carpeta superior';

  @override
  String get listView => 'Vista de lista';

  @override
  String get gridView => 'Vista de cuadrícula';

  @override
  String get folderEmpty => 'La carpeta está vacía';

  @override
  String openFile(Object name) {
    return 'Abrir archivo: $name';
  }

  @override
  String get folder => 'Carpeta';

  @override
  String get file => 'Archivo';

  @override
  String get download => 'Descargar';

  @override
  String get downloadNotImplemented => 'Descarga no implementada';

  @override
  String get downloadSuccess => 'Descarga completada';

  @override
  String get downloadCancelled => 'Descarga cancelada';

  @override
  String get downloadPreparing => 'Preparando descarga…';

  @override
  String get downloadAndPlay => 'Descargar y reproducir';

  @override
  String get downloadingForPlayback => 'Descargando para reproducción…';

  @override
  String get fullscreen => 'Pantalla completa';

  @override
  String get installSuccess => 'Instalación correcta';

  @override
  String installSuccessWithApp(Object title) {
    return '«$title» instalada correctamente';
  }

  @override
  String installFailed(Object e) {
    return 'Error al instalar: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'No se pudo obtener la configuración de la app: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instalación personalizada: $title';
  }

  @override
  String get editComposeHint => 'Edita docker-compose y pulsa instalar';

  @override
  String get install => 'Instalar';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => 'Buscar aplicaciones';

  @override
  String get category => 'Categoría';

  @override
  String get allCategories => 'Todas las categorías';

  @override
  String get noAppsFound => 'No hay aplicaciones coincidentes';

  @override
  String get installed => 'Instalada';

  @override
  String get custom => 'Personalizada';

  @override
  String get appDetail => 'Detalles de la aplicación';

  @override
  String get appNotFound => 'Aplicación no encontrada';

  @override
  String versionLabel(Object version) {
    return 'Versión: $version';
  }

  @override
  String get description => 'Descripción';

  @override
  String get status => 'Estado';

  @override
  String get notRunning => 'No en ejecución';

  @override
  String get installStartNotImplemented =>
      'Instalar/iniciar no implementado (requiere /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Desinstalar no implementado (requiere /v2/app_management/compose)';

  @override
  String get installStart => 'Instalar / Iniciar';

  @override
  String get legacyApps => 'Aplicaciones heredadas (se reconstruirán)';

  @override
  String get version => 'Versión';

  @override
  String get cpuUsage => 'Uso de CPU';

  @override
  String cores(Object count) {
    return 'Núcleos: $count';
  }

  @override
  String get memory => 'Memoria (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent % de uso';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Usado $used / Total $total';
  }

  @override
  String get storage => 'Almacenamiento';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Usado $used · $percent %';
  }

  @override
  String get disk => 'Disco';

  @override
  String get networkStatus => 'Red';

  @override
  String get addServer => 'Añadir servidor';

  @override
  String get editServer => 'Editar servidor';

  @override
  String get nasType => 'Tipo de NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nombre del servidor';

  @override
  String get serverNameRequired => 'Introduce el nombre del servidor';

  @override
  String get hostAddress => 'Dirección del host';

  @override
  String get hostAddressHint => '192.168.1.100 o casaos.local';

  @override
  String get hostAddressRequired => 'Introduce la dirección del host';

  @override
  String get port => 'Puerto';

  @override
  String get portRequired => 'Introduce el puerto';

  @override
  String get portInvalid => 'Introduce un puerto válido (1-65535)';

  @override
  String get useHttps => 'Usar HTTPS';

  @override
  String get save => 'Guardar';

  @override
  String get noServerConfigured => 'Aún no hay servidor configurado';

  @override
  String get activate => 'Activar';

  @override
  String get edit => 'Editar';

  @override
  String get confirmDelete => 'Confirmar eliminación';

  @override
  String confirmDeleteServer(Object name) {
    return '¿Eliminar el servidor «$name»?';
  }

  @override
  String get welcomeToCasaOS => 'Bienvenido a CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Primero creemos tu cuenta inicial.';

  @override
  String get createAccount => 'Crear cuenta';

  @override
  String get start => 'Empezar →';

  @override
  String get confirmPassword => 'Confirmar contraseña';

  @override
  String get confirmPasswordRequired => 'Vuelve a introducir la contraseña';

  @override
  String get passwordMismatch => 'Las contraseñas no coinciden';

  @override
  String get allDone => '¡Listo!';

  @override
  String get accountCreatedHint =>
      'Tu cuenta se ha creado. Entra al escritorio para usar CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Ir al escritorio';

  @override
  String get cannotGetInitKey =>
      'No se puede obtener la clave de inicio. Comprueba el estado del servidor.';

  @override
  String initFailed(Object e) {
    return 'Error de inicialización: $e';
  }

  @override
  String get openAppWith => 'Abrir aplicación con';

  @override
  String get builtinBrowser => 'Navegador integrado';

  @override
  String get systemBrowser => 'Navegador del sistema';

  @override
  String get openInSystemBrowser => 'Abrir en el navegador del sistema';

  @override
  String get loading => 'Cargando…';
}
