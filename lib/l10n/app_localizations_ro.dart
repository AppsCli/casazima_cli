// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Client CasaOS / ZimaOS';

  @override
  String get settings => 'Setări';

  @override
  String get about => 'Despre';

  @override
  String get appearance => 'Aspect';

  @override
  String get openSource => 'Sursă deschisă';

  @override
  String get tapToOpen => 'Atingeți pentru a deschide în browser';

  @override
  String get themeMode => 'Temă';

  @override
  String get followSystem => 'Ca sistemul';

  @override
  String get lightMode => 'Luminos';

  @override
  String get darkMode => 'Întunecat';

  @override
  String get themeColor => 'Culoare temă';

  @override
  String get themeColorDescription =>
      'Alegeți o culoare de temă; se aplică modurilor luminos și întunecat.';

  @override
  String get language => 'Limbă';

  @override
  String get languageFollowSystem => 'Ca sistemul';

  @override
  String get files => 'Fișiere';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Reîmprospătare';

  @override
  String get user => 'Utilizator';

  @override
  String get login => 'Autentificare';

  @override
  String get home => 'Acasă';

  @override
  String get welcome => 'Bun venit';

  @override
  String get logout => 'Deconectare';

  @override
  String get systemStatus => 'Stare sistem';

  @override
  String get error => 'Eroare';

  @override
  String get apps => 'Aplicații';

  @override
  String appCount(Object count) {
    return '$count în total';
  }

  @override
  String get noApps => 'Nicio aplicație';

  @override
  String get cancel => 'Anulare';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get back => 'Înapoi';

  @override
  String get delete => 'Șterge';

  @override
  String get cannotGetAppAddress => 'Nu s-a putut obține adresa aplicației';

  @override
  String cannotOpen(Object url) {
    return 'Nu se poate deschide: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Deschiderea a eșuat: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Acest tip de aplicație nu suportă această operație';

  @override
  String get starting => 'Pornește';

  @override
  String get restarting => 'Repornire';

  @override
  String get restart => 'Reporniți';

  @override
  String get closed => 'Închis';

  @override
  String operationFailed(Object e) {
    return 'Operația a eșuat: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Sfaturi';
  }

  @override
  String get noDescription =>
      'Fără descriere. Modificați configurația din setări.';

  @override
  String get checkUpdateNotSupported =>
      'Această aplicație nu suportă verificarea actualizărilor';

  @override
  String updateFailed(Object e) {
    return 'Actualizarea a eșuat: $e';
  }

  @override
  String get confirmUninstall => 'Confirmați dezinstalarea';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Sigur dezinstalați „$name”? Datele nu pot fi recuperate după dezinstalare.';
  }

  @override
  String get uninstall => 'Dezinstalare';

  @override
  String get cannotUninstall => 'Nu se poate dezinstala';

  @override
  String get uninstalled => 'Dezinstalat';

  @override
  String uninstallFailed(Object e) {
    return 'Dezinstalarea a eșuat: $e';
  }

  @override
  String get cannotRestart => 'Nu se poate reporni';

  @override
  String get cannotClose => 'Nu se poate închide';

  @override
  String get running => 'Rulează';

  @override
  String get open => 'Deschide';

  @override
  String get launchAndOpen => 'Lansează și deschide';

  @override
  String get tips => 'Sfaturi';

  @override
  String get checkAndUpdate => 'Verifică și actualizează';

  @override
  String get close => 'Închide';

  @override
  String get configureServerFirst =>
      'Configurați și activați mai întâi un server';

  @override
  String get loginFailed => 'Autentificarea a eșuat';

  @override
  String get configureServer => 'Configurare server';

  @override
  String get username => 'Nume utilizator';

  @override
  String get password => 'Parolă';

  @override
  String get usernameRequired => 'Introduceți numele de utilizator';

  @override
  String get passwordRequired => 'Introduceți parola';

  @override
  String get passwordMinLength =>
      'Parola trebuie să aibă cel puțin 5 caractere';

  @override
  String get rememberCredentials => 'Ține minte datele de autentificare';

  @override
  String get newFolder => 'Dosar nou';

  @override
  String get newFile => 'Fișier nou';

  @override
  String get folderName => 'Nume dosar';

  @override
  String get fileName => 'Nume fișier';

  @override
  String get create => 'Creează';

  @override
  String get folderCreated => 'Dosar creat cu succes';

  @override
  String get fileCreated => 'Fișier creat cu succes';

  @override
  String createFailed(Object e) {
    return 'Crearea a eșuat: $e';
  }

  @override
  String get rename => 'Redenumește';

  @override
  String get renameFolder => 'Redenumește dosarul';

  @override
  String get renameFile => 'Redenumește fișierul';

  @override
  String get newName => 'Nume nou';

  @override
  String get renameSuccess => 'Redenumit cu succes';

  @override
  String renameFailed(Object e) {
    return 'Redenumirea a eșuat: $e';
  }

  @override
  String get deleteFolder => 'Șterge dosarul';

  @override
  String get deleteFile => 'Șterge fișierul';

  @override
  String deleteConfirm(Object name) {
    return 'Ștergeți „$name”? Această acțiune nu poate fi anulată.';
  }

  @override
  String get deleteSuccess => 'Șters cu succes';

  @override
  String deleteFailed(Object e) {
    return 'Ștergerea a eșuat: $e';
  }

  @override
  String get parentDirectory => 'Dosar părinte';

  @override
  String get listView => 'Vizualizare listă';

  @override
  String get gridView => 'Vizualizare grilă';

  @override
  String get folderEmpty => 'Dosarul este gol';

  @override
  String openFile(Object name) {
    return 'Deschide fișierul: $name';
  }

  @override
  String get folder => 'Dosar';

  @override
  String get file => 'Fișier';

  @override
  String get download => 'Descarcă';

  @override
  String get downloadNotImplemented => 'Descărcarea nu este implementată';

  @override
  String get downloadSuccess => 'Descărcare reușită';

  @override
  String get downloadCancelled => 'Descărcare anulată';

  @override
  String get downloadPreparing => 'Se pregătește descărcarea...';

  @override
  String get downloadAndPlay => 'Descarcă și redă';

  @override
  String get downloadingForPlayback => 'Se descarcă pentru redare...';

  @override
  String get fullscreen => 'Ecran complet';

  @override
  String get installSuccess => 'Instalare reușită';

  @override
  String installSuccessWithApp(Object title) {
    return '$title a fost instalat cu succes';
  }

  @override
  String installFailed(Object e) {
    return 'Instalarea a eșuat: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Nu s-a putut obține configurația aplicației: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instalare personalizată: $title';
  }

  @override
  String get editComposeHint => 'Editați docker-compose și apăsați instalare';

  @override
  String get install => 'Instalează';

  @override
  String get appStore => 'Magazin de aplicații';

  @override
  String get searchApps => 'Căutați aplicații';

  @override
  String get category => 'Categorie';

  @override
  String get allCategories => 'Toate categoriile';

  @override
  String get noAppsFound => 'Nicio aplicație potrivită';

  @override
  String get installed => 'Instalat';

  @override
  String get custom => 'Personalizat';

  @override
  String get appDetail => 'Detalii aplicație';

  @override
  String get appNotFound => 'Aplicația nu a fost găsită';

  @override
  String versionLabel(Object version) {
    return 'Versiune: $version';
  }

  @override
  String get description => 'Descriere';

  @override
  String get status => 'Stare';

  @override
  String get notRunning => 'Nu rulează';

  @override
  String get installStartNotImplemented =>
      'Instalare/pornire neimplementată (necesită /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Dezinstalare neimplementată (necesită /v2/app_management/compose)';

  @override
  String get installStart => 'Instalează / Pornește';

  @override
  String get legacyApps => 'Aplicații vechi (vor fi reconstruite)';

  @override
  String get version => 'Versiune';

  @override
  String get cpuUsage => 'Utilizare CPU';

  @override
  String cores(Object count) {
    return 'Nuclee: $count';
  }

  @override
  String get memory => 'Memorie (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% utilizare';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Folosit $used / Total $total';
  }

  @override
  String get storage => 'Stocare';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Folosit $used · $percent%';
  }

  @override
  String get disk => 'Disc';

  @override
  String get networkStatus => 'Rețea';

  @override
  String get addServer => 'Adaugă server';

  @override
  String get editServer => 'Editează serverul';

  @override
  String get nasType => 'Tip NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nume server';

  @override
  String get serverNameRequired => 'Introduceți numele serverului';

  @override
  String get hostAddress => 'Adresă gazdă';

  @override
  String get hostAddressHint => '192.168.1.100 sau casaos.local';

  @override
  String get hostAddressRequired => 'Introduceți adresa gazdei';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Introduceți portul';

  @override
  String get portInvalid => 'Port nevalid (1-65535)';

  @override
  String get useHttps => 'Folosește HTTPS';

  @override
  String get save => 'Salvează';

  @override
  String get noServerConfigured => 'Niciun server configurat încă';

  @override
  String get activate => 'Activează';

  @override
  String get edit => 'Editează';

  @override
  String get confirmDelete => 'Confirmați ștergerea';

  @override
  String confirmDeleteServer(Object name) {
    return 'Ștergeți serverul „$name”?';
  }

  @override
  String get welcomeToCasaOS => 'Bun venit la CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Să creăm mai întâi contul dvs. inițial.';

  @override
  String get createAccount => 'Creează cont';

  @override
  String get start => 'Start →';

  @override
  String get confirmPassword => 'Confirmați parola';

  @override
  String get confirmPasswordRequired => 'Introduceți din nou parola';

  @override
  String get passwordMismatch => 'Parolele nu coincid';

  @override
  String get allDone => 'Gata!';

  @override
  String get accountCreatedHint =>
      'Contul dvs. a fost creat. Intrați pe desktop pentru CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Intră pe desktop';

  @override
  String get cannotGetInitKey =>
      'Nu s-a putut obține cheia de inițializare. Verificați serverul.';

  @override
  String initFailed(Object e) {
    return 'Inițializarea a eșuat: $e';
  }

  @override
  String get openAppWith => 'Deschide aplicația cu';

  @override
  String get builtinBrowser => 'Browser integrat';

  @override
  String get systemBrowser => 'Browser de sistem';

  @override
  String get openInSystemBrowser => 'Deschide în browserul de sistem';

  @override
  String get loading => 'Se încarcă...';
}
