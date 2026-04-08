// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Lithuanian (`lt`).
class AppLocalizationsLt extends AppLocalizations {
  AppLocalizationsLt([String locale = 'lt']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS klientas';

  @override
  String get settings => 'Nustatymai';

  @override
  String get about => 'Apie';

  @override
  String get appearance => 'Išvaizda';

  @override
  String get openSource => 'Atviras kodas';

  @override
  String get tapToOpen => 'Bakstelėkite, kad atvertumėte naršyklėje';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Kaip sistemoje';

  @override
  String get lightMode => 'Šviesi';

  @override
  String get darkMode => 'Tamsi';

  @override
  String get themeColor => 'Temos spalva';

  @override
  String get themeColorDescription =>
      'Pasirinkite temos spalvą; taikoma šviesiajam ir tamsiajam režimui.';

  @override
  String get language => 'Kalba';

  @override
  String get languageFollowSystem => 'Kaip sistemoje';

  @override
  String get files => 'Failai';

  @override
  String get serverConfig => 'Serveris';

  @override
  String get refresh => 'Atnaujinti';

  @override
  String get user => 'Naudotojas';

  @override
  String get login => 'Prisijungti';

  @override
  String get home => 'Pradžia';

  @override
  String get welcome => 'Sveiki';

  @override
  String get logout => 'Atsijungti';

  @override
  String get systemStatus => 'Sistemos būsena';

  @override
  String get error => 'Klaida';

  @override
  String get apps => 'Programos';

  @override
  String appCount(Object count) {
    return 'Iš viso $count';
  }

  @override
  String get noApps => 'Nėra programų';

  @override
  String get cancel => 'Atšaukti';

  @override
  String get ok => 'Gerai';

  @override
  String get retry => 'Bandyti dar kartą';

  @override
  String get back => 'Atgal';

  @override
  String get delete => 'Ištrinti';

  @override
  String get cannotGetAppAddress => 'Nepavyko gauti programos adreso';

  @override
  String cannotOpen(Object url) {
    return 'Nepavyko atverti: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Atvėrimas nepavyko: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Ši programos rūšis nepalaiko šios operacijos';

  @override
  String get starting => 'Paleidžiama';

  @override
  String get restarting => 'Paleidžiama iš naujo';

  @override
  String get restart => 'Paleisti iš naujo';

  @override
  String get closed => 'Uždaryta';

  @override
  String operationFailed(Object e) {
    return 'Operacija nepavyko: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – patarimai';
  }

  @override
  String get noDescription =>
      'Aprašymo nėra. Keiskite konfigūraciją nustatymuose.';

  @override
  String get checkUpdateNotSupported =>
      'Ši programa nepalaiko naujinimų tikrinimo';

  @override
  String updateFailed(Object e) {
    return 'Naujinimas nepavyko: $e';
  }

  @override
  String get confirmUninstall => 'Patvirtinti šalinimą';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Ar tikrai norite pašalinti „$name“? Po pašalinimo duomenų atkurti negalima.';
  }

  @override
  String get uninstall => 'Pašalinti';

  @override
  String get cannotUninstall => 'Nepavyko pašalinti';

  @override
  String get uninstalled => 'Pašalinta';

  @override
  String uninstallFailed(Object e) {
    return 'Šalinimas nepavyko: $e';
  }

  @override
  String get cannotRestart => 'Nepavyko paleisti iš naujo';

  @override
  String get cannotClose => 'Nepavyko uždaryti';

  @override
  String get running => 'Veikia';

  @override
  String get open => 'Atverti';

  @override
  String get launchAndOpen => 'Paleisti ir atverti';

  @override
  String get tips => 'Patarimai';

  @override
  String get checkAndUpdate => 'Tikrinti ir naujinti';

  @override
  String get close => 'Uždaryti';

  @override
  String get configureServerFirst =>
      'Pirmiausia sukonfigūruokite ir aktyvuokite serverį';

  @override
  String get loginFailed => 'Prisijungti nepavyko';

  @override
  String get configureServer => 'Konfigūruoti serverį';

  @override
  String get username => 'Naudotojo vardas';

  @override
  String get password => 'Slaptažodis';

  @override
  String get usernameRequired => 'Įveskite naudotojo vardą';

  @override
  String get passwordRequired => 'Įveskite slaptažodį';

  @override
  String get passwordMinLength => 'Slaptažodis turi būti bent 5 simbolių';

  @override
  String get rememberCredentials => 'Prisiminti prisijungimo duomenis';

  @override
  String get newFolder => 'Naujas aplankas';

  @override
  String get newFile => 'Naujas failas';

  @override
  String get folderName => 'Aplanko pavadinimas';

  @override
  String get fileName => 'Failo pavadinimas';

  @override
  String get create => 'Sukurti';

  @override
  String get folderCreated => 'Aplankas sukurtas';

  @override
  String get fileCreated => 'Failas sukurtas';

  @override
  String createFailed(Object e) {
    return 'Kurti nepavyko: $e';
  }

  @override
  String get rename => 'Pervardyti';

  @override
  String get renameFolder => 'Pervardyti aplanką';

  @override
  String get renameFile => 'Pervardyti failą';

  @override
  String get newName => 'Naujas pavadinimas';

  @override
  String get renameSuccess => 'Sėkmingai pervardyta';

  @override
  String renameFailed(Object e) {
    return 'Pervardyti nepavyko: $e';
  }

  @override
  String get deleteFolder => 'Ištrinti aplanką';

  @override
  String get deleteFile => 'Ištrinti failą';

  @override
  String deleteConfirm(Object name) {
    return 'Ištrinti „$name“? Šio veiksmo negalima atšaukti.';
  }

  @override
  String get deleteSuccess => 'Sėkmingai ištrinta';

  @override
  String deleteFailed(Object e) {
    return 'Ištrinti nepavyko: $e';
  }

  @override
  String get parentDirectory => 'Tėvinis aplankas';

  @override
  String get listView => 'Sąrašo rodinys';

  @override
  String get gridView => 'Tinklelio rodinys';

  @override
  String get folderEmpty => 'Aplankas tuščias';

  @override
  String openFile(Object name) {
    return 'Atverti failą: $name';
  }

  @override
  String get folder => 'Aplankas';

  @override
  String get file => 'Failas';

  @override
  String get download => 'Atsisiųsti';

  @override
  String get downloadNotImplemented => 'Atsisiuntimas neįgyvendintas';

  @override
  String get downloadSuccess => 'Atsisiuntimas sėkmingas';

  @override
  String get downloadCancelled => 'Atsisiuntimas atšauktas';

  @override
  String get downloadPreparing => 'Ruošiamas atsisiuntimas...';

  @override
  String get downloadAndPlay => 'Atsisiųsti ir leisti';

  @override
  String get downloadingForPlayback => 'Atsisiunčiama leidimui...';

  @override
  String get fullscreen => 'Visas ekranas';

  @override
  String get installSuccess => 'Įdiegta sėkmingai';

  @override
  String installSuccessWithApp(Object title) {
    return '$title sėkmingai įdiegta';
  }

  @override
  String installFailed(Object e) {
    return 'Įdiegti nepavyko: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Nepavyko gauti programos konfigūracijos: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Pasirinktinis diegimas: $title';
  }

  @override
  String get editComposeHint =>
      'Redaguokite docker-compose ir bakstelėkite įdiegti';

  @override
  String get install => 'Įdiegti';

  @override
  String get appStore => 'Programų parduotuvė';

  @override
  String get searchApps => 'Ieškoti programų';

  @override
  String get category => 'Kategorija';

  @override
  String get allCategories => 'Visos kategorijos';

  @override
  String get noAppsFound => 'Atitinkančių programų nėra';

  @override
  String get installed => 'Įdiegta';

  @override
  String get custom => 'Pasirinktinis';

  @override
  String get appDetail => 'Programos informacija';

  @override
  String get appNotFound => 'Programa nerasta';

  @override
  String versionLabel(Object version) {
    return 'Versija: $version';
  }

  @override
  String get description => 'Aprašymas';

  @override
  String get status => 'Būsena';

  @override
  String get notRunning => 'Neveikia';

  @override
  String get installStartNotImplemented =>
      'Įdiegti/paleisti neįgyvendinta (reikia /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Šalinimas neįgyvendintas (reikia /v2/app_management/compose)';

  @override
  String get installStart => 'Įdiegti / Paleisti';

  @override
  String get legacyApps => 'Senos programos (bus perstatytos)';

  @override
  String get version => 'Versija';

  @override
  String get cpuUsage => 'CPU naudojimas';

  @override
  String cores(Object count) {
    return 'Branduoliai: $count';
  }

  @override
  String get memory => 'Atmintis (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% naudojimo';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Panaudota $used / Iš viso $total';
  }

