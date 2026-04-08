// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malay (`ms`).
class AppLocalizationsMs extends AppLocalizations {
  AppLocalizationsMs([String locale = 'ms']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Klien CasaOS / ZimaOS';

  @override
  String get settings => 'Tetapan';

  @override
  String get about => 'Perihal';

  @override
  String get appearance => 'Penampilan';

  @override
  String get openSource => 'Sumber terbuka';

  @override
  String get tapToOpen => 'Ketik untuk buka dalam pelayar';

  @override
  String get themeMode => 'Mod tema';

  @override
  String get followSystem => 'Ikut sistem';

  @override
  String get lightMode => 'Cerah';

  @override
  String get darkMode => 'Gelap';

  @override
  String get themeColor => 'Warna tema';

  @override
  String get themeColorDescription =>
      'Pilih warna tema; terpakai untuk mod cerah dan gelap.';

  @override
  String get language => 'Bahasa';

  @override
  String get languageFollowSystem => 'Ikut sistem';

  @override
  String get files => 'Fail';

  @override
  String get serverConfig => 'Pelayan';

  @override
  String get refresh => 'Segar semula';

  @override
  String get user => 'Pengguna';

  @override
  String get login => 'Log masuk';

  @override
  String get home => 'Laman utama';

  @override
  String get welcome => 'Selamat datang';

  @override
  String get logout => 'Log keluar';

  @override
  String get systemStatus => 'Status sistem';

  @override
  String get error => 'Ralat';

  @override
  String get apps => 'Aplikasi';

  @override
  String appCount(Object count) {
    return '$count jumlah';
  }

  @override
  String get noApps => 'Tiada aplikasi';

  @override
  String get cancel => 'Batal';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Cuba lagi';

  @override
  String get back => 'Kembali';

  @override
  String get delete => 'Padam';

  @override
  String get cannotGetAppAddress => 'Tidak dapat alamat aplikasi';

  @override
  String cannotOpen(Object url) {
    return 'Tidak dapat buka: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Gagal buka: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Jenis aplikasi ini tidak menyokong operasi ini';

  @override
  String get starting => 'Memulakan';

  @override
  String get restarting => 'Memulakan semula';

  @override
  String get restart => 'Mulakan semula';

  @override
  String get closed => 'Ditutup';

  @override
  String operationFailed(Object e) {
    return 'Operasi gagal: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Petua';
  }

  @override
  String get noDescription =>
      'Tiada penerangan. Ubah konfigurasi dalam tetapan.';

  @override
  String get checkUpdateNotSupported =>
      'Aplikasi ini tidak menyokong semakan kemas kini';

  @override
  String updateFailed(Object e) {
    return 'Kemas kini gagal: $e';
  }

  @override
  String get confirmUninstall => 'Sahkan nyahpasang';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Pasti mahu nyahpasang \"$name\"? Data tidak boleh dipulihkan selepas nyahpasang.';
  }

  @override
  String get uninstall => 'Nyahpasang';

  @override
  String get cannotUninstall => 'Tidak dapat nyahpasang';

  @override
  String get uninstalled => 'Dinyahpasang';

  @override
  String uninstallFailed(Object e) {
    return 'Nyahpasang gagal: $e';
  }

  @override
  String get cannotRestart => 'Tidak dapat mulakan semula';

  @override
  String get cannotClose => 'Tidak dapat tutup';

  @override
  String get running => 'Berjalan';

  @override
  String get open => 'Buka';

  @override
  String get launchAndOpen => 'Lancar dan buka';

  @override
  String get tips => 'Petua';

  @override
  String get checkAndUpdate => 'Semak dan kemas kini';

  @override
  String get close => 'Tutup';

  @override
  String get configureServerFirst =>
      'Sila konfigurasi dan aktifkan pelayan dahulu';

  @override
  String get loginFailed => 'Log masuk gagal';

  @override
  String get configureServer => 'Konfigurasi pelayan';

  @override
  String get username => 'Nama pengguna';

  @override
  String get password => 'Kata laluan';

  @override
  String get usernameRequired => 'Masukkan nama pengguna';

  @override
  String get passwordRequired => 'Masukkan kata laluan';

  @override
  String get passwordMinLength => 'Kata laluan sekurang-kurangnya 5 aksara';

  @override
  String get rememberCredentials => 'Ingat kelayakan';

  @override
  String get newFolder => 'Folder baharu';

  @override
  String get newFile => 'Fail baharu';

  @override
  String get folderName => 'Nama folder';

  @override
  String get fileName => 'Nama fail';

  @override
  String get create => 'Cipta';

  @override
  String get folderCreated => 'Folder berjaya dicipta';

  @override
  String get fileCreated => 'Fail berjaya dicipta';

  @override
  String createFailed(Object e) {
    return 'Gagal mencipta: $e';
  }

  @override
  String get rename => 'Namakan semula';

  @override
  String get renameFolder => 'Namakan semula folder';

  @override
  String get renameFile => 'Namakan semula fail';

  @override
  String get newName => 'Nama baharu';

  @override
  String get renameSuccess => 'Berjaya dinamakan semula';

  @override
  String renameFailed(Object e) {
    return 'Gagal menamakan semula: $e';
  }

  @override
  String get deleteFolder => 'Padam folder';

  @override
  String get deleteFile => 'Padam fail';

  @override
  String deleteConfirm(Object name) {
    return 'Padam \"$name\"? Tindakan ini tidak boleh dibuat asal.';
  }

  @override
  String get deleteSuccess => 'Berjaya dipadam';

  @override
  String deleteFailed(Object e) {
    return 'Gagal memadam: $e';
  }

  @override
  String get parentDirectory => 'Direktori induk';

  @override
  String get listView => 'Paparan senarai';

  @override
  String get gridView => 'Paparan grid';

  @override
  String get folderEmpty => 'Folder kosong';

  @override
  String openFile(Object name) {
    return 'Buka fail: $name';
  }

  @override
  String get folder => 'Folder';

  @override
  String get file => 'Fail';

  @override
  String get download => 'Muat turun';

  @override
  String get downloadNotImplemented => 'Muat turun belum dilaksanakan';

  @override
  String get downloadSuccess => 'Muat turun berjaya';

  @override
  String get downloadCancelled => 'Muat turun dibatalkan';

  @override
  String get downloadPreparing => 'Menyediakan muat turun...';

  @override
  String get downloadAndPlay => 'Muat turun dan main';

  @override
  String get downloadingForPlayback => 'Memuat turun untuk main balik...';

  @override
  String get fullscreen => 'Skrin penuh';

  @override
  String get installSuccess => 'Pasangan berjaya';

  @override
  String installSuccessWithApp(Object title) {
    return '$title berjaya dipasang';
  }

  @override
  String installFailed(Object e) {
    return 'Pasangan gagal: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Gagal dapat konfig aplikasi: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Pasangan tersuai: $title';
  }

  @override
  String get editComposeHint => 'Edit docker-compose dan ketik pasang';

  @override
  String get install => 'Pasang';

  @override
  String get appStore => 'Kedai aplikasi';

  @override
  String get searchApps => 'Cari aplikasi';

  @override
  String get category => 'Kategori';

  @override
  String get allCategories => 'Semua kategori';

  @override
  String get noAppsFound => 'Tiada aplikasi sepadan';

  @override
  String get installed => 'Dipasang';

  @override
  String get custom => 'Tersuai';

  @override
  String get appDetail => 'Butiran aplikasi';

  @override
  String get appNotFound => 'Aplikasi tidak dijumpai';

  @override
  String versionLabel(Object version) {
    return 'Versi: $version';
  }

  @override
  String get description => 'Penerangan';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Tidak berjalan';

  @override
  String get installStartNotImplemented =>
      'Pasang/mula belum dilaksanakan (perlu /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Nyahpasang belum dilaksanakan (perlu /v2/app_management/compose)';

  @override
  String get installStart => 'Pasang / Mula';

  @override
  String get legacyApps => 'Aplikasi lama (akan dibina semula)';

  @override
  String get version => 'Versi';

  @override
  String get cpuUsage => 'Penggunaan CPU';

  @override
  String cores(Object count) {
    return 'Teras: $count';
  }

  @override
  String get memory => 'Memori (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% digunakan';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Digunakan $used / Jumlah $total';
  }

