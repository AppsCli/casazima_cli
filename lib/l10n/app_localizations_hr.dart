// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS klijent';

  @override
  String get settings => 'Postavke';

  @override
  String get about => 'O aplikaciji';

  @override
  String get appearance => 'Izgled';

  @override
  String get openSource => 'Otvoreni kod';

  @override
  String get tapToOpen => 'Dodirnite za otvaranje u pregledniku';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Prema sustavu';

  @override
  String get lightMode => 'Svijetla';

  @override
  String get darkMode => 'Tamna';

  @override
  String get themeColor => 'Boja teme';

  @override
  String get themeColorDescription =>
      'Odaberite boju teme; primjenjuje se na svijetli i tamni način.';

  @override
  String get language => 'Jezik';

  @override
  String get languageFollowSystem => 'Prema sustavu';

  @override
  String get files => 'Datoteke';

  @override
  String get serverConfig => 'Poslužitelj';

  @override
  String get refresh => 'Osvježi';

  @override
  String get user => 'Korisnik';

  @override
  String get login => 'Prijava';

  @override
  String get home => 'Početna';

  @override
  String get welcome => 'Dobro došli';

  @override
  String get logout => 'Odjava';

  @override
  String get systemStatus => 'Status sustava';

  @override
  String get error => 'Greška';

  @override
  String get apps => 'Aplikacije';

  @override
  String appCount(Object count) {
    return 'Ukupno $count';
  }

  @override
  String get noApps => 'Nema aplikacija';

  @override
  String get cancel => 'Odustani';

  @override
  String get ok => 'U redu';

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get back => 'Natrag';

  @override
  String get delete => 'Izbriši';

  @override
  String get cannotGetAppAddress => 'Nije moguće dohvatiti adresu aplikacije';

  @override
  String cannotOpen(Object url) {
    return 'Nije moguće otvoriti: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Otvaranje nije uspjelo: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Ova vrsta aplikacije ne podržava ovu radnju';

  @override
  String get starting => 'Pokretanje';

  @override
  String get restarting => 'Ponovno pokretanje';

  @override
  String get restart => 'Ponovno pokreni';

  @override
  String get closed => 'Zatvoreno';

  @override
  String operationFailed(Object e) {
    return 'Radnja nije uspjela: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – savjeti';
  }

  @override
  String get noDescription =>
      'Nema opisa. Promijenite konfiguraciju u postavkama.';

  @override
  String get checkUpdateNotSupported =>
      'Ova aplikacija ne podržava provjeru ažuriranja';

  @override
  String updateFailed(Object e) {
    return 'Ažuriranje nije uspjelo: $e';
  }

  @override
  String get confirmUninstall => 'Potvrdi deinstalaciju';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Jeste li sigurni da želite deinstalirati „$name“? Podaci se ne mogu oporaviti nakon deinstalacije.';
  }

  @override
  String get uninstall => 'Deinstaliraj';

  @override
  String get cannotUninstall => 'Nije moguće deinstalirati';

  @override
  String get uninstalled => 'Deinstalirano';

  @override
  String uninstallFailed(Object e) {
    return 'Deinstalacija nije uspjela: $e';
  }

  @override
  String get cannotRestart => 'Nije moguće ponovno pokrenuti';

  @override
  String get cannotClose => 'Nije moguće zatvoriti';

  @override
  String get running => 'Radi';

  @override
  String get open => 'Otvori';

  @override
  String get launchAndOpen => 'Pokreni i otvori';

  @override
  String get tips => 'Savjeti';

  @override
  String get checkAndUpdate => 'Provjeri i ažuriraj';

  @override
  String get close => 'Zatvori';

  @override
  String get configureServerFirst =>
      'Prvo konfigurirajte i aktivirajte poslužitelj';

  @override
  String get loginFailed => 'Prijava nije uspjela';

  @override
  String get configureServer => 'Konfiguriraj poslužitelj';

  @override
  String get username => 'Korisničko ime';

  @override
  String get password => 'Lozinka';

  @override
  String get usernameRequired => 'Unesite korisničko ime';

  @override
  String get passwordRequired => 'Unesite lozinku';

  @override
  String get passwordMinLength => 'Lozinka mora imati najmanje 5 znakova';

  @override
  String get rememberCredentials => 'Zapamti podatke za prijavu';

  @override
  String get newFolder => 'Nova mapa';

  @override
  String get newFile => 'Nova datoteka';

  @override
  String get folderName => 'Naziv mape';

  @override
  String get fileName => 'Naziv datoteke';

  @override
  String get create => 'Stvori';

  @override
  String get folderCreated => 'Mapa je stvorena';

  @override
  String get fileCreated => 'Datoteka je stvorena';

  @override
  String createFailed(Object e) {
    return 'Stvaranje nije uspjelo: $e';
  }

  @override
  String get rename => 'Preimenuj';

  @override
  String get renameFolder => 'Preimenuj mapu';

  @override
  String get renameFile => 'Preimenuj datoteku';

  @override
  String get newName => 'Novi naziv';

  @override
  String get renameSuccess => 'Uspješno preimenovano';

  @override
  String renameFailed(Object e) {
    return 'Preimenovanje nije uspjelo: $e';
  }

  @override
  String get deleteFolder => 'Izbriši mapu';

  @override
  String get deleteFile => 'Izbriši datoteku';

  @override
  String deleteConfirm(Object name) {
    return 'Izbrisati „$name“? Ova se radnja ne može poništiti.';
  }

  @override
  String get deleteSuccess => 'Uspješno izbrisano';

  @override
  String deleteFailed(Object e) {
    return 'Brisanje nije uspjelo: $e';
  }

  @override
  String get parentDirectory => 'Nadređena mapa';

  @override
  String get listView => 'Prikaz popisa';

  @override
  String get gridView => 'Prikaz rešetke';

  @override
  String get folderEmpty => 'Mapa je prazna';

  @override
  String openFile(Object name) {
    return 'Otvori datoteku: $name';
  }

  @override
  String get folder => 'Mapa';

  @override
  String get file => 'Datoteka';

  @override
  String get download => 'Preuzmi';

  @override
  String get downloadNotImplemented => 'Preuzimanje nije implementirano';

  @override
  String get downloadSuccess => 'Preuzimanje uspjelo';

  @override
  String get downloadCancelled => 'Preuzimanje otkazano';

  @override
  String get downloadPreparing => 'Priprema preuzimanja...';

  @override
  String get downloadAndPlay => 'Preuzmi i reproduciraj';

  @override
  String get downloadingForPlayback => 'Preuzimanje za reprodukciju...';

  @override
  String get fullscreen => 'Cijeli zaslon';

  @override
  String get installSuccess => 'Instalacija uspjela';

  @override
  String installSuccessWithApp(Object title) {
    return '$title je uspješno instaliran';
  }

  @override
  String installFailed(Object e) {
    return 'Instalacija nije uspjela: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Dohvat konfiguracije aplikacije nije uspio: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Prilagođena instalacija: $title';
  }

  @override
  String get editComposeHint => 'Uredite docker-compose i dodirnite instaliraj';

  @override
  String get install => 'Instaliraj';

  @override
  String get appStore => 'Trgovina aplikacijama';

  @override
  String get searchApps => 'Pretraži aplikacije';

  @override
  String get category => 'Kategorija';

  @override
  String get allCategories => 'Sve kategorije';

  @override
  String get noAppsFound => 'Nema odgovarajućih aplikacija';

  @override
  String get installed => 'Instalirano';

  @override
  String get custom => 'Prilagođeno';

  @override
  String get appDetail => 'Pojedinosti aplikacije';

  @override
  String get appNotFound => 'Aplikacija nije pronađena';

  @override
  String versionLabel(Object version) {
    return 'Verzija: $version';
  }

  @override
  String get description => 'Opis';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Ne radi';

  @override
  String get installStartNotImplemented =>
      'Instalacija/pokretanje nije implementirano (potrebno /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Deinstalacija nije implementirana (potrebno /v2/app_management/compose)';

  @override
  String get installStart => 'Instaliraj / Pokreni';

  @override
  String get legacyApps => 'Naslijeđene aplikacije (bit će obnovljene)';

  @override
  String get version => 'Verzija';

  @override
  String get cpuUsage => 'Korištenje CPU-a';

  @override
  String cores(Object count) {
    return 'Jezgre: $count';
  }

  @override
  String get memory => 'Memorija (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% korištenja';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Korišteno $used / Ukupno $total';
  }

  @override
  String get storage => 'Pohrana';

  @override
  String totalLabel(Object storage) {
    return 'Ukupno $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Korišteno $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Mreža';

  @override
  String get addServer => 'Dodaj poslužitelj';

  @override
  String get editServer => 'Uredi poslužitelj';

  @override
  String get nasType => 'Vrsta NAS-a';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Naziv poslužitelja';

  @override
  String get serverNameRequired => 'Unesite naziv poslužitelja';

  @override
  String get hostAddress => 'Adresa hosta';

  @override
  String get hostAddressHint => '192.168.1.100 ili casaos.local';

  @override
  String get hostAddressRequired => 'Unesite adresu hosta';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Unesite port';

  @override
  String get portInvalid => 'Neispravan port (1–65535)';

  @override
  String get useHttps => 'Koristi HTTPS';

  @override
  String get save => 'Spremi';

  @override
  String get noServerConfigured => 'Još nije konfiguriran poslužitelj';

  @override
  String get activate => 'Aktiviraj';

  @override
  String get edit => 'Uredi';

  @override
  String get confirmDelete => 'Potvrdi brisanje';

  @override
  String confirmDeleteServer(Object name) {
    return 'Izbrisati poslužitelj „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Dobro došli u CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Prvo stvorimo vaš početni račun.';

  @override
  String get createAccount => 'Stvori račun';

  @override
  String get start => 'Počni →';

  @override
  String get confirmPassword => 'Potvrdi lozinku';

  @override
  String get confirmPasswordRequired => 'Ponovno unesite lozinku';

  @override
  String get passwordMismatch => 'Lozinke se ne podudaraju';

  @override
  String get allDone => 'Gotovo!';

  @override
  String get accountCreatedHint =>
      'Vaš je račun stvoren. Prijeđite na radnu površinu za CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Idi na radnu površinu';

  @override
  String get cannotGetInitKey =>
      'Nije moguće dohvatiti init ključ. Provjerite poslužitelj.';

  @override
  String initFailed(Object e) {
    return 'Inicijalizacija nije uspjela: $e';
  }

  @override
  String get openAppWith => 'Otvori aplikaciju pomoću';

  @override
  String get builtinBrowser => 'Ugrađeni preglednik';

  @override
  String get systemBrowser => 'Preglednik sustava';

  @override
  String get openInSystemBrowser => 'Otvori u pregledniku sustava';

  @override
  String get loading => 'Učitavanje...';
}
