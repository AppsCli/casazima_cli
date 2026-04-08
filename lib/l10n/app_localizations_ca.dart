// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Client CasaOS / ZimaOS';

  @override
  String get settings => 'Configuració';

  @override
  String get about => 'Quant a';

  @override
  String get appearance => 'Aparença';

  @override
  String get openSource => 'Codi obert';

  @override
  String get tapToOpen => 'Toqueu per obrir al navegador';

  @override
  String get themeMode => 'Mode de tema';

  @override
  String get followSystem => 'Segueix el sistema';

  @override
  String get lightMode => 'Clar';

  @override
  String get darkMode => 'Fosc';

  @override
  String get themeColor => 'Color del tema';

  @override
  String get themeColorDescription =>
      'Trieu un color de tema; s\'aplica als modes clar i fosc.';

  @override
  String get language => 'Idioma';

  @override
  String get languageFollowSystem => 'Segueix el sistema';

  @override
  String get files => 'Fitxers';

  @override
  String get serverConfig => 'Servidor';

  @override
  String get refresh => 'Actualitza';

  @override
  String get user => 'Usuari';

  @override
  String get login => 'Inici de sessió';

  @override
  String get home => 'Inici';

  @override
  String get welcome => 'Benvingut';

  @override
  String get logout => 'Tanca la sessió';

  @override
  String get systemStatus => 'Estat del sistema';

  @override
  String get error => 'Error';

  @override
  String get apps => 'Aplicacions';

  @override
  String appCount(Object count) {
    return '$count en total';
  }

  @override
  String get noApps => 'Cap aplicació';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get ok => 'D\'acord';

  @override
  String get retry => 'Torna-ho a provar';

  @override
  String get back => 'Enrere';

  @override
  String get delete => 'Suprimeix';

  @override
  String get cannotGetAppAddress =>
      'No es pot obtenir l\'adreça de l\'aplicació';

  @override
  String cannotOpen(Object url) {
    return 'No es pot obrir: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Ha fallat l\'obertura: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Aquest tipus d\'aplicació no admet aquesta operació';

  @override
  String get starting => 'S\'està iniciant';

  @override
  String get restarting => 'S\'està reiniciant';

  @override
  String get restart => 'Reinicia';

  @override
  String get closed => 'Tancat';

  @override
  String operationFailed(Object e) {
    return 'L\'operació ha fallat: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Consells';
  }

  @override
  String get noDescription =>
      'Sense descripció. Aneu a la configuració per modificar-la.';

  @override
  String get checkUpdateNotSupported =>
      'Aquesta aplicació no admet la comprovació d\'actualitzacions';

  @override
  String updateFailed(Object e) {
    return 'L\'actualització ha fallat: $e';
  }

  @override
  String get confirmUninstall => 'Confirma la desinstal·lació';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Segur que voleu desinstal·lar «$name»? Les dades no es poden recuperar després.';
  }

  @override
  String get uninstall => 'Desinstal·la';

  @override
  String get cannotUninstall => 'No es pot desinstal·lar';

  @override
  String get uninstalled => 'Desinstal·lat';

  @override
  String uninstallFailed(Object e) {
    return 'La desinstal·lació ha fallat: $e';
  }

  @override
  String get cannotRestart => 'No es pot reiniciar';

  @override
  String get cannotClose => 'No es pot tancar';

  @override
  String get running => 'En execució';

  @override
  String get open => 'Obre';

  @override
  String get launchAndOpen => 'Inicia i obre';

  @override
  String get tips => 'Consells';

  @override
  String get checkAndUpdate => 'Comprova i actualitza';

  @override
  String get close => 'Tanca';

  @override
  String get configureServerFirst => 'Configureu i activeu primer un servidor';

  @override
  String get loginFailed => 'Ha fallat l\'inici de sessió';

  @override
  String get configureServer => 'Configura el servidor';

  @override
  String get username => 'Nom d\'usuari';

  @override
  String get password => 'Contrasenya';

  @override
  String get usernameRequired => 'Introduïu el nom d\'usuari';

  @override
  String get passwordRequired => 'Introduïu la contrasenya';

  @override
  String get passwordMinLength =>
      'La contrasenya ha de tenir almenys 5 caràcters';

  @override
  String get rememberCredentials => 'Recorda les credencials';

  @override
  String get newFolder => 'Carpeta nova';

  @override
  String get newFile => 'Fitxer nou';

  @override
  String get folderName => 'Nom de la carpeta';

  @override
  String get fileName => 'Nom del fitxer';

  @override
  String get create => 'Crea';

  @override
  String get folderCreated => 'Carpeta creada';

  @override
  String get fileCreated => 'Fitxer creat';

  @override
  String createFailed(Object e) {
    return 'Ha fallat la creació: $e';
  }

  @override
  String get rename => 'Canvia el nom';

  @override
  String get renameFolder => 'Canvia el nom de la carpeta';

  @override
  String get renameFile => 'Canvia el nom del fitxer';

  @override
  String get newName => 'Nom nou';

  @override
  String get renameSuccess => 'Nom canviat';

  @override
  String renameFailed(Object e) {
    return 'Ha fallat el canvi de nom: $e';
  }

  @override
  String get deleteFolder => 'Suprimeix la carpeta';

  @override
  String get deleteFile => 'Suprimeix el fitxer';

  @override
  String deleteConfirm(Object name) {
    return 'Suprimir «$name»? Aquesta acció no es pot desfer.';
  }

  @override
  String get deleteSuccess => 'S\'ha suprimit';

  @override
  String deleteFailed(Object e) {
    return 'Ha fallat la supressió: $e';
  }

  @override
  String get parentDirectory => 'Directori superior';

  @override
  String get listView => 'Vista de llista';

  @override
  String get gridView => 'Vista de quadrícula';

  @override
  String get folderEmpty => 'La carpeta és buida';

  @override
  String openFile(Object name) {
    return 'Obre el fitxer: $name';
  }

  @override
  String get folder => 'Carpeta';

  @override
  String get file => 'Fitxer';

  @override
  String get download => 'Baixa';

  @override
  String get downloadNotImplemented => 'La baixada no està implementada';

  @override
  String get downloadSuccess => 'Baixada correcta';

  @override
  String get downloadCancelled => 'Baixada cancel·lada';

  @override
  String get downloadPreparing => 'S\'està preparant la baixada...';

  @override
  String get downloadAndPlay => 'Baixa i reprodueix';

  @override
  String get downloadingForPlayback =>
      'S\'està baixant per a la reproducció...';

  @override
  String get fullscreen => 'Pantalla completa';

  @override
  String get installSuccess => 'Instal·lació correcta';

  @override
  String installSuccessWithApp(Object title) {
    return 'S\'ha instal·lat $title';
  }

  @override
  String installFailed(Object e) {
    return 'Ha fallat la instal·lació: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'No s\'ha pogut obtenir la configuració: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instal·lació personalitzada: $title';
  }

  @override
  String get editComposeHint => 'Editeu el docker-compose i toqueu instal·lar';

  @override
  String get install => 'Instal·la';

  @override
  String get appStore => 'Botiga d\'aplicacions';

  @override
  String get searchApps => 'Cerca aplicacions';

  @override
  String get category => 'Categoria';

  @override
  String get allCategories => 'Totes les categories';

  @override
  String get noAppsFound => 'No s\'ha trobat cap aplicació';

  @override
  String get installed => 'Instal·lat';

  @override
  String get custom => 'Personalitzat';

  @override
  String get appDetail => 'Detalls de l\'aplicació';

  @override
  String get appNotFound => 'No s\'ha trobat l\'aplicació';

  @override
  String versionLabel(Object version) {
    return 'Versió: $version';
  }

  @override
  String get description => 'Descripció';

  @override
  String get status => 'Estat';

  @override
  String get notRunning => 'Aturat';

  @override
  String get installStartNotImplemented =>
      'Instal·lar/iniciar no implementat (cal /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Desinstal·lar no implementat (cal /v2/app_management/compose)';

  @override
  String get installStart => 'Instal·la / Inicia';

  @override
  String get legacyApps => 'Aplicacions antigues (es reconstruiran)';

  @override
  String get version => 'Versió';

  @override
  String get cpuUsage => 'Ús de la CPU';

  @override
  String cores(Object count) {
    return 'Nuclis: $count';
  }

  @override
  String get memory => 'Memòria (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% d\'ús';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Usat $used / Total $total';
  }

  @override
  String get storage => 'Emmagatzematge';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Usat $used · $percent%';
  }

  @override
  String get disk => 'Disc';

  @override
  String get networkStatus => 'Xarxa';

  @override
  String get addServer => 'Afegeix servidor';

  @override
  String get editServer => 'Edita el servidor';

  @override
  String get nasType => 'Tipus de NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nom del servidor';

  @override
  String get serverNameRequired => 'Introduïu el nom del servidor';

  @override
  String get hostAddress => 'Adreça de l\'amfitrió';

  @override
  String get hostAddressHint => '192.168.1.100 o casaos.local';

  @override
  String get hostAddressRequired => 'Introduïu l\'adreça de l\'amfitrió';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Introduïu el port';

  @override
  String get portInvalid => 'Port no vàlid (1-65535)';

  @override
  String get useHttps => 'Utilitza HTTPS';

  @override
  String get save => 'Desa';

  @override
  String get noServerConfigured => 'Encara no hi ha cap servidor configurat';

  @override
  String get activate => 'Activa';

  @override
  String get edit => 'Edita';

  @override
  String get confirmDelete => 'Confirma la supressió';

  @override
  String confirmDeleteServer(Object name) {
    return 'Suprimir el servidor «$name»?';
  }

  @override
  String get welcomeToCasaOS => 'Benvingut a CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Primer creem el vostre compte inicial.';

  @override
  String get createAccount => 'Crea un compte';

  @override
  String get start => 'Comença →';

  @override
  String get confirmPassword => 'Confirma la contrasenya';

  @override
  String get confirmPasswordRequired => 'Torneu a introduir la contrasenya';

  @override
  String get passwordMismatch => 'Les contrasenyes no coincideixen';

  @override
  String get allDone => 'Fet!';

  @override
  String get accountCreatedHint =>
      'S\'ha creat el compte. Entreu a l\'escriptori per CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Entra a l\'escriptori';

  @override
  String get cannotGetInitKey =>
      'No es pot obtenir la clau d\'inici. Comproveu el servidor.';

  @override
  String initFailed(Object e) {
    return 'Ha fallat la inicialització: $e';
  }

  @override
  String get openAppWith => 'Obre l\'aplicació amb';

  @override
  String get builtinBrowser => 'Navegador integrat';

  @override
  String get systemBrowser => 'Navegador del sistema';

  @override
  String get openInSystemBrowser => 'Obre al navegador del sistema';

  @override
  String get loading => 'S\'està carregant...';
}
