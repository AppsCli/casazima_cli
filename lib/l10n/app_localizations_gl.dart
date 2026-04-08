// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Cliente CasaOS / ZimaOS';

  @override
  String get settings => 'Configuración';

  @override
  String get about => 'Acerca de';

  @override
  String get appearance => 'Aparencia';

  @override
  String get openSource => 'Código aberto';

  @override
  String get tapToOpen => 'Toca para abrir no navegador';

  @override
  String get themeMode => 'Modo de tema';

  @override
  String get followSystem => 'Seguir o sistema';

  @override
  String get lightMode => 'Claro';

  @override
  String get darkMode => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get themeColorDescription =>
      'Escolle unha cor de tema; aplícase aos modos claro e escuro.';

  @override
  String get language => 'Idioma';

  @override
  String get languageFollowSystem => 'Seguir o sistema';

  @override
  String get files => 'Ficheiros';

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
  String get welcome => 'Benvido';

  @override
  String get logout => 'Pechar sesión';

  @override
  String get systemStatus => 'Estado do sistema';

  @override
  String get error => 'Erro';

  @override
  String get apps => 'Aplicacións';

  @override
  String appCount(Object count) {
    return '$count en total';
  }

  @override
  String get noApps => 'Sen aplicacións';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Tentar de novo';

  @override
  String get back => 'Atrás';

  @override
  String get delete => 'Eliminar';

  @override
  String get cannotGetAppAddress =>
      'Non se pode obter o enderezo da aplicación';

  @override
  String cannotOpen(Object url) {
    return 'Non se pode abrir: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Fallo ao abrir: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Este tipo de aplicación non admite esta operación';

  @override
  String get starting => 'Iniciando';

  @override
  String get restarting => 'Reiniciando';

  @override
  String get restart => 'Reiniciar';

  @override
  String get closed => 'Pechado';

  @override
  String operationFailed(Object e) {
    return 'A operación fallou: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Consellos';
  }

  @override
  String get noDescription =>
      'Sen descrición. Vai aos axustes para modificar a configuración.';

  @override
  String get checkUpdateNotSupported =>
      'Esta aplicación non admite comprobar actualizacións';

  @override
  String updateFailed(Object e) {
    return 'A actualización fallou: $e';
  }

  @override
  String get confirmUninstall => 'Confirmar desinstalación';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Seguro que queres desinstalar «$name»? Os datos non se poden recuperar despois.';
  }

  @override
  String get uninstall => 'Desinstalar';

  @override
  String get cannotUninstall => 'Non se pode desinstalar';

  @override
  String get uninstalled => 'Desinstalado';

  @override
  String uninstallFailed(Object e) {
    return 'A desinstalación fallou: $e';
  }

  @override
  String get cannotRestart => 'Non se pode reiniciar';

  @override
  String get cannotClose => 'Non se pode pechar';

  @override
  String get running => 'En execución';

  @override
  String get open => 'Abrir';

  @override
  String get launchAndOpen => 'Iniciar e abrir';

  @override
  String get tips => 'Consellos';

  @override
  String get checkAndUpdate => 'Comprobar e actualizar';

  @override
  String get close => 'Pechar';

  @override
  String get configureServerFirst => 'Configura e activa primeiro un servidor';

  @override
  String get loginFailed => 'Fallo ao iniciar sesión';

  @override
  String get configureServer => 'Configurar servidor';

  @override
  String get username => 'Nome de usuario';

  @override
  String get password => 'Contrasinal';

  @override
  String get usernameRequired => 'Introduce o nome de usuario';

  @override
  String get passwordRequired => 'Introduce o contrasinal';

  @override
  String get passwordMinLength =>
      'O contrasinal debe ter polo menos 5 caracteres';

  @override
  String get rememberCredentials => 'Lembrar credenciais';

  @override
  String get newFolder => 'Novo cartafol';

  @override
  String get newFile => 'Novo ficheiro';

  @override
  String get folderName => 'Nome do cartafol';

  @override
  String get fileName => 'Nome do ficheiro';

  @override
  String get create => 'Crear';

  @override
  String get folderCreated => 'Cartafol creado';

  @override
  String get fileCreated => 'Ficheiro creado';

  @override
  String createFailed(Object e) {
    return 'Fallo ao crear: $e';
  }

  @override
  String get rename => 'Renomear';

  @override
  String get renameFolder => 'Renomear cartafol';

  @override
  String get renameFile => 'Renomear ficheiro';

  @override
  String get newName => 'Novo nome';

  @override
  String get renameSuccess => 'Renomeado correctamente';

  @override
  String renameFailed(Object e) {
    return 'Fallo ao renomear: $e';
  }

  @override
  String get deleteFolder => 'Eliminar cartafol';

  @override
  String get deleteFile => 'Eliminar ficheiro';

  @override
  String deleteConfirm(Object name) {
    return 'Eliminar «$name»? Esta acción non se pode desfacer.';
  }

  @override
  String get deleteSuccess => 'Eliminado correctamente';

  @override
  String deleteFailed(Object e) {
    return 'Fallo ao eliminar: $e';
  }

  @override
  String get parentDirectory => 'Directorio superior';

  @override
  String get listView => 'Vista de lista';

  @override
  String get gridView => 'Vista de grade';

  @override
  String get folderEmpty => 'O cartafol está baleiro';

  @override
  String openFile(Object name) {
    return 'Abrir ficheiro: $name';
  }

  @override
  String get folder => 'Cartafol';

  @override
  String get file => 'Ficheiro';

  @override
  String get download => 'Descargar';

  @override
  String get downloadNotImplemented => 'A descarga non está implementada';

  @override
  String get downloadSuccess => 'Descarga correcta';

  @override
  String get downloadCancelled => 'Descarga cancelada';

  @override
  String get downloadPreparing => 'Preparando descarga...';

  @override
  String get downloadAndPlay => 'Descargar e reproducir';

  @override
  String get downloadingForPlayback => 'Descargando para reprodución...';

  @override
  String get fullscreen => 'Pantalla completa';

  @override
  String get installSuccess => 'Instalación correcta';

  @override
  String installSuccessWithApp(Object title) {
    return '$title instalado correctamente';
  }

  @override
  String installFailed(Object e) {
    return 'A instalación fallou: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Non se puido obter a configuración: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instalación personalizada: $title';
  }

  @override
  String get editComposeHint => 'Edita o docker-compose e toca instalar';

  @override
  String get install => 'Instalar';

  @override
  String get appStore => 'Tenda de aplicacións';

  @override
  String get searchApps => 'Buscar aplicacións';

  @override
  String get category => 'Categoría';

  @override
  String get allCategories => 'Todas as categorías';

  @override
  String get noAppsFound => 'Non hai aplicacións coincidentes';

  @override
  String get installed => 'Instalado';

  @override
  String get custom => 'Personalizado';

  @override
  String get appDetail => 'Detalles da aplicación';

  @override
  String get appNotFound => 'Aplicación non atopada';

  @override
  String versionLabel(Object version) {
    return 'Versión: $version';
  }

  @override
  String get description => 'Descrición';

  @override
  String get status => 'Estado';

  @override
  String get notRunning => 'Non en execución';

  @override
  String get installStartNotImplemented =>
      'Instalar/iniciar non implementado (require /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Desinstalar non implementado (require /v2/app_management/compose)';

  @override
  String get installStart => 'Instalar / Iniciar';

  @override
  String get legacyApps => 'Aplicacións antigas (reconstruiranse)';

  @override
  String get version => 'Versión';

  @override
  String get cpuUsage => 'Uso da CPU';

  @override
  String cores(Object count) {
    return 'Núcleos: $count';
  }

  @override
  String get memory => 'Memoria (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% de uso';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Usado $used / Total $total';
  }

  @override
  String get storage => 'Almacenamento';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Usado $used · $percent%';
  }

  @override
  String get disk => 'Disco';

  @override
  String get networkStatus => 'Rede';

  @override
  String get addServer => 'Engadir servidor';

  @override
  String get editServer => 'Editar servidor';

  @override
  String get nasType => 'Tipo de NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nome do servidor';

  @override
  String get serverNameRequired => 'Introduce o nome do servidor';

  @override
  String get hostAddress => 'Enderezo do host';

  @override
  String get hostAddressHint => '192.168.1.100 ou casaos.local';

  @override
  String get hostAddressRequired => 'Introduce o enderezo do host';

  @override
  String get port => 'Porto';

  @override
  String get portRequired => 'Introduce o porto';

  @override
  String get portInvalid => 'Porto non válido (1–65535)';

  @override
  String get useHttps => 'Usar HTTPS';

  @override
  String get save => 'Gardar';

  @override
  String get noServerConfigured => 'Aínda non hai servidor configurado';

  @override
  String get activate => 'Activar';

  @override
  String get edit => 'Editar';

  @override
  String get confirmDelete => 'Confirmar eliminación';

  @override
  String confirmDeleteServer(Object name) {
    return 'Eliminar o servidor «$name»?';
  }

  @override
  String get welcomeToCasaOS => 'Benvido a CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Primeiro creemos a túa conta inicial.';

  @override
  String get createAccount => 'Crear conta';

  @override
  String get start => 'Comezar →';

  @override
  String get confirmPassword => 'Confirmar contrasinal';

  @override
  String get confirmPasswordRequired => 'Introduce o contrasinal de novo';

  @override
  String get passwordMismatch => 'Os contrasinais non coinciden';

  @override
  String get allDone => 'Feito!';

  @override
  String get accountCreatedHint =>
      'Creouse a túa conta. Entra no escritorio para usar CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Ir ao escritorio';

  @override
  String get cannotGetInitKey =>
      'Non se pode obter a chave de init. Comproba o servidor.';

  @override
  String initFailed(Object e) {
    return 'A inicialización fallou: $e';
  }

  @override
  String get openAppWith => 'Abrir aplicación con';

  @override
  String get builtinBrowser => 'Navegador integrado';

  @override
  String get systemBrowser => 'Navegador do sistema';

  @override
  String get openInSystemBrowser => 'Abrir no navegador do sistema';

  @override
  String get loading => 'Cargando...';
}
