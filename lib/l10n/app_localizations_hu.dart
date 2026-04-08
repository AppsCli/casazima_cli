// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS kliens';

  @override
  String get settings => 'Beállítások';

  @override
  String get about => 'Névjegy';

  @override
  String get appearance => 'Megjelenés';

  @override
  String get openSource => 'Nyílt forráskód';

  @override
  String get tapToOpen => 'Koppintson a böngészőben való megnyitáshoz';

  @override
  String get themeMode => 'Téma';

  @override
  String get followSystem => 'Rendszer szerint';

  @override
  String get lightMode => 'Világos';

  @override
  String get darkMode => 'Sötét';

  @override
  String get themeColor => 'Témaszín';

  @override
  String get themeColorDescription =>
      'Válasszon témaszínt; világos és sötét módban is érvényes.';

  @override
  String get language => 'Nyelv';

  @override
  String get languageFollowSystem => 'Rendszer szerint';

  @override
  String get files => 'Fájlok';

  @override
  String get serverConfig => 'Kiszolgáló';

  @override
  String get refresh => 'Frissítés';

  @override
  String get user => 'Felhasználó';

  @override
  String get login => 'Bejelentkezés';

  @override
  String get home => 'Kezdőlap';

  @override
  String get welcome => 'Üdvözöljük';

  @override
  String get logout => 'Kijelentkezés';

  @override
  String get systemStatus => 'Rendszerállapot';

  @override
  String get error => 'Hiba';

  @override
  String get apps => 'Alkalmazások';

  @override
  String appCount(Object count) {
    return 'Összesen $count';
  }

  @override
  String get noApps => 'Nincs alkalmazás';

  @override
  String get cancel => 'Mégse';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Újra';

  @override
  String get back => 'Vissza';

  @override
  String get delete => 'Törlés';

  @override
  String get cannotGetAppAddress => 'Az alkalmazás címe nem kérhető le';

  @override
  String cannotOpen(Object url) {
    return 'Nem nyitható meg: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Megnyitás sikertelen: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Ez az alkalmazástípus nem támogatja ezt a műveletet';

  @override
  String get starting => 'Indítás';

  @override
  String get restarting => 'Újraindítás';

  @override
  String get restart => 'Újraindítás';

  @override
  String get closed => 'Bezárva';

  @override
  String operationFailed(Object e) {
    return 'A művelet sikertelen: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – tippek';
  }

  @override
  String get noDescription =>
      'Nincs leírás. A beállításokban módosíthatja a konfigurációt.';

  @override
  String get checkUpdateNotSupported =>
      'Ez az alkalmazás nem támogatja a frissítések ellenőrzését';

  @override
  String updateFailed(Object e) {
    return 'A frissítés sikertelen: $e';
  }

  @override
  String get confirmUninstall => 'Eltávolítás megerősítése';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Biztosan eltávolítja a(z) „$name” alkalmazást? Az eltávolítás után az adatok nem állíthatók vissza.';
  }

  @override
  String get uninstall => 'Eltávolítás';

  @override
  String get cannotUninstall => 'Nem távolítható el';

  @override
  String get uninstalled => 'Eltávolítva';

  @override
  String uninstallFailed(Object e) {
    return 'Az eltávolítás sikertelen: $e';
  }

  @override
  String get cannotRestart => 'Nem indítható újra';

  @override
  String get cannotClose => 'Nem zárható be';

  @override
  String get running => 'Fut';

  @override
  String get open => 'Megnyitás';

  @override
  String get launchAndOpen => 'Indítás és megnyitás';

  @override
  String get tips => 'Tippek';

  @override
  String get checkAndUpdate => 'Ellenőrzés és frissítés';

  @override
  String get close => 'Bezárás';

  @override
  String get configureServerFirst =>
      'Először állítson be és aktiváljon egy kiszolgálót';

  @override
  String get loginFailed => 'A bejelentkezés sikertelen';

  @override
  String get configureServer => 'Kiszolgáló beállítása';

  @override
  String get username => 'Felhasználónév';

  @override
  String get password => 'Jelszó';

  @override
  String get usernameRequired => 'Adja meg a felhasználónevet';

  @override
  String get passwordRequired => 'Adja meg a jelszót';

  @override
  String get passwordMinLength => 'A jelszó legalább 5 karakter legyen';

  @override
  String get rememberCredentials => 'Bejelentkezési adatok megjegyzése';

  @override
  String get newFolder => 'Új mappa';

  @override
  String get newFile => 'Új fájl';

  @override
  String get folderName => 'Mappa neve';

  @override
  String get fileName => 'Fájl neve';

  @override
  String get create => 'Létrehozás';

  @override
  String get folderCreated => 'A mappa létrejött';

  @override
  String get fileCreated => 'A fájl létrejött';

  @override
  String createFailed(Object e) {
    return 'A létrehozás sikertelen: $e';
  }

  @override
  String get rename => 'Átnevezés';

  @override
  String get renameFolder => 'Mappa átnevezése';

  @override
  String get renameFile => 'Fájl átnevezése';

  @override
  String get newName => 'Új név';

  @override
  String get renameSuccess => 'Sikeres átnevezés';

  @override
  String renameFailed(Object e) {
    return 'Az átnevezés sikertelen: $e';
  }

  @override
  String get deleteFolder => 'Mappa törlése';

  @override
  String get deleteFile => 'Fájl törlése';

  @override
  String deleteConfirm(Object name) {
    return 'Törli a(z) „$name” elemet? Ez a művelet nem vonható vissza.';
  }

  @override
  String get deleteSuccess => 'Sikeresen törölve';

  @override
  String deleteFailed(Object e) {
    return 'A törlés sikertelen: $e';
  }

  @override
  String get parentDirectory => 'Szülőmappa';

  @override
  String get listView => 'Lista nézet';

  @override
  String get gridView => 'Rács nézet';

  @override
  String get folderEmpty => 'A mappa üres';

  @override
  String openFile(Object name) {
    return 'Fájl megnyitása: $name';
  }

  @override
  String get folder => 'Mappa';

  @override
  String get file => 'Fájl';

  @override
  String get download => 'Letöltés';

  @override
  String get downloadNotImplemented => 'A letöltés nincs megvalósítva';

  @override
  String get downloadSuccess => 'Letöltés sikeres';

  @override
  String get downloadCancelled => 'Letöltés megszakítva';

  @override
  String get downloadPreparing => 'Letöltés előkészítése...';

  @override
  String get downloadAndPlay => 'Letöltés és lejátszás';

  @override
  String get downloadingForPlayback => 'Letöltés lejátszáshoz...';

  @override
  String get fullscreen => 'Teljes képernyő';

  @override
  String get installSuccess => 'Sikeres telepítés';

  @override
  String installSuccessWithApp(Object title) {
    return 'A(z) $title telepítve';
  }

  @override
  String installFailed(Object e) {
    return 'A telepítés sikertelen: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Az alkalmazás konfigurációja nem kérhető le: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Egyéni telepítés: $title';
  }

  @override
  String get editComposeHint =>
      'Szerkessze a docker-compose fájlt, majd koppintson a telepítésre';

  @override
  String get install => 'Telepítés';

  @override
  String get appStore => 'Alkalmazásbolt';

  @override
  String get searchApps => 'Alkalmazások keresése';

  @override
  String get category => 'Kategória';

  @override
  String get allCategories => 'Minden kategória';

  @override
  String get noAppsFound => 'Nincs találat';

  @override
  String get installed => 'Telepítve';

  @override
  String get custom => 'Egyéni';

  @override
  String get appDetail => 'Alkalmazás részletei';

  @override
  String get appNotFound => 'Az alkalmazás nem található';

  @override
  String versionLabel(Object version) {
    return 'Verzió: $version';
  }

  @override
  String get description => 'Leírás';

  @override
  String get status => 'Állapot';

  @override
  String get notRunning => 'Nem fut';

  @override
  String get installStartNotImplemented =>
      'Telepítés/indítás nincs megvalósítva (/v2/app_management/compose szükséges)';

  @override
  String get uninstallNotImplemented =>
      'Eltávolítás nincs megvalósítva (/v2/app_management/compose szükséges)';

  @override
  String get installStart => 'Telepítés / Indítás';

  @override
  String get legacyApps => 'Régi alkalmazások (újraépítendők)';

  @override
  String get version => 'Verzió';

  @override
  String get cpuUsage => 'CPU-használat';

  @override
  String cores(Object count) {
    return 'Magok: $count';
  }

  @override
  String get memory => 'Memória (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% használat';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Használt $used / Összesen $total';
  }

  @override
  String get storage => 'Tárhely';

  @override
  String totalLabel(Object storage) {
    return 'Összesen $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Használt $used · $percent%';
  }

  @override
  String get disk => 'Lemez';

  @override
  String get networkStatus => 'Hálózat';

  @override
  String get addServer => 'Kiszolgáló hozzáadása';

  @override
  String get editServer => 'Kiszolgáló szerkesztése';

  @override
  String get nasType => 'NAS típus';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Kiszolgáló neve';

  @override
  String get serverNameRequired => 'Adja meg a kiszolgáló nevét';

  @override
  String get hostAddress => 'Gazdagép címe';

  @override
  String get hostAddressHint => '192.168.1.100 vagy casaos.local';

  @override
  String get hostAddressRequired => 'Adja meg a gazdagép címét';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Adja meg a portot';

  @override
  String get portInvalid => 'Érvénytelen port (1–65535)';

  @override
  String get useHttps => 'HTTPS használata';

  @override
  String get save => 'Mentés';

  @override
  String get noServerConfigured => 'Még nincs kiszolgáló beállítva';

  @override
  String get activate => 'Aktiválás';

  @override
  String get edit => 'Szerkesztés';

  @override
  String get confirmDelete => 'Törlés megerősítése';

  @override
  String confirmDeleteServer(Object name) {
    return 'Törli a(z) „$name” kiszolgálót?';
  }

  @override
  String get welcomeToCasaOS => 'Üdvözöljük a CasaOS / ZimaOS rendszerben';

  @override
  String get createAccountHint => 'Először hozzuk létre az első fiókját.';

  @override
  String get createAccount => 'Fiók létrehozása';

  @override
  String get start => 'Indítás →';

  @override
  String get confirmPassword => 'Jelszó megerősítése';

  @override
  String get confirmPasswordRequired => 'Adja meg újra a jelszót';

  @override
  String get passwordMismatch => 'A jelszavak nem egyeznek';

  @override
  String get allDone => 'Kész!';

  @override
  String get accountCreatedHint =>
      'A fiók létrejött. Lépjen az asztalra a CasaOS / ZimaOS használatához.';

  @override
  String get enterDesktop => 'Ugrás az asztalra';

  @override
  String get cannotGetInitKey =>
      'Az init kulcs nem kérhető le. Ellenőrizze a kiszolgálót.';

  @override
  String initFailed(Object e) {
    return 'Az inicializálás sikertelen: $e';
  }

  @override
  String get openAppWith => 'Alkalmazás megnyitása ezzel';

  @override
  String get builtinBrowser => 'Beépített böngésző';

  @override
  String get systemBrowser => 'Rendszerböngésző';

  @override
  String get openInSystemBrowser => 'Megnyitás a rendszerböngészőben';

  @override
  String get loading => 'Betöltés...';
}