  @override
  String get storage => 'Storan';

  @override
  String totalLabel(Object storage) {
    return 'Jumlah $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Digunakan $used · $percent%';
  }

  @override
  String get disk => 'Cakera';

  @override
  String get networkStatus => 'Rangkaian';

  @override
  String get addServer => 'Tambah pelayan';

  @override
  String get editServer => 'Edit pelayan';

  @override
  String get nasType => 'Jenis NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nama pelayan';

  @override
  String get serverNameRequired => 'Masukkan nama pelayan';

  @override
  String get hostAddress => 'Alamat hos';

  @override
  String get hostAddressHint => '192.168.1.100 atau casaos.local';

  @override
  String get hostAddressRequired => 'Masukkan alamat hos';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Masukkan port';

  @override
  String get portInvalid => 'Port tidak sah (1-65535)';

  @override
  String get useHttps => 'Guna HTTPS';

  @override
  String get save => 'Simpan';

  @override
  String get noServerConfigured => 'Tiada pelayan dikonfigurasi lagi';

  @override
  String get activate => 'Aktifkan';

  @override
  String get edit => 'Edit';

  @override
  String get confirmDelete => 'Sahkan padam';

  @override
  String confirmDeleteServer(Object name) {
    return 'Padam pelayan \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Selamat datang ke CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Mari cipta akaun awal anda dahulu.';

  @override
  String get createAccount => 'Cipta akaun';

  @override
  String get start => 'Mula →';

  @override
  String get confirmPassword => 'Sahkan kata laluan';

  @override
  String get confirmPasswordRequired => 'Masukkan kata laluan sekali lagi';

  @override
  String get passwordMismatch => 'Kata laluan tidak sepadan';

  @override
  String get allDone => 'Selesai!';

  @override
  String get accountCreatedHint =>
      'Akaun anda telah dicipta. Masuk desktop untuk CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Masuk desktop';

  @override
  String get cannotGetInitKey => 'Tidak dapat kunci init. Semak pelayan.';

  @override
  String initFailed(Object e) {
    return 'Permulaan gagal: $e';
  }

  @override
  String get openAppWith => 'Buka aplikasi dengan';

  @override
  String get builtinBrowser => 'Pelayar terbina dalam';

  @override
  String get systemBrowser => 'Pelayar sistem';

  @override
  String get openInSystemBrowser => 'Buka dalam pelayar sistem';

  @override
  String get loading => 'Memuatkan...';
}
