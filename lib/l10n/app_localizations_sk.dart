// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Klient CasaOS / ZimaOS';

  @override
  String get settings => 'Nastavenia';

  @override
  String get about => 'O aplikácii';

  @override
  String get appearance => 'Vzhľad';

  @override
  String get openSource => 'Otvorený zdroj';

  @override
  String get tapToOpen => 'Ťuknutím otvoríte v prehliadači';

  @override
  String get themeMode => 'Motív';

  @override
  String get followSystem => 'Podľa systému';

  @override
  String get lightMode => 'Svetlý';

  @override
  String get darkMode => 'Tmavý';

  @override
  String get themeColor => 'Farba motívu';

  @override
  String get themeColorDescription =>
      'Vyberte farbu motívu; platí pre svetlý aj tmavý režim.';

  @override
  String get language => 'Jazyk';

  @override
  String get languageFollowSystem => 'Podľa systému';

  @override
  String get files => 'Súbory';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Obnoviť';

  @override
  String get user => 'Používateľ';

  @override
  String get login => 'Prihlásiť sa';

  @override
  String get home => 'Domov';

  @override
  String get welcome => 'Vitajte';

  @override
  String get logout => 'Odhlásiť sa';

  @override
  String get systemStatus => 'Stav systému';

  @override
  String get error => 'Chyba';

  @override
  String get apps => 'Aplikácie';

  @override
  String appCount(Object count) {
    return 'Celkom $count';
  }

  @override
  String get noApps => 'Žiadne aplikácie';

  @override
  String get cancel => 'Zrušiť';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Skúsiť znova';

  @override
  String get back => 'Späť';

  @override
  String get delete => 'Zmazať';

  @override
  String get cannotGetAppAddress => 'Nepodarilo sa získať adresu aplikácie';

  @override
  String cannotOpen(Object url) {
    return 'Nepodarilo sa otvoriť: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Otvorenie zlyhalo: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Tento typ aplikácie nepodporuje túto operáciu';

  @override
  String get starting => 'Spúšťa sa';

  @override
  String get restarting => 'Reštartuje sa';

  @override
  String get restart => 'Reštartovať';

  @override
  String get closed => 'Zatvorené';

  @override
  String operationFailed(Object e) {
    return 'Operácia zlyhala: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – tipy';
  }

  @override
  String get noDescription =>
      'Bez popisu. Upravte konfiguráciu v nastaveniach.';

  @override
  String get checkUpdateNotSupported =>
      'Táto aplikácia nepodporuje kontrolu aktualizácií';

  @override
  String updateFailed(Object e) {
    return 'Aktualizácia zlyhala: $e';
  }

  @override
  String get confirmUninstall => 'Potvrdiť odinštalovanie';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Naozaj chcete odinštalovať „$name“? Po odinštalovaní nie je možné obnoviť údaje.';
  }

  @override
  String get uninstall => 'Odinštalovať';

  @override
  String get cannotUninstall => 'Nepodarilo sa odinštalovať';

  @override
  String get uninstalled => 'Odinštalované';

  @override
  String uninstallFailed(Object e) {
    return 'Odinštalovanie zlyhalo: $e';
  }

  @override
  String get cannotRestart => 'Nepodarilo sa reštartovať';

  @override
  String get cannotClose => 'Nepodarilo sa zatvoriť';

  @override
  String get running => 'Beží';

  @override
  String get open => 'Otvoriť';

  @override
  String get launchAndOpen => 'Spustiť a otvoriť';

  @override
  String get tips => 'Tipy';

  @override
  String get checkAndUpdate => 'Skontrolovať a aktualizovať';

  @override
  String get close => 'Zatvoriť';

  @override
  String get configureServerFirst => 'Najprv nakonfigurujte a aktivujte server';

  @override
  String get loginFailed => 'Prihlásenie zlyhalo';

  @override
  String get configureServer => 'Nastaviť server';

  @override
  String get username => 'Používateľské meno';

  @override
  String get password => 'Heslo';

  @override
  String get usernameRequired => 'Zadajte používateľské meno';

  @override
  String get passwordRequired => 'Zadajte heslo';

  @override
  String get passwordMinLength => 'Heslo musí mať aspoň 5 znakov';

  @override
  String get rememberCredentials => 'Zapamätať prihlasovacie údaje';

  @override
  String get newFolder => 'Nový priečinok';

  @override
  String get newFile => 'Nový súbor';

  @override
  String get folderName => 'Názov priečinka';

  @override
  String get fileName => 'Názov súboru';

  @override
  String get create => 'Vytvoriť';

  @override
  String get folderCreated => 'Priečinok bol vytvorený';

  @override
  String get fileCreated => 'Súbor bol vytvorený';

  @override
  String createFailed(Object e) {
    return 'Vytvorenie zlyhalo: $e';
  }

  @override
  String get rename => 'Premenovať';

  @override
  String get renameFolder => 'Premenovať priečinok';

  @override
  String get renameFile => 'Premenovať súbor';

  @override
  String get newName => 'Nový názov';

  @override
  String get renameSuccess => 'Premenované';

  @override
  String renameFailed(Object e) {
    return 'Premenovanie zlyhalo: $e';
  }

  @override
  String get deleteFolder => 'Zmazať priečinok';

  @override
  String get deleteFile => 'Zmazať súbor';

  @override
  String deleteConfirm(Object name) {
    return 'Zmazať „$name“? Túto akciu nie je možné vrátiť späť.';
  }

  @override
  String get deleteSuccess => 'Zmazané';

  @override
  String deleteFailed(Object e) {
    return 'Mazanie zlyhalo: $e';
  }

  @override
  String get parentDirectory => 'Nadradený priečinok';

  @override
  String get listView => 'Zoznam';

  @override
  String get gridView => 'Mriežka';

  @override
  String get folderEmpty => 'Priečinok je prázdny';

  @override
  String openFile(Object name) {
    return 'Otvoriť súbor: $name';
  }

  @override
  String get folder => 'Priečinok';

  @override
  String get file => 'Súbor';

  @override
  String get download => 'Stiahnuť';

  @override
  String get downloadNotImplemented => 'Sťahovanie nie je implementované';

  @override
  String get downloadSuccess => 'Stiahnuté';

  @override
  String get downloadCancelled => 'Sťahovanie zrušené';

  @override
  String get downloadPreparing => 'Príprava sťahovania...';

  @override
  String get downloadAndPlay => 'Stiahnuť a prehrať';

  @override
  String get downloadingForPlayback => 'Sťahovanie na prehratie...';

  @override
  String get fullscreen => 'Celá obrazovka';

  @override
  String get installSuccess => 'Inštalácia bola úspešná';

  @override
  String installSuccessWithApp(Object title) {
    return 'Aplikácia $title bola nainštalovaná';
  }

  @override
  String installFailed(Object e) {
    return 'Inštalácia zlyhala: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Nepodarilo sa načítať konfiguráciu aplikácie: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Vlastná inštalácia: $title';
  }

  @override
  String get editComposeHint =>
      'Upravte docker-compose a ťuknite na inštalovať';

  @override
  String get install => 'Nainštalovať';

  @override
  String get appStore => 'Obchod s aplikáciami';

  @override
  String get searchApps => 'Hľadať aplikácie';

  @override
  String get category => 'Kategória';

  @override
  String get allCategories => 'Všetky kategórie';

  @override
  String get noAppsFound => 'Žiadne zodpovedajúce aplikácie';

  @override
  String get installed => 'Nainštalované';

  @override
  String get custom => 'Vlastné';

  @override
  String get appDetail => 'Podrobnosti aplikácie';

  @override
  String get appNotFound => 'Aplikácia sa nenašla';

  @override
  String versionLabel(Object version) {
    return 'Verzia: $version';
  }

  @override
  String get description => 'Popis';

  @override
  String get status => 'Stav';

  @override
  String get notRunning => 'Nebeží';

  @override
  String get installStartNotImplemented =>
      'Inštalácia/spustenie nie je implementované (vyžaduje /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Odinštalovanie nie je implementované (vyžaduje /v2/app_management/compose)';

  @override
  String get installStart => 'Nainštalovať / Spustiť';

  @override
  String get legacyApps => 'Staršie aplikácie (budú prestavané)';

  @override
  String get version => 'Verzia';

  @override
  String get cpuUsage => 'Využitie CPU';

  @override
  String cores(Object count) {
    return 'Jadrá: $count';
  }

  @override
  String get memory => 'Pamäť (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'Využitie $percent %';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Použité $used / Celkom $total';
  }

  @override
  String get storage => 'Úložisko';

  @override
  String totalLabel(Object storage) {
    return 'Celkom $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Použité $used · $percent %';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Sieť';

  @override
  String get addServer => 'Pridať server';

  @override
  String get editServer => 'Upraviť server';

  @override
  String get nasType => 'Typ NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Názov servera';

  @override
  String get serverNameRequired => 'Zadajte názov servera';

  @override
  String get hostAddress => 'Adresa hostiteľa';

  @override
  String get hostAddressHint => '192.168.1.100 alebo casaos.local';

  @override
  String get hostAddressRequired => 'Zadajte adresu hostiteľa';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Zadajte port';

  @override
  String get portInvalid => 'Neplatný port (1–65535)';

  @override
  String get useHttps => 'Použiť HTTPS';

  @override
  String get save => 'Uložiť';

  @override
  String get noServerConfigured =>
      'Zatiaľ nie je nakonfigurovaný žiadny server';

  @override
  String get activate => 'Aktivovať';

  @override
  String get edit => 'Upraviť';

  @override
  String get confirmDelete => 'Potvrdiť zmazanie';

  @override
  String confirmDeleteServer(Object name) {
    return 'Zmazať server „$name“?';
  }

  @override
  String get welcomeToCasaOS => 'Vitajte v CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Najprv vytvoríme váš počiatočný účet.';

  @override
  String get createAccount => 'Vytvoriť účet';

  @override
  String get start => 'Začať →';

  @override
  String get confirmPassword => 'Potvrdiť heslo';

  @override
  String get confirmPasswordRequired => 'Zadajte heslo znova';

  @override
  String get passwordMismatch => 'Heslá sa nezhodujú';

  @override
  String get allDone => 'Hotovo!';

  @override
  String get accountCreatedHint =>
      'Účet bol vytvorený. Prejdite na plochu a používajte CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Prejsť na plochu';

  @override
  String get cannotGetInitKey =>
      'Nepodarilo sa získať init kľúč. Skontrolujte server.';

  @override
  String initFailed(Object e) {
    return 'Inicializácia zlyhala: $e';
  }

  @override
  String get openAppWith => 'Otvoriť aplikáciu v';

  @override
  String get builtinBrowser => 'Vstavaný prehliadač';

  @override
  String get systemBrowser => 'Systémový prehliadač';

  @override
  String get openInSystemBrowser => 'Otvoriť v systémovom prehliadači';

  @override
  String get loading => 'Načítava sa...';
}
