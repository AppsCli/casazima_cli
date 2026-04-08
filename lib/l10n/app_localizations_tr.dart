// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS İstemcisi';

  @override
  String get settings => 'Ayarlar';

  @override
  String get about => 'Hakkında';

  @override
  String get appearance => 'Görünüm';

  @override
  String get openSource => 'Açık kaynak';

  @override
  String get tapToOpen => 'Tarayıcıda açmak için dokunun';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Sistemi izle';

  @override
  String get lightMode => 'Açık';

  @override
  String get darkMode => 'Koyu';

  @override
  String get themeColor => 'Tema rengi';

  @override
  String get themeColorDescription =>
      'Bir tema rengi seçin; açık ve koyu modda geçerlidir.';

  @override
  String get language => 'Dil';

  @override
  String get languageFollowSystem => 'Sistemi izle';

  @override
  String get files => 'Dosyalar';

  @override
  String get serverConfig => 'Sunucu';

  @override
  String get refresh => 'Yenile';

  @override
  String get user => 'Kullanıcı';

  @override
  String get login => 'Giriş';

  @override
  String get home => 'Ana sayfa';

  @override
  String get welcome => 'Hoş geldiniz';

  @override
  String get logout => 'Çıkış';

  @override
  String get systemStatus => 'Sistem durumu';

  @override
  String get error => 'Hata';

  @override
  String get apps => 'Uygulamalar';

  @override
  String appCount(Object count) {
    return 'Toplam $count';
  }

  @override
  String get noApps => 'Uygulama yok';

  @override
  String get cancel => 'İptal';

  @override
  String get ok => 'Tamam';

  @override
  String get retry => 'Yeniden dene';

  @override
  String get back => 'Geri';

  @override
  String get delete => 'Sil';

  @override
  String get cannotGetAppAddress => 'Uygulama adresi alınamadı';

  @override
  String cannotOpen(Object url) {
    return 'Açılamıyor: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Açma başarısız: $e';
  }

  @override
  String get appTypeNotSupported => 'Bu uygulama türü bu işlemi desteklemiyor';

  @override
  String get starting => 'Başlatılıyor';

  @override
  String get restarting => 'Yeniden başlatılıyor';

  @override
  String get restart => 'Yeniden başlat';

  @override
  String get closed => 'Kapatıldı';

  @override
  String operationFailed(Object e) {
    return 'İşlem başarısız: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - İpuçları';
  }

  @override
  String get noDescription =>
      'Açıklama yok. Yapılandırmayı ayarlardan düzenleyin.';

  @override
  String get checkUpdateNotSupported =>
      'Bu uygulama güncelleme kontrolünü desteklemiyor';

  @override
  String updateFailed(Object e) {
    return 'Güncelleme başarısız: $e';
  }

  @override
  String get confirmUninstall => 'Kaldırmayı onayla';

  @override
  String uninstallConfirmMessage(Object name) {
    return '\"$name\" kaldırılsın mı? Kaldırma sonrası veriler kurtarılamaz.';
  }

  @override
  String get uninstall => 'Kaldır';

  @override
  String get cannotUninstall => 'Kaldırılamıyor';

  @override
  String get uninstalled => 'Kaldırıldı';

  @override
  String uninstallFailed(Object e) {
    return 'Kaldırma başarısız: $e';
  }

  @override
  String get cannotRestart => 'Yeniden başlatılamıyor';

  @override
  String get cannotClose => 'Kapatılamıyor';

  @override
  String get running => 'Çalışıyor';

  @override
  String get open => 'Aç';

  @override
  String get launchAndOpen => 'Başlat ve aç';

  @override
  String get tips => 'İpuçları';

  @override
  String get checkAndUpdate => 'Kontrol et ve güncelle';

  @override
  String get close => 'Kapat';

  @override
  String get configureServerFirst =>
      'Önce bir sunucu yapılandırıp etkinleştirin';

  @override
  String get loginFailed => 'Giriş başarısız';

  @override
  String get configureServer => 'Sunucuyu yapılandır';

  @override
  String get username => 'Kullanıcı adı';

  @override
  String get password => 'Şifre';

  @override
  String get usernameRequired => 'Kullanıcı adını girin';

  @override
  String get passwordRequired => 'Şifreyi girin';

  @override
  String get passwordMinLength => 'Şifre en az 5 karakter olmalı';

  @override
  String get rememberCredentials => 'Bilgileri hatırla';

  @override
  String get newFolder => 'Yeni klasör';

  @override
  String get newFile => 'Yeni dosya';

  @override
  String get folderName => 'Klasör adı';

  @override
  String get fileName => 'Dosya adı';

  @override
  String get create => 'Oluştur';

  @override
  String get folderCreated => 'Klasör oluşturuldu';

  @override
  String get fileCreated => 'Dosya oluşturuldu';

  @override
  String createFailed(Object e) {
    return 'Oluşturma başarısız: $e';
  }

  @override
  String get rename => 'Yeniden adlandır';

  @override
  String get renameFolder => 'Klasörü yeniden adlandır';

  @override
  String get renameFile => 'Dosyayı yeniden adlandır';

  @override
  String get newName => 'Yeni ad';

  @override
  String get renameSuccess => 'Yeniden adlandırıldı';

  @override
  String renameFailed(Object e) {
    return 'Yeniden adlandırma başarısız: $e';
  }

  @override
  String get deleteFolder => 'Klasörü sil';

  @override
  String get deleteFile => 'Dosyayı sil';

  @override
  String deleteConfirm(Object name) {
    return '\"$name\" silinsin mi? Bu işlem geri alınamaz.';
  }

  @override
  String get deleteSuccess => 'Silindi';

  @override
  String deleteFailed(Object e) {
    return 'Silme başarısız: $e';
  }

  @override
  String get parentDirectory => 'Üst klasör';

  @override
  String get listView => 'Liste';

  @override
  String get gridView => 'Izgara';

  @override
  String get folderEmpty => 'Klasör boş';

  @override
  String openFile(Object name) {
    return 'Dosyayı aç: $name';
  }

  @override
  String get folder => 'Klasör';

  @override
  String get file => 'Dosya';

  @override
  String get download => 'İndir';

  @override
  String get downloadNotImplemented => 'İndirme uygulanmadı';

  @override
  String get downloadSuccess => 'İndirme tamamlandı';

  @override
  String get downloadCancelled => 'İndirme iptal edildi';

  @override
  String get downloadPreparing => 'İndirme hazırlanıyor...';

  @override
  String get downloadAndPlay => 'İndir ve oynat';

  @override
  String get downloadingForPlayback => 'Oynatma için indiriliyor...';

  @override
  String get fullscreen => 'Tam ekran';

  @override
  String get installSuccess => 'Kurulum başarılı';

  @override
  String installSuccessWithApp(Object title) {
    return '$title kuruldu';
  }

  @override
  String installFailed(Object e) {
    return 'Kurulum başarısız: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Uygulama yapılandırması alınamadı: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Özel kurulum: $title';
  }

  @override
  String get editComposeHint => 'docker-compose düzenleyip kur\'a dokunun';

  @override
  String get install => 'Kur';

  @override
  String get appStore => 'Uygulama mağazası';

  @override
  String get searchApps => 'Uygulama ara';

  @override
  String get category => 'Kategori';

  @override
  String get allCategories => 'Tüm kategoriler';

  @override
  String get noAppsFound => 'Eşleşen uygulama yok';

  @override
  String get installed => 'Yüklü';

  @override
  String get custom => 'Özel';

  @override
  String get appDetail => 'Uygulama ayrıntıları';

  @override
  String get appNotFound => 'Uygulama bulunamadı';

  @override
  String versionLabel(Object version) {
    return 'Sürüm: $version';
  }

  @override
  String get description => 'Açıklama';

  @override
  String get status => 'Durum';

  @override
  String get notRunning => 'Çalışmıyor';

  @override
  String get installStartNotImplemented =>
      'Kur/başlat uygulanmadı (/v2/app_management/compose gerekir)';

  @override
  String get uninstallNotImplemented =>
      'Kaldır uygulanmadı (/v2/app_management/compose gerekir)';

  @override
  String get installStart => 'Kur / Başlat';

  @override
  String get legacyApps => 'Eski uygulamalar (yenilenecek)';

  @override
  String get version => 'Sürüm';

  @override
  String get cpuUsage => 'CPU kullanımı';

  @override
  String cores(Object count) {
    return 'Çekirdek: $count';
  }

  @override
  String get memory => 'Bellek (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% kullanımda';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Kullanılan $used / Toplam $total';
  }

  @override
  String get storage => 'Depolama';

  @override
  String totalLabel(Object storage) {
    return 'Toplam $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Kullanılan $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Ağ durumu';

  @override
  String get addServer => 'Sunucu ekle';

  @override
  String get editServer => 'Sunucuyu düzenle';

  @override
  String get nasType => 'NAS türü';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Sunucu adı';

  @override
  String get serverNameRequired => 'Sunucu adını girin';

  @override
  String get hostAddress => 'Sunucu adresi';

  @override
  String get hostAddressHint => '192.168.1.100 veya casaos.local';

  @override
  String get hostAddressRequired => 'Sunucu adresini girin';

  @override
  String get port => 'Bağlantı noktası';

  @override
  String get portRequired => 'Bağlantı noktasını girin';

  @override
  String get portInvalid => 'Geçerli bir bağlantı noktası girin (1-65535)';

  @override
  String get useHttps => 'HTTPS kullan';

  @override
  String get save => 'Kaydet';

  @override
  String get noServerConfigured => 'Henüz sunucu yok';

  @override
  String get activate => 'Etkinleştir';

  @override
  String get edit => 'Düzenle';

  @override
  String get confirmDelete => 'Silmeyi onayla';

  @override
  String confirmDeleteServer(Object name) {
    return '\"$name\" sunucusu silinsin mi?';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS\'a hoş geldiniz';

  @override
  String get createAccountHint => 'Önce ilk hesabınızı oluşturalım.';

  @override
  String get createAccount => 'Hesap oluştur';

  @override
  String get start => 'Başla →';

  @override
  String get confirmPassword => 'Şifreyi onayla';

  @override
  String get confirmPasswordRequired => 'Şifreyi tekrar girin';

  @override
  String get passwordMismatch => 'Şifreler eşleşmiyor';

  @override
  String get allDone => 'Tamam!';

  @override
  String get accountCreatedHint =>
      'Hesabınız oluşturuldu. CasaOS / ZimaOS masaüstüne girin.';

  @override
  String get enterDesktop => 'Masaüstüne gir';

  @override
  String get cannotGetInitKey =>
      'Init anahtarı alınamadı. Sunucuyu kontrol edin.';

  @override
  String initFailed(Object e) {
    return 'Başlatma başarısız: $e';
  }

  @override
  String get openAppWith => 'Uygulamayı aç';

  @override
  String get builtinBrowser => 'Dahili tarayıcı';

  @override
  String get systemBrowser => 'Sistem tarayıcısı';

  @override
  String get openInSystemBrowser => 'Sistem tarayıcısında aç';

  @override
  String get loading => 'Yükleniyor...';
}
