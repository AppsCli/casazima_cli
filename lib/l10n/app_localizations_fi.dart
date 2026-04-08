// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS -asiakas';

  @override
  String get settings => 'Asetukset';

  @override
  String get about => 'Tietoja';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get openSource => 'Avoin lähdekoodi';

  @override
  String get tapToOpen => 'Napauta avataksesi selaimessa';

  @override
  String get themeMode => 'Teema';

  @override
  String get followSystem => 'Järjestelmän mukainen';

  @override
  String get lightMode => 'Vaalea';

  @override
  String get darkMode => 'Tumma';

  @override
  String get themeColor => 'Teemaväri';

  @override
  String get themeColorDescription =>
      'Valitse teemaväri; koskee sekä vaaleaa että tummaa tilaa.';

  @override
  String get language => 'Kieli';

  @override
  String get languageFollowSystem => 'Järjestelmän mukainen';

  @override
  String get files => 'Tiedostot';

  @override
  String get serverConfig => 'Palvelin';

  @override
  String get refresh => 'Päivitä';

  @override
  String get user => 'Käyttäjä';

  @override
  String get login => 'Kirjaudu';

  @override
  String get home => 'Koti';

  @override
  String get welcome => 'Tervetuloa';

  @override
  String get logout => 'Kirjaudu ulos';

  @override
  String get systemStatus => 'Järjestelmän tila';

  @override
  String get error => 'Virhe';

  @override
  String get apps => 'Sovellukset';

  @override
  String appCount(Object count) {
    return 'Yhteensä $count';
  }

  @override
  String get noApps => 'Ei sovelluksia';

  @override
  String get cancel => 'Peruuta';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get back => 'Takaisin';

  @override
  String get delete => 'Poista';

  @override
  String get cannotGetAppAddress => 'Sovelluksen osoitetta ei saatu';

  @override
  String cannotOpen(Object url) {
    return 'Ei voitu avata: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Avaaminen epäonnistui: $e';
  }

  @override
  String get appTypeNotSupported => 'Tämä sovellustyyppi ei tue tätä toimintoa';

  @override
  String get starting => 'Käynnistetään';

  @override
  String get restarting => 'Käynnistetään uudelleen';

  @override
  String get restart => 'Käynnistä uudelleen';

  @override
  String get closed => 'Suljettu';

  @override
  String operationFailed(Object e) {
    return 'Toiminto epäonnistui: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – vinkit';
  }

  @override
  String get noDescription => 'Ei kuvausta. Muokkaa asetuksista.';

  @override
  String get checkUpdateNotSupported =>
      'Tämä sovellus ei tue päivitysten tarkistusta';

  @override
  String updateFailed(Object e) {
    return 'Päivitys epäonnistui: $e';
  }

  @override
  String get confirmUninstall => 'Vahvista asennuksen poisto';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Haluatko varmasti poistaa asennuksen sovellukselle \"$name\"? Tietoja ei voi palauttaa.';
  }

  @override
  String get uninstall => 'Poista asennus';

  @override
  String get cannotUninstall => 'Asennusta ei voi poistaa';

  @override
  String get uninstalled => 'Asennus poistettu';

  @override
  String uninstallFailed(Object e) {
    return 'Asennuksen poisto epäonnistui: $e';
  }

  @override
  String get cannotRestart => 'Uudelleenkäynnistys ei onnistu';

  @override
  String get cannotClose => 'Sulkeminen ei onnistu';

  @override
  String get running => 'Käynnissä';

  @override
  String get open => 'Avaa';

  @override
  String get launchAndOpen => 'Käynnistä ja avaa';

  @override
  String get tips => 'Vinkit';

  @override
  String get checkAndUpdate => 'Tarkista ja päivitä';

  @override
  String get close => 'Sulje';

  @override
  String get configureServerFirst => 'Määritä ja aktivoi palvelin ensin';

  @override
  String get loginFailed => 'Kirjautuminen epäonnistui';

  @override
  String get configureServer => 'Määritä palvelin';

  @override
  String get username => 'Käyttäjätunnus';

  @override
  String get password => 'Salasana';

  @override
  String get usernameRequired => 'Syötä käyttäjätunnus';

  @override
  String get passwordRequired => 'Syötä salasana';

  @override
  String get passwordMinLength => 'Salasanan on oltava vähintään 5 merkkiä';

  @override
  String get rememberCredentials => 'Muista kirjautumistiedot';

  @override
  String get newFolder => 'Uusi kansio';

  @override
  String get newFile => 'Uusi tiedosto';

  @override
  String get folderName => 'Kansion nimi';

  @override
  String get fileName => 'Tiedoston nimi';

  @override
  String get create => 'Luo';

  @override
  String get folderCreated => 'Kansio luotu';

  @override
  String get fileCreated => 'Tiedosto luotu';

  @override
  String createFailed(Object e) {
    return 'Luonti epäonnistui: $e';
  }

  @override
  String get rename => 'Nimeä uudelleen';

  @override
  String get renameFolder => 'Nimeä kansio uudelleen';

  @override
  String get renameFile => 'Nimeä tiedosto uudelleen';

  @override
  String get newName => 'Uusi nimi';

  @override
  String get renameSuccess => 'Nimi vaihdettu';

  @override
  String renameFailed(Object e) {
    return 'Uudelleennimeäminen epäonnistui: $e';
  }

  @override
  String get deleteFolder => 'Poista kansio';

  @override
  String get deleteFile => 'Poista tiedosto';

  @override
  String deleteConfirm(Object name) {
    return 'Poistetaanko \"$name\"? Toimintoa ei voi perua.';
  }

  @override
  String get deleteSuccess => 'Poistettu';

  @override
  String deleteFailed(Object e) {
    return 'Poisto epäonnistui: $e';
  }

  @override
  String get parentDirectory => 'Yläkansio';

  @override
  String get listView => 'Luettelo';

  @override
  String get gridView => 'Ruudukko';

  @override
  String get folderEmpty => 'Kansio on tyhjä';

  @override
  String openFile(Object name) {
    return 'Avaa tiedosto: $name';
  }

  @override
  String get folder => 'Kansio';

  @override
  String get file => 'Tiedosto';

  @override
  String get download => 'Lataa';

  @override
  String get downloadNotImplemented => 'Latausta ei ole toteutettu';

  @override
  String get downloadSuccess => 'Lataus onnistui';

  @override
  String get downloadCancelled => 'Lataus peruutettu';

  @override
  String get downloadPreparing => 'Valmistellaan latausta...';

  @override
  String get downloadAndPlay => 'Lataa ja toista';

  @override
  String get downloadingForPlayback => 'Ladataan toistoa varten...';

  @override
  String get fullscreen => 'Koko näyttö';

  @override
  String get installSuccess => 'Asennus onnistui';

  @override
  String installSuccessWithApp(Object title) {
    return '$title asennettiin';
  }

  @override
  String installFailed(Object e) {
    return 'Asennus epäonnistui: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Sovelluksen asetuksia ei saatu: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Mukautettu asennus: $title';
  }

  @override
  String get editComposeHint => 'Muokkaa docker-composea ja napauta asenna';

  @override
  String get install => 'Asenna';

  @override
  String get appStore => 'Sovelluskauppa';

  @override
  String get searchApps => 'Etsi sovelluksia';

  @override
  String get category => 'Luokka';

  @override
  String get allCategories => 'Kaikki luokat';

  @override
  String get noAppsFound => 'Ei vastaavia sovelluksia';

  @override
  String get installed => 'Asennettu';

  @override
  String get custom => 'Mukautettu';

  @override
  String get appDetail => 'Sovelluksen tiedot';

  @override
  String get appNotFound => 'Sovellusta ei löytynyt';

  @override
  String versionLabel(Object version) {
    return 'Versio: $version';
  }

  @override
  String get description => 'Kuvaus';

  @override
  String get status => 'Tila';

  @override
  String get notRunning => 'Ei käynnissä';

  @override
  String get installStartNotImplemented =>
      'Asennus/käynnistys ei ole toteutettu (vaatii /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Asennuksen poisto ei ole toteutettu (vaatii /v2/app_management/compose)';

  @override
  String get installStart => 'Asenna / Käynnistä';

  @override
  String get legacyApps => 'Vanhat sovellukset (uudelleenrakennetaan)';

  @override
  String get version => 'Versio';

  @override
  String get cpuUsage => 'CPU-käyttö';

  @override
  String cores(Object count) {
    return 'Ytimet: $count';
  }

  @override
  String get memory => 'Muisti (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'Käytössä $percent %';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Käytetty $used / Yhteensä $total';
  }

  @override
  String get storage => 'Tallennustila';

  @override
  String totalLabel(Object storage) {
    return 'Yhteensä $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Käytetty $used · $percent %';
  }

  @override
  String get disk => 'Levy';

  @override
  String get networkStatus => 'Verkko';

  @override
  String get addServer => 'Lisää palvelin';

  @override
  String get editServer => 'Muokkaa palvelinta';

  @override
  String get nasType => 'NAS-tyyppi';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Palvelimen nimi';

  @override
  String get serverNameRequired => 'Syötä palvelimen nimi';

  @override
  String get hostAddress => 'Isäntän osoite';

  @override
  String get hostAddressHint => '192.168.1.100 tai casaos.local';

  @override
  String get hostAddressRequired => 'Syötä isäntän osoite';

  @override
  String get port => 'Portti';

  @override
  String get portRequired => 'Syötä portti';

  @override
  String get portInvalid => 'Virheellinen portti (1–65535)';

  @override
  String get useHttps => 'Käytä HTTPS:ää';

  @override
  String get save => 'Tallenna';

  @override
  String get noServerConfigured => 'Palvelinta ei ole vielä määritetty';

  @override
  String get activate => 'Aktivoi';

  @override
  String get edit => 'Muokkaa';

  @override
  String get confirmDelete => 'Vahvista poisto';

  @override
  String confirmDeleteServer(Object name) {
    return 'Poistetaanko palvelin \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Tervetuloa CasaOS / ZimaOS -järjestelmään';

  @override
  String get createAccountHint => 'Luodaan ensin alkuperäinen tilisi.';

  @override
  String get createAccount => 'Luo tili';

  @override
  String get start => 'Aloita →';

  @override
  String get confirmPassword => 'Vahvista salasana';

  @override
  String get confirmPasswordRequired => 'Syötä salasana uudelleen';

  @override
  String get passwordMismatch => 'Salasanat eivät täsmää';

  @override
  String get allDone => 'Valmista!';

  @override
  String get accountCreatedHint =>
      'Tilisi on luotu. Siirry työpöydälle käyttämään CasaOS / ZimaOS -järjestelmää.';

  @override
  String get enterDesktop => 'Siirry työpöydälle';

  @override
  String get cannotGetInitKey => 'Init-avainta ei saatu. Tarkista palvelin.';

  @override
  String initFailed(Object e) {
    return 'Alustus epäonnistui: $e';
  }

  @override
  String get openAppWith => 'Avaa sovellus';

  @override
  String get builtinBrowser => 'Sisäänrakennettu selain';

  @override
  String get systemBrowser => 'Järjestelmän selain';

  @override
  String get openInSystemBrowser => 'Avaa järjestelmän selaimessa';

  @override
  String get loading => 'Ladataan...';
}
