// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Client CasaOS / ZimaOS';

  @override
  String get settings => 'Impostazioni';

  @override
  String get about => 'Informazioni';

  @override
  String get appearance => 'Aspetto';

  @override
  String get openSource => 'Open source';

  @override
  String get tapToOpen => 'Tocca per aprire nel browser';

  @override
  String get themeMode => 'Modalità tema';

  @override
  String get followSystem => 'Segui il sistema';

  @override
  String get lightMode => 'Chiaro';

  @override
  String get darkMode => 'Scuro';

  @override
  String get themeColor => 'Colore del tema';

  @override
  String get themeColorDescription =>
      'Scegli un colore del tema; si applica alle modalità chiara e scura.';

  @override
  String get language => 'Lingua';

  @override
  String get languageFollowSystem => 'Segui il sistema';

  @override
  String get files => 'File';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get user => 'Utente';

  @override
  String get login => 'Accedi';

  @override
  String get home => 'Home';

  @override
  String get welcome => 'Benvenuto';

  @override
  String get logout => 'Esci';

  @override
  String get systemStatus => 'Stato del sistema';

  @override
  String get error => 'Errore';

  @override
  String get apps => 'App';

  @override
  String appCount(Object count) {
    return '$count in totale';
  }

  @override
  String get noApps => 'Nessuna app';

  @override
  String get cancel => 'Annulla';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Riprova';

  @override
  String get back => 'Indietro';

  @override
  String get delete => 'Elimina';

  @override
  String get cannotGetAppAddress => 'Impossibile ottenere l’indirizzo dell’app';

  @override
  String cannotOpen(Object url) {
    return 'Impossibile aprire: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Apertura non riuscita: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Questo tipo di app non supporta questa operazione';

  @override
  String get starting => 'Avvio in corso';

  @override
  String get restarting => 'Riavvio in corso';

  @override
  String get restart => 'Riavvia';

  @override
  String get closed => 'Chiusa';

  @override
  String operationFailed(Object e) {
    return 'Operazione non riuscita: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — Suggerimenti';
  }

  @override
  String get noDescription =>
      'Nessuna descrizione. Modifica la configurazione nelle impostazioni.';

  @override
  String get checkUpdateNotSupported =>
      'Questa app non supporta il controllo aggiornamenti';

  @override
  String updateFailed(Object e) {
    return 'Aggiornamento non riuscito: $e';
  }

  @override
  String get confirmUninstall => 'Conferma disinstallazione';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Disinstallare «$name»? I dati non potranno essere recuperati.';
  }

  @override
  String get uninstall => 'Disinstalla';

  @override
  String get cannotUninstall => 'Impossibile disinstallare';

  @override
  String get uninstalled => 'Disinstallata';

  @override
  String uninstallFailed(Object e) {
    return 'Disinstallazione non riuscita: $e';
  }

  @override
  String get cannotRestart => 'Impossibile riavviare';

  @override
  String get cannotClose => 'Impossibile chiudere';

  @override
  String get running => 'In esecuzione';

  @override
  String get open => 'Apri';

  @override
  String get launchAndOpen => 'Avvia e apri';

  @override
  String get tips => 'Suggerimenti';

  @override
  String get checkAndUpdate => 'Controlla e aggiorna';

  @override
  String get close => 'Chiudi';

  @override
  String get configureServerFirst => 'Configura e attiva prima un server';

  @override
  String get loginFailed => 'Accesso non riuscito';

  @override
  String get configureServer => 'Configura server';

  @override
  String get username => 'Nome utente';

  @override
  String get password => 'Password';

  @override
  String get usernameRequired => 'Inserisci il nome utente';

  @override
  String get passwordRequired => 'Inserisci la password';

  @override
  String get passwordMinLength => 'La password deve avere almeno 5 caratteri';

  @override
  String get rememberCredentials => 'Ricorda credenziali';

  @override
  String get newFolder => 'Nuova cartella';

  @override
  String get newFile => 'Nuovo file';

  @override
  String get folderName => 'Nome cartella';

  @override
  String get fileName => 'Nome file';

  @override
  String get create => 'Crea';

  @override
  String get folderCreated => 'Cartella creata';

  @override
  String get fileCreated => 'File creato';

  @override
  String createFailed(Object e) {
    return 'Creazione non riuscita: $e';
  }

  @override
  String get rename => 'Rinomina';

  @override
  String get renameFolder => 'Rinomina cartella';

  @override
  String get renameFile => 'Rinomina file';

  @override
  String get newName => 'Nuovo nome';

  @override
  String get renameSuccess => 'Rinominato correttamente';

  @override
  String renameFailed(Object e) {
    return 'Rinomina non riuscita: $e';
  }

  @override
  String get deleteFolder => 'Elimina cartella';

  @override
  String get deleteFile => 'Elimina file';

  @override
  String deleteConfirm(Object name) {
    return 'Eliminare «$name»? Questa azione non può essere annullata.';
  }

  @override
  String get deleteSuccess => 'Eliminato correttamente';

  @override
  String deleteFailed(Object e) {
    return 'Eliminazione non riuscita: $e';
  }

  @override
  String get parentDirectory => 'Cartella superiore';

  @override
  String get listView => 'Elenco';

  @override
  String get gridView => 'Griglia';

  @override
  String get folderEmpty => 'La cartella è vuota';

  @override
  String openFile(Object name) {
    return 'Apri file: $name';
  }

  @override
  String get folder => 'Cartella';

  @override
  String get file => 'File';

  @override
  String get download => 'Scarica';

  @override
  String get downloadNotImplemented => 'Download non implementato';

  @override
  String get downloadSuccess => 'Download completato';

  @override
  String get downloadCancelled => 'Download annullato';

  @override
  String get downloadPreparing => 'Preparazione download…';

  @override
  String get downloadAndPlay => 'Scarica e riproduci';

  @override
  String get downloadingForPlayback => 'Download per riproduzione…';

  @override
  String get fullscreen => 'Schermo intero';

  @override
  String get installSuccess => 'Installazione riuscita';

  @override
  String installSuccessWithApp(Object title) {
    return '«$title» installata correttamente';
  }

  @override
  String installFailed(Object e) {
    return 'Installazione non riuscita: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Impossibile ottenere la configurazione dell’app: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Installazione personalizzata: $title';
  }

  @override
  String get editComposeHint => 'Modifica docker-compose e tocca installa';

  @override
  String get install => 'Installa';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => 'Cerca app';

  @override
  String get category => 'Categoria';

  @override
  String get allCategories => 'Tutte le categorie';

  @override
  String get noAppsFound => 'Nessuna app corrispondente';

  @override
  String get installed => 'Installata';

  @override
  String get custom => 'Personalizzata';

  @override
  String get appDetail => 'Dettagli app';

  @override
  String get appNotFound => 'App non trovata';

  @override
  String versionLabel(Object version) {
    return 'Versione: $version';
  }

  @override
  String get description => 'Descrizione';

  @override
  String get status => 'Stato';

  @override
  String get notRunning => 'Non in esecuzione';

  @override
  String get installStartNotImplemented =>
      'Installa/avvia non implementato (richiede /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Disinstalla non implementato (richiede /v2/app_management/compose)';

  @override
  String get installStart => 'Installa / Avvia';

  @override
  String get legacyApps => 'App legacy (da ricostruire)';

  @override
  String get version => 'Versione';

  @override
  String get cpuUsage => 'Utilizzo CPU';

  @override
  String cores(Object count) {
    return 'Core: $count';
  }

  @override
  String get memory => 'Memoria (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% di utilizzo';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Usato $used / Totale $total';
  }

  @override
  String get storage => 'Archiviazione';

  @override
  String totalLabel(Object storage) {
    return 'Totale $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Usato $used · $percent%';
  }

  @override
  String get disk => 'Disco';

  @override
  String get networkStatus => 'Rete';

  @override
  String get addServer => 'Aggiungi server';

  @override
  String get editServer => 'Modifica server';

  @override
  String get nasType => 'Tipo di NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nome server';

  @override
  String get serverNameRequired => 'Inserisci il nome del server';

  @override
  String get hostAddress => 'Indirizzo host';

  @override
  String get hostAddressHint => '192.168.1.100 o casaos.local';

  @override
  String get hostAddressRequired => 'Inserisci l’indirizzo host';

  @override
  String get port => 'Porta';

  @override
  String get portRequired => 'Inserisci la porta';

  @override
  String get portInvalid => 'Inserisci una porta valida (1-65535)';

  @override
  String get useHttps => 'Usa HTTPS';

  @override
  String get save => 'Salva';

  @override
  String get noServerConfigured => 'Nessun server configurato';

  @override
  String get activate => 'Attiva';

  @override
  String get edit => 'Modifica';

  @override
  String get confirmDelete => 'Conferma eliminazione';

  @override
  String confirmDeleteServer(Object name) {
    return 'Eliminare il server «$name»?';
  }

  @override
  String get welcomeToCasaOS => 'Benvenuto in CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Creiamo prima il tuo account iniziale.';

  @override
  String get createAccount => 'Crea account';

  @override
  String get start => 'Inizia →';

  @override
  String get confirmPassword => 'Conferma password';

  @override
  String get confirmPasswordRequired => 'Inserisci di nuovo la password';

  @override
  String get passwordMismatch => 'Le password non coincidono';

  @override
  String get allDone => 'Fatto!';

  @override
  String get accountCreatedHint =>
      'Il tuo account è stato creato. Entra nel desktop per usare CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Vai al desktop';

  @override
  String get cannotGetInitKey =>
      'Impossibile ottenere la chiave di inizializzazione. Controlla lo stato del server.';

  @override
  String initFailed(Object e) {
    return 'Inizializzazione non riuscita: $e';
  }

  @override
  String get openAppWith => 'Apri app con';

  @override
  String get builtinBrowser => 'Browser integrato';

  @override
  String get systemBrowser => 'Browser di sistema';

  @override
  String get openInSystemBrowser => 'Apri nel browser di sistema';

  @override
  String get loading => 'Caricamento…';
}
