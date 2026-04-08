// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS-klient';

  @override
  String get settings => 'Inställningar';

  @override
  String get about => 'Om';

  @override
  String get appearance => 'Utseende';

  @override
  String get openSource => 'Öppen källkod';

  @override
  String get tapToOpen => 'Tryck för att öppna i webbläsare';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Följ systemet';

  @override
  String get lightMode => 'Ljust';

  @override
  String get darkMode => 'Mörkt';

  @override
  String get themeColor => 'Temafärg';

  @override
  String get themeColorDescription =>
      'Välj en temafärg; gäller både ljust och mörkt läge.';

  @override
  String get language => 'Språk';

  @override
  String get languageFollowSystem => 'Följ systemet';

  @override
  String get files => 'Filer';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Uppdatera';

  @override
  String get user => 'Användare';

  @override
  String get login => 'Logga in';

  @override
  String get home => 'Hem';

  @override
  String get welcome => 'Välkommen';

  @override
  String get logout => 'Logga ut';

  @override
  String get systemStatus => 'Systemstatus';

  @override
  String get error => 'Fel';

  @override
  String get apps => 'Appar';

  @override
  String appCount(Object count) {
    return '$count totalt';
  }

  @override
  String get noApps => 'Inga appar';

  @override
  String get cancel => 'Avbryt';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Försök igen';

  @override
  String get back => 'Tillbaka';

  @override
  String get delete => 'Ta bort';

  @override
  String get cannotGetAppAddress => 'Kan inte hämta appadress';

  @override
  String cannotOpen(Object url) {
    return 'Kan inte öppna: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Kunde inte öppna: $e';
  }

  @override
  String get appTypeNotSupported => 'Denna apptyp stöder inte åtgärden';

  @override
  String get starting => 'Startar';

  @override
  String get restarting => 'Startar om';

  @override
  String get restart => 'Starta om';

  @override
  String get closed => 'Stängd';

  @override
  String operationFailed(Object e) {
    return 'Åtgärden misslyckades: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name – tips';
  }

  @override
  String get noDescription =>
      'Ingen beskrivning. Gå till inställningar för att ändra konfigurationen.';

  @override
  String get checkUpdateNotSupported =>
      'Denna app stöder inte uppdateringskontroll';

  @override
  String updateFailed(Object e) {
    return 'Uppdatering misslyckades: $e';
  }

  @override
  String get confirmUninstall => 'Bekräfta avinstallation';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Vill du verkligen avinstallera \"$name\"? Data kan inte återställas efter avinstallation.';
  }

  @override
  String get uninstall => 'Avinstallera';

  @override
  String get cannotUninstall => 'Kan inte avinstallera';

  @override
  String get uninstalled => 'Avinstallerad';

  @override
  String uninstallFailed(Object e) {
    return 'Avinstallation misslyckades: $e';
  }

  @override
  String get cannotRestart => 'Kan inte starta om';

  @override
  String get cannotClose => 'Kan inte stänga';

  @override
  String get running => 'Körs';

  @override
  String get open => 'Öppna';

  @override
  String get launchAndOpen => 'Starta och öppna';

  @override
  String get tips => 'Tips';

  @override
  String get checkAndUpdate => 'Kontrollera och uppdatera';

  @override
  String get close => 'Stäng';

  @override
  String get configureServerFirst => 'Konfigurera och aktivera en server först';

  @override
  String get loginFailed => 'Inloggning misslyckades';

  @override
  String get configureServer => 'Konfigurera server';

  @override
  String get username => 'Användarnamn';

  @override
  String get password => 'Lösenord';

  @override
  String get usernameRequired => 'Ange användarnamn';

  @override
  String get passwordRequired => 'Ange lösenord';

  @override
  String get passwordMinLength => 'Lösenordet måste vara minst 5 tecken';

  @override
  String get rememberCredentials => 'Kom ihåg inloggningsuppgifter';

  @override
  String get newFolder => 'Ny mapp';

  @override
  String get newFile => 'Ny fil';

  @override
  String get folderName => 'Mappnamn';

  @override
  String get fileName => 'Filnamn';

  @override
  String get create => 'Skapa';

  @override
  String get folderCreated => 'Mappen skapades';

  @override
  String get fileCreated => 'Filen skapades';

  @override
  String createFailed(Object e) {
    return 'Kunde inte skapa: $e';
  }

  @override
  String get rename => 'Byt namn';

  @override
  String get renameFolder => 'Byt namn på mapp';

  @override
  String get renameFile => 'Byt namn på fil';

  @override
  String get newName => 'Nytt namn';

  @override
  String get renameSuccess => 'Namnet ändrades';

  @override
  String renameFailed(Object e) {
    return 'Namnbyte misslyckades: $e';
  }

  @override
  String get deleteFolder => 'Ta bort mapp';

  @override
  String get deleteFile => 'Ta bort fil';

  @override
  String deleteConfirm(Object name) {
    return 'Ta bort \"$name\"? Detta kan inte ångras.';
  }

  @override
  String get deleteSuccess => 'Borttagen';

  @override
  String deleteFailed(Object e) {
    return 'Borttagning misslyckades: $e';
  }

  @override
  String get parentDirectory => 'Överordnad mapp';

  @override
  String get listView => 'Listvy';

  @override
  String get gridView => 'Rutnätsvy';

  @override
  String get folderEmpty => 'Mappen är tom';

  @override
  String openFile(Object name) {
    return 'Öppna fil: $name';
  }

  @override
  String get folder => 'Mapp';

  @override
  String get file => 'Fil';

  @override
  String get download => 'Ladda ner';

  @override
  String get downloadNotImplemented => 'Nedladdning är inte implementerad';

  @override
  String get downloadSuccess => 'Nedladdning klar';

  @override
  String get downloadCancelled => 'Nedladdning avbruten';

  @override
  String get downloadPreparing => 'Förbereder nedladdning...';

  @override
  String get downloadAndPlay => 'Ladda ner och spela';

  @override
  String get downloadingForPlayback => 'Laddar ner för uppspelning...';

  @override
  String get fullscreen => 'Helskärm';

  @override
  String get installSuccess => 'Installationen lyckades';

  @override
  String installSuccessWithApp(Object title) {
    return '$title installerades';
  }

  @override
  String installFailed(Object e) {
    return 'Installation misslyckades: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Kunde inte hämta appkonfiguration: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Anpassad installation: $title';
  }

  @override
  String get editComposeHint => 'Redigera docker-compose och tryck installera';

  @override
  String get install => 'Installera';

  @override
  String get appStore => 'Appbutik';

  @override
  String get searchApps => 'Sök appar';

  @override
  String get category => 'Kategori';

  @override
  String get allCategories => 'Alla kategorier';

  @override
  String get noAppsFound => 'Inga matchande appar';

  @override
  String get installed => 'Installerad';

  @override
  String get custom => 'Anpassad';

  @override
  String get appDetail => 'Appdetaljer';

  @override
  String get appNotFound => 'Appen hittades inte';

  @override
  String versionLabel(Object version) {
    return 'Version: $version';
  }

  @override
  String get description => 'Beskrivning';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Körs inte';

  @override
  String get installStartNotImplemented =>
      'Installera/starta är inte implementerat (kräver /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Avinstallera är inte implementerat (kräver /v2/app_management/compose)';

  @override
  String get installStart => 'Installera / Starta';

  @override
  String get legacyApps => 'Äldre appar (ska byggas om)';

  @override
  String get version => 'Version';

  @override
  String get cpuUsage => 'CPU-användning';

  @override
  String cores(Object count) {
    return 'Kärnor: $count';
  }

  @override
  String get memory => 'Minne (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% används';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Använt $used / Totalt $total';
  }

  @override
  String get storage => 'Lagring';

  @override
  String totalLabel(Object storage) {
    return 'Totalt $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Använt $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Nätverk';

  @override
  String get addServer => 'Lägg till server';

  @override
  String get editServer => 'Redigera server';

  @override
  String get nasType => 'NAS-typ';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Servernamn';

  @override
  String get serverNameRequired => 'Ange servernamn';

  @override
  String get hostAddress => 'Värdadress';

  @override
  String get hostAddressHint => '192.168.1.100 eller casaos.local';

  @override
  String get hostAddressRequired => 'Ange värdadress';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Ange port';

  @override
  String get portInvalid => 'Ogiltig port (1–65535)';

  @override
  String get useHttps => 'Använd HTTPS';

  @override
  String get save => 'Spara';

  @override
  String get noServerConfigured => 'Ingen server konfigurerad ännu';

  @override
  String get activate => 'Aktivera';

  @override
  String get edit => 'Redigera';

  @override
  String get confirmDelete => 'Bekräfta borttagning';

  @override
  String confirmDeleteServer(Object name) {
    return 'Ta bort servern \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Välkommen till CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Låt oss skapa ditt första konto först.';

  @override
  String get createAccount => 'Skapa konto';

  @override
  String get start => 'Starta →';

  @override
  String get confirmPassword => 'Bekräfta lösenord';

  @override
  String get confirmPasswordRequired => 'Ange lösenordet igen';

  @override
  String get passwordMismatch => 'Lösenorden matchar inte';

  @override
  String get allDone => 'Klart!';

  @override
  String get accountCreatedHint =>
      'Ditt konto har skapats. Gå till skrivbordet för att använda CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Gå till skrivbordet';

  @override
  String get cannotGetInitKey =>
      'Kan inte hämta init-nyckel. Kontrollera servern.';

  @override
  String initFailed(Object e) {
    return 'Initiering misslyckades: $e';
  }

  @override
  String get openAppWith => 'Öppna app med';

  @override
  String get builtinBrowser => 'Inbyggd webbläsare';

  @override
  String get systemBrowser => 'Systemwebbläsare';

  @override
  String get openInSystemBrowser => 'Öppna i systemwebbläsare';

  @override
  String get loading => 'Laddar...';
}
