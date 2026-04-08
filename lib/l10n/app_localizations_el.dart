// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Modern Greek (`el`).
class AppLocalizationsEl extends AppLocalizations {
  AppLocalizationsEl([String locale = 'el']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Πελάτης CasaOS / ZimaOS';

  @override
  String get settings => 'Ρυθμίσεις';

  @override
  String get about => 'Σχετικά';

  @override
  String get appearance => 'Εμφάνιση';

  @override
  String get openSource => 'Ανοιχτός κώδικας';

  @override
  String get tapToOpen => 'Πατήστε για άνοιγμα στο πρόγραμμα περιήγησης';

  @override
  String get themeMode => 'Θέμα';

  @override
  String get followSystem => 'Όπως το σύστημα';

  @override
  String get lightMode => 'Φωτεινό';

  @override
  String get darkMode => 'Σκοτεινό';

  @override
  String get themeColor => 'Χρώμα θέματος';

  @override
  String get themeColorDescription =>
      'Επιλέξτε χρώμα θέματος· ισχύει για φωτεινή και σκοτεινή λειτουργία.';

  @override
  String get language => 'Γλώσσα';

  @override
  String get languageFollowSystem => 'Όπως το σύστημα';

  @override
  String get files => 'Αρχεία';

  @override
  String get serverConfig => 'Διακομιστής';

  @override
  String get refresh => 'Ανανέωση';

  @override
  String get user => 'Χρήστης';

  @override
  String get login => 'Σύνδεση';

  @override
  String get home => 'Αρχική';

  @override
  String get welcome => 'Καλώς ήρθατε';

  @override
  String get logout => 'Αποσύνδεση';

  @override
  String get systemStatus => 'Κατάσταση συστήματος';

  @override
  String get error => 'Σφάλμα';

  @override
  String get apps => 'Εφαρμογές';

  @override
  String appCount(Object count) {
    return 'Σύνολο $count';
  }

  @override
  String get noApps => 'Καμία εφαρμογή';

  @override
  String get cancel => 'Ακύρωση';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Επανάληψη';

  @override
  String get back => 'Πίσω';

  @override
  String get delete => 'Διαγραφή';

  @override
  String get cannotGetAppAddress =>
      'Δεν ήταν δυνατή η λήψη διεύθυνσης εφαρμογής';

  @override
  String cannotOpen(Object url) {
    return 'Δεν ήταν δυνατό το άνοιγμα: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Αποτυχία ανοίγματος: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Αυτός ο τύπος εφαρμογής δεν υποστηρίζει τη λειτουργία';

  @override
  String get starting => 'Εκκίνηση';

  @override
  String get restarting => 'Επανεκκίνηση';

  @override
  String get restart => 'Επανεκκίνηση';

  @override
  String get closed => 'Κλειστό';

  @override
  String operationFailed(Object e) {
    return 'Η λειτουργία απέτυχε: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Συμβουλές';
  }

  @override
  String get noDescription =>
      'Χωρίς περιγραφή. Αλλάξτε τη διαμόρφωση στις ρυθμίσεις.';

  @override
  String get checkUpdateNotSupported =>
      'Αυτή η εφαρμογή δεν υποστηρίζει έλεγχο ενημερώσεων';

  @override
  String updateFailed(Object e) {
    return 'Η ενημέρωση απέτυχε: $e';
  }

  @override
  String get confirmUninstall => 'Επιβεβαίωση απεγκατάστασης';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Θέλετε σίγουρα να απεγκαταστήσετε το \"$name\"; Τα δεδομένα δεν ανακτώνται μετά την απεγκατάσταση.';
  }

  @override
  String get uninstall => 'Απεγκατάσταση';

  @override
  String get cannotUninstall => 'Δεν ήταν δυνατή η απεγκατάσταση';

  @override
  String get uninstalled => 'Απεγκαταστάθηκε';

  @override
  String uninstallFailed(Object e) {
    return 'Αποτυχία απεγκατάστασης: $e';
  }

  @override
  String get cannotRestart => 'Δεν ήταν δυνατή η επανεκκίνηση';

  @override
  String get cannotClose => 'Δεν ήταν δυνατό το κλείσιμο';

  @override
  String get running => 'Εκτελείται';

  @override
  String get open => 'Άνοιγμα';

  @override
  String get launchAndOpen => 'Εκκίνηση και άνοιγμα';

  @override
  String get tips => 'Συμβουλές';

  @override
  String get checkAndUpdate => 'Έλεγχος και ενημέρωση';

  @override
  String get close => 'Κλείσιμο';

  @override
  String get configureServerFirst =>
      'Διαμορφώστε και ενεργοποιήστε πρώτα έναν διακομιστή';

  @override
  String get loginFailed => 'Η σύνδεση απέτυχε';

  @override
  String get configureServer => 'Διαμόρφωση διακομιστή';

  @override
  String get username => 'Όνομα χρήστη';

  @override
  String get password => 'Κωδικός';

  @override
  String get usernameRequired => 'Εισαγάγετε όνομα χρήστη';

  @override
  String get passwordRequired => 'Εισαγάγετε κωδικό';

  @override
  String get passwordMinLength =>
      'Ο κωδικός πρέπει να έχει τουλάχιστον 5 χαρακτήρες';

  @override
  String get rememberCredentials => 'Απομνημόνευση διαπιστευτηρίων';

  @override
  String get newFolder => 'Νέος φάκελος';

  @override
  String get newFile => 'Νέο αρχείο';

  @override
  String get folderName => 'Όνομα φακέλου';

  @override
  String get fileName => 'Όνομα αρχείου';

  @override
  String get create => 'Δημιουργία';

  @override
  String get folderCreated => 'Ο φάκελος δημιουργήθηκε';

  @override
  String get fileCreated => 'Το αρχείο δημιουργήθηκε';

  @override
  String createFailed(Object e) {
    return 'Αποτυχία δημιουργίας: $e';
  }

  @override
  String get rename => 'Μετονομασία';

  @override
  String get renameFolder => 'Μετονομασία φακέλου';

  @override
  String get renameFile => 'Μετονομασία αρχείου';

  @override
  String get newName => 'Νέο όνομα';

  @override
  String get renameSuccess => 'Επιτυχής μετονομασία';

  @override
  String renameFailed(Object e) {
    return 'Αποτυχία μετονομασίας: $e';
  }

  @override
  String get deleteFolder => 'Διαγραφή φακέλου';

  @override
  String get deleteFile => 'Διαγραφή αρχείου';

  @override
  String deleteConfirm(Object name) {
    return 'Διαγραφή \"$name\"; Η ενέργεια δεν αναιρείται.';
  }

  @override
  String get deleteSuccess => 'Διαγράφηκε';

  @override
  String deleteFailed(Object e) {
    return 'Αποτυχία διαγραφής: $e';
  }

  @override
  String get parentDirectory => 'Γονικός κατάλογος';

  @override
  String get listView => 'Προβολή λίστας';

  @override
  String get gridView => 'Προβολή πλέγματος';

  @override
  String get folderEmpty => 'Ο φάκελος είναι κενός';

  @override
  String openFile(Object name) {
    return 'Άνοιγμα αρχείου: $name';
  }

  @override
  String get folder => 'Φάκελος';

  @override
  String get file => 'Αρχείο';

  @override
  String get download => 'Λήψη';

  @override
  String get downloadNotImplemented => 'Η λήψη δεν έχει υλοποιηθεί';

  @override
  String get downloadSuccess => 'Επιτυχής λήψη';

  @override
  String get downloadCancelled => 'Η λήψη ακυρώθηκε';

  @override
  String get downloadPreparing => 'Προετοιμασία λήψης...';

  @override
  String get downloadAndPlay => 'Λήψη και αναπαραγωγή';

  @override
  String get downloadingForPlayback => 'Λήψη για αναπαραγωγή...';

  @override
  String get fullscreen => 'Πλήρης οθόνη';

  @override
  String get installSuccess => 'Επιτυχής εγκατάσταση';

  @override
  String installSuccessWithApp(Object title) {
    return 'Το $title εγκαταστάθηκε';
  }

  @override
  String installFailed(Object e) {
    return 'Αποτυχία εγκατάστασης: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Αποτυχία λήψης ρυθμίσεων εφαρμογής: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Προσαρμοσμένη εγκατάσταση: $title';
  }

  @override
  String get editComposeHint =>
      'Επεξεργαστείτε το docker-compose και πατήστε εγκατάσταση';

  @override
  String get install => 'Εγκατάσταση';

  @override
  String get appStore => 'Κατάστημα εφαρμογών';

  @override
  String get searchApps => 'Αναζήτηση εφαρμογών';

  @override
  String get category => 'Κατηγορία';

  @override
  String get allCategories => 'Όλες οι κατηγορίες';

  @override
  String get noAppsFound => 'Δεν βρέθηκαν εφαρμογές';

  @override
  String get installed => 'Εγκατεστημένο';

  @override
  String get custom => 'Προσαρμοσμένο';

  @override
  String get appDetail => 'Λεπτομέρειες εφαρμογής';

  @override
  String get appNotFound => 'Η εφαρμογή δεν βρέθηκε';

  @override
  String versionLabel(Object version) {
    return 'Έκδοση: $version';
  }

  @override
  String get description => 'Περιγραφή';

  @override
  String get status => 'Κατάσταση';

  @override
  String get notRunning => 'Δεν εκτελείται';

  @override
  String get installStartNotImplemented =>
      'Εγκατάσταση/εκκίνηση δεν υλοποιήθηκε (απαιτείται /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Απεγκατάσταση δεν υλοποιήθηκε (απαιτείται /v2/app_management/compose)';

  @override
  String get installStart => 'Εγκατάσταση / Εκκίνηση';

  @override
  String get legacyApps => 'Παλιές εφαρμογές (θα ανακατασκευαστούν)';

  @override
  String get version => 'Έκδοση';

  @override
  String get cpuUsage => 'Χρήση CPU';

  @override
  String cores(Object count) {
    return 'Πυρήνες: $count';
  }

  @override
  String get memory => 'Μνήμη (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% χρήση';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Χρησιμοποιούνται $used / Σύνολο $total';
  }

