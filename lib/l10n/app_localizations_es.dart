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

  @override
  String get cancel => 'Cancel';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Retry';

  @override
  String get back => 'Back';

  @override
  String get delete => 'Delete';

  @override
  String get cannotGetAppAddress => 'Cannot get app address';

  @override
  String cannotOpen(Object url) {
    return 'Cannot open: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Open failed: $e';
  }

  @override
  String get appTypeNotSupported =>
      'This app type does not support this operation';

  @override
  String get starting => 'Starting';

  @override
  String get restarting => 'Restarting';

  @override
  String get restart => 'Restart';

  @override
  String get closed => 'Closed';

  @override
  String operationFailed(Object e) {
    return 'Operation failed: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Tips';
  }

  @override
  String get noDescription =>
      'No description. Go to settings to modify configuration.';

  @override
  String get checkUpdateNotSupported =>
      'This app does not support check for updates';

  @override
  String updateFailed(Object e) {
    return 'Update failed: $e';
  }

  @override
  String get confirmUninstall => 'Confirm uninstall';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Are you sure you want to uninstall \"$name\"? Data cannot be recovered after uninstall.';
  }

  @override
  String get uninstall => 'Uninstall';

  @override
  String get cannotUninstall => 'Cannot uninstall';

  @override
  String get uninstalled => 'Uninstalled';

  @override
  String uninstallFailed(Object e) {
    return 'Uninstall failed: $e';
  }

  @override
  String get cannotRestart => 'Cannot restart';

  @override
  String get cannotClose => 'Cannot close';

  @override
  String get running => 'Running';

  @override
  String get open => 'Open';

  @override
  String get launchAndOpen => 'Launch and open';

  @override
  String get tips => 'Tips';

  @override
  String get checkAndUpdate => 'Check and update';

  @override
  String get close => 'Close';

  @override
  String get configureServerFirst =>
      'Please configure and activate a server first';

  @override
  String get loginFailed => 'Login failed';

  @override
  String get configureServer => 'Configure server';

  @override
  String get username => 'Username';

  @override
  String get password => 'Password';

  @override
  String get usernameRequired => 'Please enter username';

  @override
  String get passwordRequired => 'Please enter password';

  @override
  String get passwordMinLength => 'Password must be at least 5 characters';

  @override
  String get rememberCredentials => 'Remember credentials';

  @override
  String get newFolder => 'New folder';

  @override
  String get newFile => 'New file';

  @override
  String get folderName => 'Folder name';

  @override
  String get fileName => 'File name';

  @override
  String get create => 'Create';

  @override
  String get folderCreated => 'Folder created successfully';

  @override
  String get fileCreated => 'File created successfully';

  @override
  String createFailed(Object e) {
    return 'Create failed: $e';
  }

  @override
  String get rename => 'Rename';

  @override
  String get renameFolder => 'Rename folder';

  @override
  String get renameFile => 'Rename file';

  @override
  String get newName => 'New name';

  @override
  String get renameSuccess => 'Renamed successfully';

  @override
  String renameFailed(Object e) {
    return 'Rename failed: $e';
  }

  @override
  String get deleteFolder => 'Delete folder';

  @override
  String get deleteFile => 'Delete file';

  @override
  String deleteConfirm(Object name) {
    return 'Are you sure you want to delete \"$name\"? This action cannot be undone.';
  }

  @override
  String get deleteSuccess => 'Deleted successfully';

  @override
  String deleteFailed(Object e) {
    return 'Delete failed: $e';
  }

  @override
  String get parentDirectory => 'Parent directory';

  @override
  String get listView => 'List view';

  @override
  String get gridView => 'Grid view';

  @override
  String get folderEmpty => 'Folder is empty';

  @override
  String openFile(Object name) {
    return 'Open file: $name';
  }

  @override
  String get folder => 'Folder';

  @override
  String get file => 'File';

  @override
  String get download => 'Download';

  @override
  String get downloadNotImplemented => 'Download not implemented';

  @override
  String get downloadSuccess => 'Downloaded successfully';

  @override
  String get downloadCancelled => 'Download cancelled';

  @override
  String get downloadPreparing => 'Preparing download...';

  @override
  String get downloadAndPlay => 'Download and play';

  @override
  String get downloadingForPlayback => 'Downloading for playback...';

  @override
  String get fullscreen => 'Fullscreen';

  @override
  String get installSuccess => 'Installed successfully';

  @override
  String installSuccessWithApp(Object title) {
    return '$title installed successfully';
  }

  @override
  String installFailed(Object e) {
    return 'Install failed: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Failed to get app config: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Custom install: $title';
  }

  @override
  String get editComposeHint => 'Edit docker-compose config and click install';

  @override
  String get install => 'Install';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => 'Search apps';

  @override
  String get category => 'Category';

  @override
  String get allCategories => 'All categories';

  @override
  String get noAppsFound => 'No matching apps found';

  @override
  String get installed => 'Installed';

  @override
  String get custom => 'Custom';

  @override
  String get appDetail => 'App details';

  @override
  String get appNotFound => 'App not found';

  @override
  String versionLabel(Object version) {
    return 'Version: $version';
  }

  @override
  String get description => 'Description';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Not running';

  @override
  String get installStartNotImplemented =>
      'Install/start not implemented (needs /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Uninstall not implemented (needs /v2/app_management/compose)';

  @override
  String get installStart => 'Install / Start';

  @override
  String get legacyApps => 'Legacy apps (to be rebuilt)';

  @override
  String get version => 'Version';

  @override
  String get cpuUsage => 'CPU usage';

  @override
  String cores(Object count) {
    return 'Cores: $count';
  }

  @override
  String get memory => 'Memory (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% usage';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Used $used / Total $total';
  }

  @override
  String get storage => 'Storage';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Used $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Network status';

  @override
  String get addServer => 'Add server';

  @override
  String get editServer => 'Edit server';

  @override
  String get serverName => 'Server name';

  @override
  String get serverNameRequired => 'Please enter server name';

  @override
  String get hostAddress => 'Host address';

  @override
  String get hostAddressHint => '192.168.1.100 or casaos.local';

  @override
  String get hostAddressRequired => 'Please enter host address';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Please enter port';

  @override
  String get portInvalid => 'Please enter a valid port (1-65535)';

  @override
  String get useHttps => 'Use HTTPS';

  @override
  String get save => 'Save';

  @override
  String get noServerConfigured => 'No server configured yet';

  @override
  String get activate => 'Activate';

  @override
  String get edit => 'Edit';

  @override
  String get confirmDelete => 'Confirm delete';

  @override
  String confirmDeleteServer(Object name) {
    return 'Are you sure you want to delete server \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Welcome to CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Let\'s create your initial account first.';

  @override
  String get createAccount => 'Create account';

  @override
  String get start => 'Start →';

  @override
  String get confirmPassword => 'Confirm password';

  @override
  String get confirmPasswordRequired => 'Please enter password again';

  @override
  String get passwordMismatch => 'Passwords do not match';

  @override
  String get allDone => 'All done!';

  @override
  String get accountCreatedHint =>
      'Your account has been created. Enter the desktop to experience CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Enter desktop';

  @override
  String get cannotGetInitKey =>
      'Cannot get init key. Please check server status.';

  @override
  String initFailed(Object e) {
    return 'Init failed: $e';
  }
}
