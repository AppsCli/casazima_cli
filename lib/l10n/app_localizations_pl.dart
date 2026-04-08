// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Klient CasaOS / ZimaOS';

  @override
  String get settings => 'Ustawienia';

  @override
  String get about => 'O aplikacji';

  @override
  String get appearance => 'Wygląd';

  @override
  String get openSource => 'Otwarty kod';

  @override
  String get tapToOpen => 'Dotknij, aby otworzyć w przeglądarce';

  @override
  String get themeMode => 'Motyw';

  @override
  String get followSystem => 'Jak w systemie';

  @override
  String get lightMode => 'Jasny';

  @override
  String get darkMode => 'Ciemny';

  @override
  String get themeColor => 'Kolor motywu';

  @override
  String get themeColorDescription =>
      'Wybierz kolor motywu; obowiązuje w trybie jasnym i ciemnym.';

  @override
  String get language => 'Język';

  @override
  String get languageFollowSystem => 'Jak w systemie';

  @override
  String get files => 'Pliki';

  @override
  String get serverConfig => 'Serwer';

  @override
  String get refresh => 'Odśwież';

  @override
  String get user => 'Użytkownik';

  @override
  String get login => 'Logowanie';

  @override
  String get home => 'Strona główna';

  @override
  String get welcome => 'Witaj';

  @override
  String get logout => 'Wyloguj';

  @override
  String get systemStatus => 'Stan systemu';

  @override
  String get error => 'Błąd';

  @override
  String get apps => 'Aplikacje';

  @override
  String appCount(Object count) {
    return 'Łącznie: $count';
  }

  @override
  String get noApps => 'Brak aplikacji';

  @override
  String get cancel => 'Anuluj';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Ponów';

  @override
  String get back => 'Wstecz';

  @override
  String get delete => 'Usuń';

  @override
  String get cannotGetAppAddress => 'Nie można pobrać adresu aplikacji';

  @override
  String cannotOpen(Object url) {
    return 'Nie można otworzyć: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Otwarcie nie powiodło się: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Ten typ aplikacji nie obsługuje tej operacji';

  @override
  String get starting => 'Uruchamianie';

  @override
  String get restarting => 'Ponowne uruchamianie';

  @override
  String get restart => 'Uruchom ponownie';

  @override
  String get closed => 'Zamknięto';

  @override
  String operationFailed(Object e) {
    return 'Operacja nie powiodła się: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name — wskazówki';
  }

  @override
  String get noDescription => 'Brak opisu. Zmień konfigurację w ustawieniach.';

  @override
  String get checkUpdateNotSupported =>
      'Ta aplikacja nie obsługuje sprawdzania aktualizacji';

  @override
  String updateFailed(Object e) {
    return 'Aktualizacja nie powiodła się: $e';
  }

  @override
  String get confirmUninstall => 'Potwierdź odinstalowanie';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Czy na pewno odinstalować „$name”? Dane nie zostaną odzyskane.';
  }

  @override
  String get uninstall => 'Odinstaluj';

  @override
  String get cannotUninstall => 'Nie można odinstalować';

  @override
  String get uninstalled => 'Odinstalowano';

  @override
  String uninstallFailed(Object e) {
    return 'Odinstalowanie nie powiodło się: $e';
  }

  @override
  String get cannotRestart => 'Nie można ponownie uruchomić';

  @override
  String get cannotClose => 'Nie można zamknąć';

  @override
  String get running => 'Działa';

  @override
  String get open => 'Otwórz';

  @override
  String get launchAndOpen => 'Uruchom i otwórz';

  @override
  String get tips => 'Wskazówki';

  @override
  String get checkAndUpdate => 'Sprawdź i zaktualizuj';

  @override
  String get close => 'Zamknij';

  @override
  String get configureServerFirst => 'Najpierw skonfiguruj i aktywuj serwer';

  @override
  String get loginFailed => 'Logowanie nie powiodło się';

  @override
  String get configureServer => 'Konfiguruj serwer';

  @override
  String get username => 'Nazwa użytkownika';

  @override
  String get password => 'Hasło';

  @override
  String get usernameRequired => 'Wpisz nazwę użytkownika';

  @override
  String get passwordRequired => 'Wpisz hasło';

  @override
  String get passwordMinLength => 'Hasło musi mieć co najmniej 5 znaków';

  @override
  String get rememberCredentials => 'Zapamiętaj dane logowania';

  @override
  String get newFolder => 'Nowy folder';

  @override
  String get newFile => 'Nowy plik';

  @override
  String get folderName => 'Nazwa folderu';

  @override
  String get fileName => 'Nazwa pliku';

  @override
  String get create => 'Utwórz';

  @override
  String get folderCreated => 'Folder utworzony';

  @override
  String get fileCreated => 'Plik utworzony';

  @override
  String createFailed(Object e) {
    return 'Tworzenie nie powiodło się: $e';
  }

  @override
  String get rename => 'Zmień nazwę';

  @override
  String get renameFolder => 'Zmień nazwę folderu';

  @override
  String get renameFile => 'Zmień nazwę pliku';

  @override
  String get newName => 'Nowa nazwa';

  @override
  String get renameSuccess => 'Zmieniono nazwę';

  @override
  String renameFailed(Object e) {
    return 'Zmiana nazwy nie powiodła się: $e';
  }

  @override
  String get deleteFolder => 'Usuń folder';

  @override
  String get deleteFile => 'Usuń plik';

  @override
  String deleteConfirm(Object name) {
    return 'Usunąć „$name”? Tej operacji nie cofniesz.';
  }

  @override
  String get deleteSuccess => 'Usunięto';

  @override
  String deleteFailed(Object e) {
    return 'Usuwanie nie powiodło się: $e';
  }

  @override
  String get parentDirectory => 'Folder nadrzędny';

  @override
  String get listView => 'Lista';

  @override
  String get gridView => 'Siatka';

  @override
  String get folderEmpty => 'Folder jest pusty';

  @override
  String openFile(Object name) {
    return 'Otwórz plik: $name';
  }

  @override
  String get folder => 'Folder';

  @override
  String get file => 'Plik';

  @override
  String get download => 'Pobierz';

  @override
  String get downloadNotImplemented => 'Pobieranie niezaimplementowane';

  @override
  String get downloadSuccess => 'Pobrano pomyślnie';

  @override
  String get downloadCancelled => 'Pobieranie anulowane';

  @override
  String get downloadPreparing => 'Przygotowywanie pobierania...';

  @override
  String get downloadAndPlay => 'Pobierz i odtwórz';

  @override
  String get downloadingForPlayback => 'Pobieranie do odtwarzania...';

  @override
  String get fullscreen => 'Pełny ekran';

  @override
  String get installSuccess => 'Zainstalowano pomyślnie';

  @override
  String installSuccessWithApp(Object title) {
    return 'Zainstalowano: $title';
  }

  @override
  String installFailed(Object e) {
    return 'Instalacja nie powiodła się: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Nie udało się pobrać konfiguracji aplikacji: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instalacja niestandardowa: $title';
  }

  @override
  String get editComposeHint => 'Edytuj docker-compose i kliknij instaluj';

  @override
  String get install => 'Zainstaluj';

  @override
  String get appStore => 'Sklep z aplikacjami';

  @override
  String get searchApps => 'Szukaj aplikacji';

  @override
  String get category => 'Kategoria';

  @override
  String get allCategories => 'Wszystkie kategorie';

  @override
  String get noAppsFound => 'Brak pasujących aplikacji';

  @override
  String get installed => 'Zainstalowane';

  @override
  String get custom => 'Niestandardowa';

  @override
  String get appDetail => 'Szczegóły aplikacji';

  @override
  String get appNotFound => 'Nie znaleziono aplikacji';

  @override
  String versionLabel(Object version) {
    return 'Wersja: $version';
  }

  @override
  String get description => 'Opis';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Zatrzymana';

  @override
  String get installStartNotImplemented =>
      'Instalacja/uruchomienie niezaimplementowane (wymaga /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Odinstalowanie niezaimplementowane (wymaga /v2/app_management/compose)';

  @override
  String get installStart => 'Zainstaluj / Uruchom';

  @override
  String get legacyApps => 'Starsze aplikacje (do przebudowy)';

  @override
  String get version => 'Wersja';

  @override
  String get cpuUsage => 'Użycie CPU';

  @override
  String cores(Object count) {
    return 'Rdzenie: $count';
  }

  @override
  String get memory => 'Pamięć (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'Użycie $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Użyte $used / Razem $total';
  }

  @override
  String get storage => 'Magazyn';

  @override
  String totalLabel(Object storage) {
    return 'Razem $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Użyte $used · $percent%';
  }

  @override
  String get disk => 'Dysk';

  @override
  String get networkStatus => 'Sieć';

  @override
  String get addServer => 'Dodaj serwer';

  @override
  String get editServer => 'Edytuj serwer';

  @override
  String get nasType => 'Typ NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nazwa serwera';

  @override
  String get serverNameRequired => 'Wpisz nazwę serwera';

  @override
  String get hostAddress => 'Adres hosta';

  @override
  String get hostAddressHint => '192.168.1.100 lub casaos.local';

  @override
  String get hostAddressRequired => 'Wpisz adres hosta';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Wpisz port';

  @override
  String get portInvalid => 'Nieprawidłowy port (1-65535)';

  @override
  String get useHttps => 'Użyj HTTPS';

  @override
  String get save => 'Zapisz';

  @override
  String get noServerConfigured => 'Brak skonfigurowanego serwera';

  @override
  String get activate => 'Aktywuj';

  @override
  String get edit => 'Edytuj';

  @override
  String get confirmDelete => 'Potwierdź usunięcie';

  @override
  String confirmDeleteServer(Object name) {
    return 'Usunąć serwer „$name”?';
  }

  @override
  String get welcomeToCasaOS => 'Witaj w CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Najpierw utwórz konto początkowe.';

  @override
  String get createAccount => 'Utwórz konto';

  @override
  String get start => 'Start →';

  @override
  String get confirmPassword => 'Potwierdź hasło';

  @override
  String get confirmPasswordRequired => 'Wpisz hasło ponownie';

  @override
  String get passwordMismatch => 'Hasła się nie zgadzają';

  @override
  String get allDone => 'Gotowe!';

  @override
  String get accountCreatedHint =>
      'Konto utworzone. Wejdź na pulpit CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Przejdź na pulpit';

  @override
  String get cannotGetInitKey =>
      'Nie można pobrać klucza init. Sprawdź serwer.';

  @override
  String initFailed(Object e) {
    return 'Inicjalizacja nie powiodła się: $e';
  }

  @override
  String get openAppWith => 'Otwórz aplikację w';

  @override
  String get builtinBrowser => 'Przeglądarka wbudowana';

  @override
  String get systemBrowser => 'Przeglądarka systemowa';

  @override
  String get openInSystemBrowser => 'Otwórz w przeglądarce systemowej';

  @override
  String get loading => 'Ładowanie...';
}