  @override
  String get storage => 'Αποθήκευση';

  @override
  String totalLabel(Object storage) {
    return 'Σύνολο $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Χρησιμοποιούνται $used · $percent%';
  }

  @override
  String get disk => 'Δίσκος';

  @override
  String get networkStatus => 'Δίκτυο';

  @override
  String get addServer => 'Προσθήκη διακομιστή';

  @override
  String get editServer => 'Επεξεργασία διακομιστή';

  @override
  String get nasType => 'Τύπος NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Όνομα διακομιστή';

  @override
  String get serverNameRequired => 'Εισαγάγετε όνομα διακομιστή';

  @override
  String get hostAddress => 'Διεύθυνση κεντρικού υπολογιστή';

  @override
  String get hostAddressHint => '192.168.1.100 ή casaos.local';

  @override
  String get hostAddressRequired => 'Εισαγάγετε διεύθυνση κεντρικού υπολογιστή';

  @override
  String get port => 'Θύρα';

  @override
  String get portRequired => 'Εισαγάγετε θύρα';

  @override
  String get portInvalid => 'Μη έγκυρη θύρα (1-65535)';

  @override
  String get useHttps => 'Χρήση HTTPS';

  @override
  String get save => 'Αποθήκευση';

  @override
  String get noServerConfigured => 'Δεν έχει ρυθμιστεί διακομιστής ακόμα';

