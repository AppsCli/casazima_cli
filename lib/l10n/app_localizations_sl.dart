// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Odjemalec CasaOS / ZimaOS';

  @override
  String get settings => 'Nastavitve';

  @override
  String get about => 'O aplikaciji';

  @override
  String get appearance => 'Videz';

  @override
  String get openSource => 'Odprta koda';

  @override
  String get tapToOpen => 'Tapnite za odpiranje v brskalniku';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Kot sistem';

  @override
  String get lightMode => 'Svetla';

  @override
  String get darkMode => 'Temna';

  @override
  String get themeColor => 'Barva teme';

  @override
  String get themeColorDescription =>
      'Izberite barvo teme; velja za svetli in temni način.';

  @override
  String get language => 'Jezik';

  @override
  String get languageFollowSystem => 'Kot sistem';

  @override
  String get files => 'Datoteke';

  @override
  String get serverConfig => 'Strežnik';

  @override
  String get refresh => 'Osveži';

  @override
  String get user => 'Uporabnik';

  @override
  String get login => 'Prijava';

  @override
  String get home => 'Domov';

  @override
  String get welcome => 'Dobrodošli';

  @override
  String get logout => 'Odjava';

  @override
  String get systemStatus => 'Stanje sistema';

  @override
  String get error => 'Napaka';

  @override
  String get apps => 'Aplikacije';

  @override
  String appCount(Object count) {
    return 'Skupaj $count';
  }

  @override
  String get noApps => 'Ni aplikacij';

  @override
  String get cancel => 'Prekliči';

  @override
  String get ok => 'V redu';

  @override
  String get retry => 'Poskusi znova';

  @override
  String get back => 'Nazaj';

  @override
  String get delete => 'Izbriši';

  @override
  String get cannotGetAppAddress => 'Naslova aplikacije ni mogoče pridobiti';

  @override
  String cannotOpen(Object url) {
    return 'Ni mogoče odpreti: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Odpiranje ni uspelo: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Ta vrsta aplikacije ne podpira tega dejanja';

  @override
  String get starting => 'Zaganjanje';

  @override
  String get restarting => 'Ponovno zaganjanje';

  @override
  String get restart => 'Ponovno zaženi';

  @override
  String get closed => 'Zaprto';

  @override
  String operationFailed(Object e) {
    return 'Dejanje ni uspelo: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – nasveti';
  }

  @override
  String get noDescription =>
      'Ni opisa. Spremenite konfiguracijo v nastavitvah.';

  @override
  String get checkUpdateNotSupported =>
      'Ta aplikacija ne podpira preverjanja posodobitev';

  @override
  String updateFailed(Object e) {
    return 'Posodobitev ni uspela: $e';
  }

  @override
  String get confirmUninstall => 'Potrdi odstranitev';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Ali res želite odstraniti „$name“? Po odstranitvi podatkov ni mogoče obnoviti.';
  }

  @override
  String get uninstall => 'Odstrani';

  @override
  String get cannotUninstall => 'Ni mogoče odstraniti';

  @override
  String get uninstalled => 'Odstranjeno';

  @override
  String uninstallFailed(Object e) {
    return 'Odstranitev ni uspela: $e';
  }

  @override
  String get cannotRestart => 'Ni mogoče ponovno zagnati';

  @override
  String get cannotClose => 'Ni mogoče zapreti';

  @override
  String get running => 'Teče';

  @override
  String get open => 'Odpri';

  @override
  String get launchAndOpen => 'Zaženi in odpri';

  @override
  String get tips => 'Nasveti';

  @override
  String get checkAndUpdate => 'Preveri in posodobi';

  @override
  String get close => 'Zapri';

  @override
  String get configureServerFirst =>
      'Najprej nastavite in aktivirajte strežnik';

  @override
  String get loginFailed => 'Prijava ni uspela';

  @override
  String get configureServer => 'Nastavi strežnik';

  @override
  String get username => 'Uporabniško ime';

  @override
  String get password => 'Geslo';

  @override
  String get usernameRequired => 'Vnesite uporabniško ime';

  @override
  String get passwordRequired => 'Vnesite geslo';

  @override
  String get passwordMinLength => 'Geslo mora imeti vsaj 5 znakov';

  @override
  String get rememberCredentials => 'Zapomni si podatke za prijavo';

  @override
  String get newFolder => 'Nova mapa';

  @override
  String get newFile => 'Nova datoteka';

  @override
  String get folderName => 'Ime mape';

  @override
  String get fileName => 'Ime datoteke';

  @override
  String get create => 'Ustvari';

  @override
  String get folderCreated => 'Mapa je ustvarjena';

  @override
  String get fileCreated => 'Datoteka je ustvarjena';

  @override
  String createFailed(Object e) {
    return 'Ustvarjanje ni uspelo: $e';
  }

  @override
  String get rename => 'Preimenuj';

  @override
  String get renameFolder => 'Preimenuj mapo';

  @override
  String get renameFile => 'Preimenuj datoteko';

  @override
  String get newName => 'Novo ime';

  @override
  String get renameSuccess => 'Uspešno preimenovano';

  @override
  String renameFailed(Object e) {
    return 'Preimenovanje ni uspelo: $e';
  }

  @override
  String get deleteFolder => 'Izbriši mapo';

  @override
  String get deleteFile => 'Izbriši datoteko';

  @override
  String deleteConfirm(Object name) {
    return 'Izbrisati „$name“? Tega dejanja ni mogoče razveljaviti.';
  }

  @override
  String get deleteSuccess => 'Uspešno izbrisano';

  @override
  String deleteFailed(Object e) {
    return 'Brisanje ni uspelo: $e';
  }

  @override
  String get parentDirectory => 'Nadrejena mapa';

  @override
  String get listView => 'Seznam';

  @override
  String get gridView => 'Mreža';

  @override
  String get folderEmpty => 'Mapa je prazna';

  @override
  String openFile(Object name) {
    return 'Odpri datoteko: $name';
  }

  @override
  String get folder => 'Mapa';

  @override
  String get file => 'Datoteka';

  @override
  String get download => 'Prenesi';

  @override
  String get downloadNotImplemented => 'Prenos ni implementiran';

  @override
  String get downloadSuccess => 'Prenos uspešen';

  @override
  String get downloadCancelled => 'Prenos preklican';

  @override
  String get downloadPreparing => 'Priprava prenosa...';

  @override
  String get downloadAndPlay => 'Prenesi in predvajaj';

  @override
  String get downloadingForPlayback => 'Prenašanje za predvajanje...';

  @override
  String get fullscreen => 'Cel zaslon';

  @override
  String get installSuccess => 'Namestitev uspešna';

  @override
  String installSuccessWithApp(Object title) {
    return '$title je uspešno nameščen';
  }

  @override
  String installFailed(Object e) {
    return 'Namestitev ni uspela: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Konfiguracije aplikacije ni mogoče pridobiti: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Prilagojena namestitev: $title';
  }

  @override
  String get editComposeHint => 'Uredite docker-compose in tapnite namesti';

  @override
  String get install => 'Namesti';

  @override
  String get appStore => 'Trgovina z aplikacijami';

  @override
  String get searchApps => 'Iskanje aplikacij';

  @override
  String get category => 'Kategorija';

  @override
  String get allCategories => 'Vse kategorije';

  @override
  String get noAppsFound => 'Ni ujemajočih se aplikacij';

  @override
  String get installed => 'Nameščeno';

  @override
  String get custom => 'Po meri';

  @override
  String get appDetail => 'Podrobnosti aplikacije';

  @override
  String get appNotFound => 'Aplikacija ni najdena';

  @override
  String versionLabel(Object version) {
    return 'Različica: $version';
  }

  @override
  String get description => 'Opis';

  @override
  String get status => 'Stanje';

  @override
  String get notRunning => 'Ne teče';

  @override
  String get installStartNotImplemented =>
      'Namestitev/zagon ni implementiran (zahteva /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Odstranitev ni implementirana (zahteva /v2/app_management/compose)';

  @override
  String get installStart => 'Namesti / Zaženi';

  @override
  String get legacyApps => 'Stare aplikacije (bodo obnovljene)';

  @override
  String get version => 'Različica';

  @override
  String get cpuUsage => 'Obremenitev CPE';

  @override
  String cores(Object count) {
    return 'Jedra: $count';
  }

  @override
  String get memory => 'Pomnilnik (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% obremenitve';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Uporabljeno $used / Skupaj $total';
  }

  @override
  String get storage => 'Shranjevanje';

  @override
  String totalLabel(Object storage) {
    return 'Skupaj $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Uporabljeno $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Omrežje';

  @override
  String get addServer => 'Dodaj strežnik';

  @override
  String get editServer => 'Uredi strežnik';

  @override
  String get nasType => 'Vrsta NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Ime strežnika';

  @override
  String get serverNameRequired => 'Vnesite ime strežnika';

  @override
  String get hostAddress => 'Naslov gostitelja';

  @override
  String get hostAddressHint => '192.168.1.100 ali casaos.local';

  @override
  String get hostAddressRequired => 'Vnesite naslov gostitelja';

  @override
  String get port => 'Vrata';

  @override
  String get portRequired => 'Vnesite vrata';

  @override
  String get portInvalid => 'Neveljavna vrata (1–65535)';

  @override
  String get useHttps => 'Uporabi HTTPS';

  @override
  String get save => 'Shrani';

  @override
  String get noServerConfigured => 'Strežnik še ni nastavljen';

  @override
  String get activate => 'Aktiviraj';

  @override
  String get edit => 'Uredi';

  @override
  String get confirmDelete => 'Potrdi brisanje';

  @override
  String confirmDeleteServer(Object name) {
    return 'Izbrisati strežnik „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Dobrodošli v CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Najprej ustvarimo vaš začetni račun.';

  @override
  String get createAccount => 'Ustvari račun';

  @override
  String get start => 'Začni →';

  @override
  String get confirmPassword => 'Potrdi geslo';

  @override
  String get confirmPasswordRequired => 'Ponovno vnesite geslo';

  @override
  String get passwordMismatch => 'Gesli se ne ujemata';

  @override
  String get allDone => 'Končano!';

  @override
  String get accountCreatedHint =>
      'Račun je ustvarjen. Pojdite na namizje za CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Pojdi na namizje';

  @override
  String get cannotGetInitKey =>
      'Ključa init ni mogoče pridobiti. Preverite strežnik.';

  @override
  String initFailed(Object e) {
    return 'Inicializacija ni uspela: $e';
  }

  @override
  String get openAppWith => 'Odpri aplikacijo z';

  @override
  String get builtinBrowser => 'Vgrajen brskalnik';

  @override
  String get systemBrowser => 'Sistemski brskalnik';

  @override
  String get openInSystemBrowser => 'Odpri v sistemskem brskalniku';

  @override
  String get loading => 'Nalaganje...';
}
