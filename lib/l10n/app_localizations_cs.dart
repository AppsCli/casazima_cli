// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Klient CasaOS / ZimaOS';

  @override
  String get settings => 'Nastavení';

  @override
  String get about => 'O aplikaci';

  @override
  String get appearance => 'Vzhled';

  @override
  String get openSource => 'Otevřený software';

  @override
  String get tapToOpen => 'Klepnutím otevřete v prohlížeči';

  @override
  String get themeMode => 'Motiv';

  @override
  String get followSystem => 'Podle systému';

  @override
  String get lightMode => 'Světlý';

  @override
  String get darkMode => 'Tmavý';

  @override
  String get themeColor => 'Barva motivu';

  @override
  String get themeColorDescription =>
      'Vyberte barvu motivu; platí pro světlý i tmavý režim.';

  @override
  String get language => 'Jazyk';

  @override
  String get languageFollowSystem => 'Podle systému';

  @override
  String get files => 'Soubory';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Obnovit';

  @override
  String get user => 'Uživatel';

  @override
  String get login => 'Přihlásit se';

  @override
  String get home => 'Domů';

  @override
  String get welcome => 'Vítejte';

  @override
  String get logout => 'Odhlásit se';

  @override
  String get systemStatus => 'Stav systému';

  @override
  String get error => 'Chyba';

  @override
  String get apps => 'Aplikace';

  @override
  String appCount(Object count) {
    return 'Celkem $count';
  }

  @override
  String get noApps => 'Žádné aplikace';

  @override
  String get cancel => 'Zrušit';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Zkusit znovu';

  @override
  String get back => 'Zpět';

  @override
  String get delete => 'Smazat';

  @override
  String get cannotGetAppAddress => 'Nelze získat adresu aplikace';

  @override
  String cannotOpen(Object url) {
    return 'Nelze otevřít: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Otevření se nezdařilo: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Tento typ aplikace tuto operaci nepodporuje';

  @override
  String get starting => 'Spouštění';

  @override
  String get restarting => 'Restartování';

  @override
  String get restart => 'Restartovat';

  @override
  String get closed => 'Ukončeno';

  @override
  String operationFailed(Object e) {
    return 'Operace se nezdařila: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – tipy';
  }

  @override
  String get noDescription => 'Bez popisu. Upravte konfiguraci v nastavení.';

  @override
  String get checkUpdateNotSupported =>
      'Tato aplikace nepodporuje kontrolu aktualizací';

  @override
  String updateFailed(Object e) {
    return 'Aktualizace se nezdařila: $e';
  }

  @override
  String get confirmUninstall => 'Potvrdit odinstalaci';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Opravdu chcete odinstalovat „$name“? Po odinstalaci nelze data obnovit.';
  }

  @override
  String get uninstall => 'Odinstalovat';

  @override
  String get cannotUninstall => 'Nelze odinstalovat';

  @override
  String get uninstalled => 'Odinstalováno';

  @override
  String uninstallFailed(Object e) {
    return 'Odinstalace se nezdařila: $e';
  }

  @override
  String get cannotRestart => 'Nelze restartovat';

  @override
  String get cannotClose => 'Nelze zavřít';

  @override
  String get running => 'Běží';

  @override
  String get open => 'Otevřít';

  @override
  String get launchAndOpen => 'Spustit a otevřít';

  @override
  String get tips => 'Tipy';

  @override
  String get checkAndUpdate => 'Zkontrolovat a aktualizovat';

  @override
  String get close => 'Zavřít';

  @override
  String get configureServerFirst =>
      'Nejprve nakonfigurujte a aktivujte server';

  @override
  String get loginFailed => 'Přihlášení se nezdařilo';

  @override
  String get configureServer => 'Nastavit server';

  @override
  String get username => 'Uživatelské jméno';

  @override
  String get password => 'Heslo';

  @override
  String get usernameRequired => 'Zadejte uživatelské jméno';

  @override
  String get passwordRequired => 'Zadejte heslo';

  @override
  String get passwordMinLength => 'Heslo musí mít alespoň 5 znaků';

  @override
  String get rememberCredentials => 'Zapamatovat přihlašovací údaje';

  @override
  String get newFolder => 'Nová složka';

  @override
  String get newFile => 'Nový soubor';

  @override
  String get folderName => 'Název složky';

  @override
  String get fileName => 'Název souboru';

  @override
  String get create => 'Vytvořit';

  @override
  String get folderCreated => 'Složka byla vytvořena';

  @override
  String get fileCreated => 'Soubor byl vytvořen';

  @override
  String createFailed(Object e) {
    return 'Vytvoření se nezdařilo: $e';
  }

  @override
  String get rename => 'Přejmenovat';

  @override
  String get renameFolder => 'Přejmenovat složku';

  @override
  String get renameFile => 'Přejmenovat soubor';

  @override
  String get newName => 'Nový název';

  @override
  String get renameSuccess => 'Přejmenováno';

  @override
  String renameFailed(Object e) {
    return 'Přejmenování se nezdařilo: $e';
  }

  @override
  String get deleteFolder => 'Smazat složku';

  @override
  String get deleteFile => 'Smazat soubor';

  @override
  String deleteConfirm(Object name) {
    return 'Smazat „$name“? Tuto akci nelze vrátit zpět.';
  }

  @override
  String get deleteSuccess => 'Smazáno';

  @override
  String deleteFailed(Object e) {
    return 'Smazání se nezdařilo: $e';
  }

  @override
  String get parentDirectory => 'Nadřazená složka';

  @override
  String get listView => 'Seznam';

  @override
  String get gridView => 'Mřížka';

  @override
  String get folderEmpty => 'Složka je prázdná';

  @override
  String openFile(Object name) {
    return 'Otevřít soubor: $name';
  }

  @override
  String get folder => 'Složka';

  @override
  String get file => 'Soubor';

  @override
  String get download => 'Stáhnout';

  @override
  String get downloadNotImplemented => 'Stahování není implementováno';

  @override
  String get downloadSuccess => 'Staženo';

  @override
  String get downloadCancelled => 'Stahování zrušeno';

  @override
  String get downloadPreparing => 'Příprava stahování...';

  @override
  String get downloadAndPlay => 'Stáhnout a přehrát';

  @override
  String get downloadingForPlayback => 'Stahování pro přehrání...';

  @override
  String get fullscreen => 'Celá obrazovka';

  @override
  String get installSuccess => 'Instalace proběhla úspěšně';

  @override
  String installSuccessWithApp(Object title) {
    return 'Aplikace $title byla nainstalována';
  }

  @override
  String installFailed(Object e) {
    return 'Instalace se nezdařila: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Nepodařilo se načíst konfiguraci aplikace: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Vlastní instalace: $title';
  }

  @override
  String get editComposeHint =>
      'Upravte docker-compose a klepněte na instalovat';

  @override
  String get install => 'Nainstalovat';

  @override
  String get appStore => 'Obchod s aplikacemi';

  @override
  String get searchApps => 'Hledat aplikace';

  @override
  String get category => 'Kategorie';

  @override
  String get allCategories => 'Všechny kategorie';

  @override
  String get noAppsFound => 'Žádné odpovídající aplikace';

  @override
  String get installed => 'Nainstalováno';

  @override
  String get custom => 'Vlastní';

  @override
  String get appDetail => 'Podrobnosti aplikace';

  @override
  String get appNotFound => 'Aplikace nenalezena';

  @override
  String versionLabel(Object version) {
    return 'Verze: $version';
  }

  @override
  String get description => 'Popis';

  @override
  String get status => 'Stav';

  @override
  String get notRunning => 'Neběží';

  @override
  String get installStartNotImplemented =>
      'Instalace/spuštění není implementováno (vyžaduje /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Odinstalace není implementována (vyžaduje /v2/app_management/compose)';

  @override
  String get installStart => 'Nainstalovat / Spustit';

  @override
  String get legacyApps => 'Starší aplikace (budou přestavěny)';

  @override
  String get version => 'Verze';

  @override
  String get cpuUsage => 'Využití CPU';

  @override
  String cores(Object count) {
    return 'Jádra: $count';
  }

  @override
  String get memory => 'Paměť (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'Využití $percent %';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Použito $used / Celkem $total';
  }

  @override
  String get storage => 'Úložiště';

  @override
  String totalLabel(Object storage) {
    return 'Celkem $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Použito $used · $percent %';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Síť';

  @override
  String get addServer => 'Přidat server';

  @override
  String get editServer => 'Upravit server';

  @override
  String get nasType => 'Typ NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Název serveru';

  @override
  String get serverNameRequired => 'Zadejte název serveru';

  @override
  String get hostAddress => 'Adresa hostitele';

  @override
  String get hostAddressHint => '192.168.1.100 nebo casaos.local';

  @override
  String get hostAddressRequired => 'Zadejte adresu hostitele';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Zadejte port';

  @override
  String get portInvalid => 'Neplatný port (1–65535)';

  @override
  String get useHttps => 'Použít HTTPS';

  @override
  String get save => 'Uložit';

  @override
  String get noServerConfigured => 'Zatím není nakonfigurován žádný server';

  @override
  String get activate => 'Aktivovat';

  @override
  String get edit => 'Upravit';

  @override
  String get confirmDelete => 'Potvrdit smazání';

  @override
  String confirmDeleteServer(Object name) {
    return 'Smazat server „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Vítejte v CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Nejprve vytvoříme váš počáteční účet.';

  @override
  String get createAccount => 'Vytvořit účet';

  @override
  String get start => 'Začít →';

  @override
  String get confirmPassword => 'Potvrdit heslo';

  @override
  String get confirmPasswordRequired => 'Zadejte heslo znovu';

  @override
  String get passwordMismatch => 'Hesla se neshodují';

  @override
  String get allDone => 'Hotovo!';

  @override
  String get accountCreatedHint =>
      'Účet byl vytvořen. Přejděte na plochu a používejte CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Přejít na plochu';

  @override
  String get cannotGetInitKey => 'Nelze získat init klíč. Zkontrolujte server.';

  @override
  String initFailed(Object e) {
    return 'Inicializace se nezdařila: $e';
  }

  @override
  String get openAppWith => 'Otevřít aplikaci v';

  @override
  String get builtinBrowser => 'Vestavěný prohlížeč';

  @override
  String get systemBrowser => 'Systémový prohlížeč';

  @override
  String get openInSystemBrowser => 'Otevřít v systémovém prohlížeči';

  @override
  String get loading => 'Načítání...';
}