  @override
  String get activate => 'Ενεργοποίηση';

  @override
  String get edit => 'Επεξεργασία';

  @override
  String get confirmDelete => 'Επιβεβαίωση διαγραφής';

  @override
  String confirmDeleteServer(Object name) {
    return 'Διαγραφή διακομιστή «$name»;';
  }

  @override
  String get welcomeToCasaOS => 'Καλώς ήρθατε στο CasaOS / ZimaOS';

  @override
  String get createAccountHint =>
      'Ας δημιουργήσουμε πρώτα τον αρχικό σας λογαριασμό.';

  @override
  String get createAccount => 'Δημιουργία λογαριασμού';

  @override
  String get start => 'Έναρξη →';

  @override
  String get confirmPassword => 'Επιβεβαίωση κωδικού';

  @override
  String get confirmPasswordRequired => 'Εισαγάγετε ξανά τον κωδικό';

  @override
  String get passwordMismatch => 'Οι κωδικοί δεν ταιριάζουν';

  @override
  String get allDone => 'Έτοιμο!';

  @override
  String get accountCreatedHint =>
      'Ο λογαριασμός σας δημιουργήθηκε. Μπείτε στην επιφάνεια εργασίας για το CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Είσοδος στην επιφάνεια εργασίας';

  @override
  String get cannotGetInitKey =>
      'Δεν ήταν δυνατή η λήψη κλειδιού init. Ελέγξτε τον διακομιστή.';

  @override
  String initFailed(Object e) {
    return 'Η αρχικοποίηση απέτυχε: $e';
  }

  @override
  String get openAppWith => 'Άνοιγμα εφαρμογής με';

  @override
  String get builtinBrowser => 'Ενσωματωμένο πρόγραμμα περιήγησης';

  @override
  String get systemBrowser => 'Πρόγραμμα περιήγησης συστήματος';

  @override
  String get openInSystemBrowser =>
      'Άνοιγμα στο πρόγραμμα περιήγησης συστήματος';

  @override
  String get loading => 'Φόρτωση...';
}
