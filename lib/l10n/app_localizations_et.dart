// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS klient';

  @override
  String get settings => 'Sätted';

  @override
  String get about => 'Teave';

  @override
  String get appearance => 'Välimus';

  @override
  String get openSource => 'Avatud lähtekood';

  @override
  String get tapToOpen => 'Puudutage brauseris avamiseks';

  @override
  String get themeMode => 'Teema';

  @override
  String get followSystem => 'Järgi süsteemi';

  @override
  String get lightMode => 'Hele';

  @override
  String get darkMode => 'Tume';

  @override
  String get themeColor => 'Teema värv';

  @override
  String get themeColorDescription =>
      'Valige teema värv; kehtib nii heledale kui tumedale režiimile.';

  @override
  String get language => 'Keel';

  @override
  String get languageFollowSystem => 'Järgi süsteemi';

  @override
  String get files => 'Failid';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Värskenda';

  @override
  String get user => 'Kasutaja';

  @override
  String get login => 'Logi sisse';

  @override
  String get home => 'Avaleht';

  @override
  String get welcome => 'Tere tulemast';

  @override
  String get logout => 'Logi välja';

  @override
  String get systemStatus => 'Süsteemi olek';

  @override
  String get error => 'Viga';

  @override
  String get apps => 'Rakendused';

  @override
  String appCount(Object count) {
    return 'Kokku $count';
  }

  @override
  String get noApps => 'Rakendusi pole';

  @override
  String get cancel => 'Tühista';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Proovi uuesti';

  @override
  String get back => 'Tagasi';

  @override
  String get delete => 'Kustuta';

  @override
  String get cannotGetAppAddress => 'Rakenduse aadressi ei saa kätte';

  @override
  String cannotOpen(Object url) {
    return 'Ei saa avada: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Avamine ebaõnnestus: $e';
  }

  @override
  String get appTypeNotSupported => 'See rakendusetüüp ei toeta seda toimingut';

  @override
  String get starting => 'Käivitamine';

  @override
  String get restarting => 'Taaskäivitamine';

  @override
  String get restart => 'Taaskäivita';

  @override
  String get closed => 'Suletud';

  @override
  String operationFailed(Object e) {
    return 'Toiming ebaõnnestus: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – näpunäited';
  }

  @override
  String get noDescription => 'Kirjeldust pole. Muutke seadistust sätetes.';

  @override
  String get checkUpdateNotSupported =>
      'See rakendus ei toeta uuenduste kontrolli';

  @override
  String updateFailed(Object e) {
    return 'Uuendamine ebaõnnestus: $e';
  }

  @override
  String get confirmUninstall => 'Kinnita desinstallimine';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Kas soovite kindlasti desinstallida „$name“? Pärast desinstallimist andmeid ei taasta.';
  }

  @override
  String get uninstall => 'Desinstalli';

  @override
  String get cannotUninstall => 'Ei saa desinstallida';

  @override
  String get uninstalled => 'Desinstallitud';

  @override
  String uninstallFailed(Object e) {
    return 'Desinstallimine ebaõnnestus: $e';
  }

  @override
  String get cannotRestart => 'Ei saa taaskäivitada';

  @override
  String get cannotClose => 'Ei saa sulgeda';

  @override
  String get running => 'Töötab';

  @override
  String get open => 'Ava';

  @override
  String get launchAndOpen => 'Käivita ja ava';

  @override
  String get tips => 'Näpunäited';

  @override
  String get checkAndUpdate => 'Kontrolli ja uuenda';

  @override
  String get close => 'Sulge';

  @override
  String get configureServerFirst =>
      'Konfigureerige ja aktiveerige esmalt server';

  @override
  String get loginFailed => 'Sisselogimine ebaõnnestus';

  @override
  String get configureServer => 'Konfigureeri server';

  @override
  String get username => 'Kasutajanimi';

  @override
  String get password => 'Parool';

  @override
  String get usernameRequired => 'Sisestage kasutajanimi';

  @override
  String get passwordRequired => 'Sisestage parool';

  @override
  String get passwordMinLength => 'Parool peab olema vähemalt 5 tähemärki';

  @override
  String get rememberCredentials => 'Jäta mandaat meelde';

  @override
  String get newFolder => 'Uus kaust';

  @override
  String get newFile => 'Uus fail';

  @override
  String get folderName => 'Kausta nimi';

  @override
  String get fileName => 'Faili nimi';

  @override
  String get create => 'Loo';

  @override
  String get folderCreated => 'Kaust loodud';

  @override
  String get fileCreated => 'Fail loodud';

  @override
  String createFailed(Object e) {
    return 'Loomine ebaõnnestus: $e';
  }

  @override
  String get rename => 'Nimeta ümber';

  @override
  String get renameFolder => 'Nimeta kaust ümber';

  @override
  String get renameFile => 'Nimeta fail ümber';

  @override
  String get newName => 'Uus nimi';

  @override
  String get renameSuccess => 'Ümbernimetamine õnnestus';

  @override
  String renameFailed(Object e) {
    return 'Ümbernimetamine ebaõnnestus: $e';
  }

  @override
  String get deleteFolder => 'Kustuta kaust';

  @override
  String get deleteFile => 'Kustuta fail';

  @override
  String deleteConfirm(Object name) {
    return 'Kustutada „$name“? Seda toimingut ei saa tagasi võtta.';
  }

  @override
  String get deleteSuccess => 'Kustutatud';

  @override
  String deleteFailed(Object e) {
    return 'Kustutamine ebaõnnestus: $e';
  }

  @override
  String get parentDirectory => 'Ülemkaust';

  @override
  String get listView => 'Loendivaade';

  @override
  String get gridView => 'Ruudustikuvaade';

  @override
  String get folderEmpty => 'Kaust on tühi';

  @override
  String openFile(Object name) {
    return 'Ava fail: $name';
  }

  @override
  String get folder => 'Kaust';

  @override
  String get file => 'Fail';

  @override
  String get download => 'Laadi alla';

  @override
  String get downloadNotImplemented => 'Allalaadimine pole rakendatud';

  @override
  String get downloadSuccess => 'Allalaadimine õnnestus';

  @override
  String get downloadCancelled => 'Allalaadimine tühistatud';

  @override
  String get downloadPreparing => 'Valmistatakse allalaadimist...';

  @override
  String get downloadAndPlay => 'Laadi alla ja esita';

  @override
  String get downloadingForPlayback => 'Allalaadimine esitamiseks...';

  @override
  String get fullscreen => 'Täisekraan';

  @override
  String get installSuccess => 'Installimine õnnestus';

  @override
  String installSuccessWithApp(Object title) {
    return '$title installitud';
  }

  @override
  String installFailed(Object e) {
    return 'Installimine ebaõnnestus: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Rakenduse seadistust ei saa kätte: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Kohandatud install: $title';
  }

  @override
  String get editComposeHint => 'Muutke docker-compose ja puudutage installi';

  @override
  String get install => 'Installi';

  @override
  String get appStore => 'Rakenduste pood';

  @override
  String get searchApps => 'Otsi rakendusi';

  @override
  String get category => 'Kategooria';

  @override
  String get allCategories => 'Kõik kategooriad';

  @override
  String get noAppsFound => 'Sobivaid rakendusi pole';

  @override
  String get installed => 'Installitud';

  @override
  String get custom => 'Kohandatud';

  @override
  String get appDetail => 'Rakenduse üksikasjad';

  @override
  String get appNotFound => 'Rakendust ei leitud';

  @override
  String versionLabel(Object version) {
    return 'Versioon: $version';
  }

  @override
  String get description => 'Kirjeldus';

  @override
  String get status => 'Olek';

  @override
  String get notRunning => 'Ei tööta';

  @override
  String get installStartNotImplemented =>
      'Install/käivitus pole rakendatud (vajalik /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Desinstall pole rakendatud (vajalik /v2/app_management/compose)';

  @override
  String get installStart => 'Installi / Käivita';

  @override
  String get legacyApps => 'Vanad rakendused (ehitatakse ümber)';

  @override
  String get version => 'Versioon';

  @override
  String get cpuUsage => 'CPU kasutus';

  @override
  String cores(Object count) {
    return 'Tuumad: $count';
  }

  @override
  String get memory => 'Mälu (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% kasutus';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Kasutatud $used / Kokku $total';
  }

  @override
  String get storage => 'Salvestusruum';

  @override
  String totalLabel(Object storage) {
    return 'Kokku $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Kasutatud $used · $percent%';
  }

  @override
  String get disk => 'Ketas';

  @override
  String get networkStatus => 'Võrk';

  @override
  String get addServer => 'Lisa server';

  @override
  String get editServer => 'Muuda serverit';

  @override
  String get nasType => 'NAS tüüp';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Serveri nimi';

  @override
  String get serverNameRequired => 'Sisestage serveri nimi';

  @override
  String get hostAddress => 'Hosti aadress';

  @override
  String get hostAddressHint => '192.168.1.100 või casaos.local';

  @override
  String get hostAddressRequired => 'Sisestage hosti aadress';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Sisestage port';

  @override
  String get portInvalid => 'Sobimatu port (1–65535)';

  @override
  String get useHttps => 'Kasuta HTTPS-i';

  @override
  String get save => 'Salvesta';

  @override
  String get noServerConfigured => 'Serverit pole veel seadistatud';

  @override
  String get activate => 'Aktiveeri';

  @override
  String get edit => 'Muuda';

  @override
  String get confirmDelete => 'Kinnita kustutamine';

  @override
  String confirmDeleteServer(Object name) {
    return 'Kustutada server „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Tere tulemast CasaOS / ZimaOS-i';

  @override
  String get createAccountHint => 'Loome esmalt teie esialgse konto.';

  @override
  String get createAccount => 'Loo konto';

  @override
  String get start => 'Alusta →';

  @override
  String get confirmPassword => 'Kinnita parool';

  @override
  String get confirmPasswordRequired => 'Sisestage parool uuesti';

  @override
  String get passwordMismatch => 'Paroolid ei ühti';

  @override
  String get allDone => 'Valmis!';

  @override
  String get accountCreatedHint =>
      'Konto on loodud. Avage töölaud CasaOS / ZimaOS jaoks.';

  @override
  String get enterDesktop => 'Ava töölaud';

  @override
  String get cannotGetInitKey =>
      'Init võtit ei saa kätte. Kontrollige serverit.';

  @override
  String initFailed(Object e) {
    return 'Initsialiseerimine ebaõnnestus: $e';
  }

  @override
  String get openAppWith => 'Ava rakendus rakendusega';

  @override
  String get builtinBrowser => 'Sisseehitatud brauser';

  @override
  String get systemBrowser => 'Süsteemibrauser';

  @override
  String get openInSystemBrowser => 'Ava süsteemibrauseris';

  @override
  String get loading => 'Laadimine...';
}