  @override
  String get storage => 'Saugykla';

  @override
  String totalLabel(Object storage) {
    return 'Iš viso $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Panaudota $used · $percent%';
  }

  @override
  String get disk => 'Diskas';

  @override
  String get networkStatus => 'Tinklas';

  @override
  String get addServer => 'Pridėti serverį';

  @override
  String get editServer => 'Redaguoti serverį';

  @override
  String get nasType => 'NAS tipas';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Serverio pavadinimas';

  @override
  String get serverNameRequired => 'Įveskite serverio pavadinimą';

  @override
  String get hostAddress => 'Hosto adresas';

  @override
  String get hostAddressHint => '192.168.1.100 arba casaos.local';

  @override
  String get hostAddressRequired => 'Įveskite hosto adresą';

  @override
  String get port => 'Prievadas';

  @override
  String get portRequired => 'Įveskite prievadą';

  @override
  String get portInvalid => 'Netinkamas prievadas (1–65535)';

  @override
  String get useHttps => 'Naudoti HTTPS';

  @override
  String get save => 'Išsaugoti';

  @override
  String get noServerConfigured => 'Serveris dar nesukonfigūruotas';

  @override
  String get activate => 'Aktyvuoti';

  @override
  String get edit => 'Redaguoti';

  @override
  String get confirmDelete => 'Patvirtinti trynimą';

  @override
  String confirmDeleteServer(Object name) {
    return 'Ištrinti serverį „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Sveiki atvykę į CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Pirmiausia sukurkite pradinę paskyrą.';

  @override
  String get createAccount => 'Sukurti paskyrą';

  @override
  String get start => 'Pradėti →';

  @override
  String get confirmPassword => 'Patvirtinti slaptažodį';

  @override
  String get confirmPasswordRequired => 'Įveskite slaptažodį dar kartą';

  @override
  String get passwordMismatch => 'Slaptažodžiai nesutampa';

  @override
  String get allDone => 'Atlikta!';

  @override
  String get accountCreatedHint =>
      'Paskyra sukurta. Eikite į darbalaukį naudoti CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Į darbalaukį';

  @override
  String get cannotGetInitKey =>
      'Nepavyko gauti init rakto. Patikrinkite serverį.';

  @override
  String initFailed(Object e) {
    return 'Inicijavimas nepavyko: $e';
  }

  @override
  String get openAppWith => 'Atverti programą su';

  @override
  String get builtinBrowser => 'Įtaisytoji naršyklė';

  @override
  String get systemBrowser => 'Sistemos naršyklė';

  @override
  String get openInSystemBrowser => 'Atverti sistemos naršyklėje';

  @override
  String get loading => 'Kraunama...';
}
