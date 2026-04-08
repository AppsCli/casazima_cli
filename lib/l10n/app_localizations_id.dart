// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Klien CasaOS / ZimaOS';

  @override
  String get settings => 'Pengaturan';

  @override
  String get about => 'Tentang';

  @override
  String get appearance => 'Tampilan';

  @override
  String get openSource => 'Sumber terbuka';

  @override
  String get tapToOpen => 'Ketuk untuk membuka di browser';

  @override
  String get themeMode => 'Mode tema';

  @override
  String get followSystem => 'Ikuti sistem';

  @override
  String get lightMode => 'Terang';

  @override
  String get darkMode => 'Gelap';

  @override
  String get themeColor => 'Warna tema';

  @override
  String get themeColorDescription =>
      'Pilih warna tema; berlaku untuk mode terang dan gelap.';

  @override
  String get language => 'Bahasa';

  @override
  String get languageFollowSystem => 'Ikuti sistem';

  @override
  String get files => 'File';

  @override
  String get serverConfig => 'Server';

  @override
  String get refresh => 'Segarkan';

  @override
  String get user => 'Pengguna';

  @override
  String get login => 'Masuk';

  @override
  String get home => 'Beranda';

  @override
  String get welcome => 'Selamat datang';

  @override
  String get logout => 'Keluar';

  @override
  String get systemStatus => 'Status sistem';

  @override
  String get error => 'Kesalahan';

  @override
  String get apps => 'Aplikasi';

  @override
  String appCount(Object count) {
    return '$count total';
  }

  @override
  String get noApps => 'Tidak ada aplikasi';

  @override
  String get cancel => 'Batal';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Coba lagi';

  @override
  String get back => 'Kembali';

  @override
  String get delete => 'Hapus';

  @override
  String get cannotGetAppAddress => 'Tidak dapat mendapatkan alamat aplikasi';

  @override
  String cannotOpen(Object url) {
    return 'Tidak dapat membuka: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Gagal membuka: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Jenis aplikasi ini tidak mendukung operasi ini';

  @override
  String get starting => 'Memulai';

  @override
  String get restarting => 'Memulai ulang';

  @override
  String get restart => 'Mulai ulang';

  @override
  String get closed => 'Ditutup';

  @override
  String operationFailed(Object e) {
    return 'Operasi gagal: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Tips';
  }

  @override
  String get noDescription =>
      'Tidak ada deskripsi. Buka pengaturan untuk mengubah konfigurasi.';

  @override
  String get checkUpdateNotSupported =>
      'Aplikasi ini tidak mendukung pemeriksaan pembaruan';

  @override
  String updateFailed(Object e) {
    return 'Pembaruan gagal: $e';
  }

  @override
  String get confirmUninstall => 'Konfirmasi copot pemasangan';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Yakin ingin mencopot \"$name\"? Data tidak dapat dipulihkan setelah dicopot.';
  }

  @override
  String get uninstall => 'Copot pemasangan';

  @override
  String get cannotUninstall => 'Tidak dapat mencopot';

  @override
  String get uninstalled => 'Dicopot';

  @override
  String uninstallFailed(Object e) {
    return 'Gagal mencopot: $e';
  }

  @override
  String get cannotRestart => 'Tidak dapat memulai ulang';

  @override
  String get cannotClose => 'Tidak dapat menutup';

  @override
  String get running => 'Berjalan';

  @override
  String get open => 'Buka';

  @override
  String get launchAndOpen => 'Luncurkan dan buka';

  @override
  String get tips => 'Tips';

  @override
  String get checkAndUpdate => 'Periksa dan perbarui';

  @override
  String get close => 'Tutup';

  @override
  String get configureServerFirst =>
      'Silakan konfigurasi dan aktifkan server terlebih dahulu';

  @override
  String get loginFailed => 'Gagal masuk';

  @override
  String get configureServer => 'Konfigurasi server';

  @override
  String get username => 'Nama pengguna';

  @override
  String get password => 'Kata sandi';

  @override
  String get usernameRequired => 'Masukkan nama pengguna';

  @override
  String get passwordRequired => 'Masukkan kata sandi';

  @override
  String get passwordMinLength => 'Kata sandi minimal 5 karakter';

  @override
  String get rememberCredentials => 'Ingat kredensial';

  @override
  String get newFolder => 'Folder baru';

  @override
  String get newFile => 'File baru';

  @override
  String get folderName => 'Nama folder';

  @override
  String get fileName => 'Nama file';

  @override
  String get create => 'Buat';

  @override
  String get folderCreated => 'Folder berhasil dibuat';

  @override
  String get fileCreated => 'File berhasil dibuat';

  @override
  String createFailed(Object e) {
    return 'Gagal membuat: $e';
  }

  @override
  String get rename => 'Ubah nama';

  @override
  String get renameFolder => 'Ubah nama folder';

  @override
  String get renameFile => 'Ubah nama file';

  @override
  String get newName => 'Nama baru';

  @override
  String get renameSuccess => 'Berhasil diubah namanya';

  @override
  String renameFailed(Object e) {
    return 'Gagal mengubah nama: $e';
  }

  @override
  String get deleteFolder => 'Hapus folder';

  @override
  String get deleteFile => 'Hapus file';

  @override
  String deleteConfirm(Object name) {
    return 'Hapus \"$name\"? Tindakan ini tidak dapat dibatalkan.';
  }

  @override
  String get deleteSuccess => 'Berhasil dihapus';

  @override
  String deleteFailed(Object e) {
    return 'Gagal menghapus: $e';
  }

  @override
  String get parentDirectory => 'Folder induk';

  @override
  String get listView => 'Tampilan daftar';

  @override
  String get gridView => 'Tampilan kisi';

  @override
  String get folderEmpty => 'Folder kosong';

  @override
  String openFile(Object name) {
    return 'Buka file: $name';
  }

  @override
  String get folder => 'Folder';

  @override
  String get file => 'File';

  @override
  String get download => 'Unduh';

  @override
  String get downloadNotImplemented => 'Unduh belum diimplementasikan';

  @override
  String get downloadSuccess => 'Unduhan berhasil';

  @override
  String get downloadCancelled => 'Unduhan dibatalkan';

  @override
  String get downloadPreparing => 'Mempersiapkan unduhan...';

  @override
  String get downloadAndPlay => 'Unduh dan putar';

  @override
  String get downloadingForPlayback => 'Mengunduh untuk diputar...';

  @override
  String get fullscreen => 'Layar penuh';

  @override
  String get installSuccess => 'Berhasil dipasang';

  @override
  String installSuccessWithApp(Object title) {
    return '$title berhasil dipasang';
  }

  @override
  String installFailed(Object e) {
    return 'Gagal memasang: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Gagal mengambil konfigurasi aplikasi: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Pemasangan kustom: $title';
  }

  @override
  String get editComposeHint => 'Edit docker-compose lalu ketuk pasang';

  @override
  String get install => 'Pasang';

  @override
  String get appStore => 'Toko aplikasi';

  @override
  String get searchApps => 'Cari aplikasi';

  @override
  String get category => 'Kategori';

  @override
  String get allCategories => 'Semua kategori';

  @override
  String get noAppsFound => 'Tidak ada aplikasi yang cocok';

  @override
  String get installed => 'Terpasang';

  @override
  String get custom => 'Kustom';

  @override
  String get appDetail => 'Detail aplikasi';

  @override
  String get appNotFound => 'Aplikasi tidak ditemukan';

  @override
  String versionLabel(Object version) {
    return 'Versi: $version';
  }

  @override
  String get description => 'Deskripsi';

  @override
  String get status => 'Status';

  @override
  String get notRunning => 'Tidak berjalan';

  @override
  String get installStartNotImplemented =>
      'Pasang/mulai belum diimplementasikan (perlu /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Copot pemasangan belum diimplementasikan (perlu /v2/app_management/compose)';

  @override
  String get installStart => 'Pasang / Mulai';

  @override
  String get legacyApps => 'Aplikasi lama (akan dibangun ulang)';

  @override
  String get version => 'Versi';

  @override
  String get cpuUsage => 'Penggunaan CPU';

  @override
  String cores(Object count) {
    return 'Inti: $count';
  }

  @override
  String get memory => 'Memori (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'Penggunaan $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Terpakai $used / Total $total';
  }

  @override
  String get storage => 'Penyimpanan';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Terpakai $used · $percent%';
  }

  @override
  String get disk => 'Disk';

  @override
  String get networkStatus => 'Jaringan';

  @override
  String get addServer => 'Tambah server';

  @override
  String get editServer => 'Edit server';

  @override
  String get nasType => 'Jenis NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nama server';

  @override
  String get serverNameRequired => 'Masukkan nama server';

  @override
  String get hostAddress => 'Alamat host';

  @override
  String get hostAddressHint => '192.168.1.100 atau casaos.local';

  @override
  String get hostAddressRequired => 'Masukkan alamat host';

  @override
  String get port => 'Port';

  @override
  String get portRequired => 'Masukkan port';

  @override
  String get portInvalid => 'Port tidak valid (1-65535)';

  @override
  String get useHttps => 'Gunakan HTTPS';

  @override
  String get save => 'Simpan';

  @override
  String get noServerConfigured => 'Belum ada server yang dikonfigurasi';

  @override
  String get activate => 'Aktifkan';

  @override
  String get edit => 'Edit';

  @override
  String get confirmDelete => 'Konfirmasi hapus';

  @override
  String confirmDeleteServer(Object name) {
    return 'Hapus server \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Selamat datang di CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Mari buat akun awal Anda terlebih dahulu.';

  @override
  String get createAccount => 'Buat akun';

  @override
  String get start => 'Mulai →';

  @override
  String get confirmPassword => 'Konfirmasi kata sandi';

  @override
  String get confirmPasswordRequired => 'Masukkan kata sandi lagi';

  @override
  String get passwordMismatch => 'Kata sandi tidak cocok';

  @override
  String get allDone => 'Selesai!';

  @override
  String get accountCreatedHint =>
      'Akun Anda telah dibuat. Masuk ke desktop untuk menggunakan CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Masuk desktop';

  @override
  String get cannotGetInitKey =>
      'Tidak dapat mendapatkan kunci init. Periksa status server.';

  @override
  String initFailed(Object e) {
    return 'Inisialisasi gagal: $e';
  }

  @override
  String get openAppWith => 'Buka aplikasi dengan';

  @override
  String get builtinBrowser => 'Browser bawaan';

  @override
  String get systemBrowser => 'Browser sistem';

  @override
  String get openInSystemBrowser => 'Buka di browser sistem';

  @override
  String get loading => 'Memuat...';
}
