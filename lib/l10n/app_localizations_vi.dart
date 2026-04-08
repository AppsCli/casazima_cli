// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Ứng dụng khách CasaOS / ZimaOS';

  @override
  String get settings => 'Cài đặt';

  @override
  String get about => 'Giới thiệu';

  @override
  String get appearance => 'Giao diện';

  @override
  String get openSource => 'Mã nguồn mở';

  @override
  String get tapToOpen => 'Chạm để mở trong trình duyệt';

  @override
  String get themeMode => 'Chế độ giao diện';

  @override
  String get followSystem => 'Theo hệ thống';

  @override
  String get lightMode => 'Sáng';

  @override
  String get darkMode => 'Tối';

  @override
  String get themeColor => 'Màu chủ đề';

  @override
  String get themeColorDescription =>
      'Chọn màu chủ đề; áp dụng cho cả chế độ sáng và tối.';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageFollowSystem => 'Theo hệ thống';

  @override
  String get files => 'Tệp';

  @override
  String get serverConfig => 'Máy chủ';

  @override
  String get refresh => 'Làm mới';

  @override
  String get user => 'Người dùng';

  @override
  String get login => 'Đăng nhập';

  @override
  String get home => 'Trang chủ';

  @override
  String get welcome => 'Chào mừng';

  @override
  String get logout => 'Đăng xuất';

  @override
  String get systemStatus => 'Trạng thái hệ thống';

  @override
  String get error => 'Lỗi';

  @override
  String get apps => 'Ứng dụng';

  @override
  String appCount(Object count) {
    return 'Tổng $count';
  }

  @override
  String get noApps => 'Không có ứng dụng';

  @override
  String get cancel => 'Hủy';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Thử lại';

  @override
  String get back => 'Quay lại';

  @override
  String get delete => 'Xóa';

  @override
  String get cannotGetAppAddress => 'Không lấy được địa chỉ ứng dụng';

  @override
  String cannotOpen(Object url) {
    return 'Không mở được: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Mở thất bại: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Loại ứng dụng này không hỗ trợ thao tác này';

  @override
  String get starting => 'Đang khởi động';

  @override
  String get restarting => 'Đang khởi động lại';

  @override
  String get restart => 'Khởi động lại';

  @override
  String get closed => 'Đã đóng';

  @override
  String operationFailed(Object e) {
    return 'Thao tác thất bại: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Mẹo';
  }

  @override
  String get noDescription => 'Không có mô tả. Vào cài đặt để chỉnh cấu hình.';

  @override
  String get checkUpdateNotSupported =>
      'Ứng dụng này không hỗ trợ kiểm tra cập nhật';

  @override
  String updateFailed(Object e) {
    return 'Cập nhật thất bại: $e';
  }

  @override
  String get confirmUninstall => 'Xác nhận gỡ cài đặt';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Bạn có chắc muốn gỡ \"$name\"? Dữ liệu không thể khôi phục sau khi gỡ.';
  }

  @override
  String get uninstall => 'Gỡ cài đặt';

  @override
  String get cannotUninstall => 'Không thể gỡ cài đặt';

  @override
  String get uninstalled => 'Đã gỡ cài đặt';

  @override
  String uninstallFailed(Object e) {
    return 'Gỡ cài đặt thất bại: $e';
  }

  @override
  String get cannotRestart => 'Không thể khởi động lại';

  @override
  String get cannotClose => 'Không thể đóng';

  @override
  String get running => 'Đang chạy';

  @override
  String get open => 'Mở';

  @override
  String get launchAndOpen => 'Khởi chạy và mở';

  @override
  String get tips => 'Mẹo';

  @override
  String get checkAndUpdate => 'Kiểm tra và cập nhật';

  @override
  String get close => 'Đóng';

  @override
  String get configureServerFirst =>
      'Vui lòng cấu hình và kích hoạt máy chủ trước';

  @override
  String get loginFailed => 'Đăng nhập thất bại';

  @override
  String get configureServer => 'Cấu hình máy chủ';

  @override
  String get username => 'Tên đăng nhập';

  @override
  String get password => 'Mật khẩu';

  @override
  String get usernameRequired => 'Nhập tên đăng nhập';

  @override
  String get passwordRequired => 'Nhập mật khẩu';

  @override
  String get passwordMinLength => 'Mật khẩu ít nhất 5 ký tự';

  @override
  String get rememberCredentials => 'Ghi nhớ thông tin';

  @override
  String get newFolder => 'Thư mục mới';

  @override
  String get newFile => 'Tệp mới';

  @override
  String get folderName => 'Tên thư mục';

  @override
  String get fileName => 'Tên tệp';

  @override
  String get create => 'Tạo';

  @override
  String get folderCreated => 'Đã tạo thư mục';

  @override
  String get fileCreated => 'Đã tạo tệp';

  @override
  String createFailed(Object e) {
    return 'Tạo thất bại: $e';
  }

  @override
  String get rename => 'Đổi tên';

  @override
  String get renameFolder => 'Đổi tên thư mục';

  @override
  String get renameFile => 'Đổi tên tệp';

  @override
  String get newName => 'Tên mới';

  @override
  String get renameSuccess => 'Đổi tên thành công';

  @override
  String renameFailed(Object e) {
    return 'Đổi tên thất bại: $e';
  }

  @override
  String get deleteFolder => 'Xóa thư mục';

  @override
  String get deleteFile => 'Xóa tệp';

  @override
  String deleteConfirm(Object name) {
    return 'Xóa \"$name\"? Hành động này không thể hoàn tác.';
  }

  @override
  String get deleteSuccess => 'Đã xóa';

  @override
  String deleteFailed(Object e) {
    return 'Xóa thất bại: $e';
  }

  @override
  String get parentDirectory => 'Thư mục cha';

  @override
  String get listView => 'Danh sách';

  @override
  String get gridView => 'Lưới';

  @override
  String get folderEmpty => 'Thư mục trống';

  @override
  String openFile(Object name) {
    return 'Mở tệp: $name';
  }

  @override
  String get folder => 'Thư mục';

  @override
  String get file => 'Tệp';

  @override
  String get download => 'Tải xuống';

  @override
  String get downloadNotImplemented => 'Chưa hỗ trợ tải xuống';

  @override
  String get downloadSuccess => 'Tải xuống thành công';

  @override
  String get downloadCancelled => 'Đã hủy tải xuống';

  @override
  String get downloadPreparing => 'Đang chuẩn bị tải...';

  @override
  String get downloadAndPlay => 'Tải và phát';

  @override
  String get downloadingForPlayback => 'Đang tải để phát...';

  @override
  String get fullscreen => 'Toàn màn hình';

  @override
  String get installSuccess => 'Cài đặt thành công';

  @override
  String installSuccessWithApp(Object title) {
    return 'Đã cài $title';
  }

  @override
  String installFailed(Object e) {
    return 'Cài đặt thất bại: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Không lấy được cấu hình ứng dụng: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Cài tùy chỉnh: $title';
  }

  @override
  String get editComposeHint => 'Sửa docker-compose rồi nhấn cài đặt';

  @override
  String get install => 'Cài đặt';

  @override
  String get appStore => 'Cửa hàng ứng dụng';

  @override
  String get searchApps => 'Tìm ứng dụng';

  @override
  String get category => 'Danh mục';

  @override
  String get allCategories => 'Tất cả danh mục';

  @override
  String get noAppsFound => 'Không tìm thấy ứng dụng phù hợp';

  @override
  String get installed => 'Đã cài';

  @override
  String get custom => 'Tùy chỉnh';

  @override
  String get appDetail => 'Chi tiết ứng dụng';

  @override
  String get appNotFound => 'Không tìm thấy ứng dụng';

  @override
  String versionLabel(Object version) {
    return 'Phiên bản: $version';
  }

  @override
  String get description => 'Mô tả';

  @override
  String get status => 'Trạng thái';

  @override
  String get notRunning => 'Không chạy';

  @override
  String get installStartNotImplemented =>
      'Cài/khởi chạy chưa hỗ trợ (cần /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Gỡ cài đặt chưa hỗ trợ (cần /v2/app_management/compose)';

  @override
  String get installStart => 'Cài đặt / Khởi chạy';

  @override
  String get legacyApps => 'Ứng dụng cũ (sẽ xây lại)';

  @override
  String get version => 'Phiên bản';

  @override
  String get cpuUsage => 'Sử dụng CPU';

  @override
  String cores(Object count) {
    return 'Nhân: $count';
  }

  @override
  String get memory => 'Bộ nhớ (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'Đang dùng $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Đã dùng $used / Tổng $total';
  }

  @override
  String get storage => 'Lưu trữ';

  @override
  String totalLabel(Object storage) {
    return 'Tổng $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Đã dùng $used · $percent%';
  }

  @override
  String get disk => 'Ổ đĩa';

  @override
  String get networkStatus => 'Mạng';

  @override
  String get addServer => 'Thêm máy chủ';

  @override
  String get editServer => 'Sửa máy chủ';

  @override
  String get nasType => 'Loại NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Tên máy chủ';

  @override
  String get serverNameRequired => 'Nhập tên máy chủ';

  @override
  String get hostAddress => 'Địa chỉ máy chủ';

  @override
  String get hostAddressHint => '192.168.1.100 hoặc casaos.local';

  @override
  String get hostAddressRequired => 'Nhập địa chỉ máy chủ';

  @override
  String get port => 'Cổng';

  @override
  String get portRequired => 'Nhập cổng';

  @override
  String get portInvalid => 'Cổng không hợp lệ (1-65535)';

  @override
  String get useHttps => 'Dùng HTTPS';

  @override
  String get save => 'Lưu';

  @override
  String get noServerConfigured => 'Chưa cấu hình máy chủ';

  @override
  String get activate => 'Kích hoạt';

  @override
  String get edit => 'Sửa';

  @override
  String get confirmDelete => 'Xác nhận xóa';

  @override
  String confirmDeleteServer(Object name) {
    return 'Xóa máy chủ \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Chào mừng đến CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Hãy tạo tài khoản ban đầu trước.';

  @override
  String get createAccount => 'Tạo tài khoản';

  @override
  String get start => 'Bắt đầu →';

  @override
  String get confirmPassword => 'Xác nhận mật khẩu';

  @override
  String get confirmPasswordRequired => 'Nhập lại mật khẩu';

  @override
  String get passwordMismatch => 'Mật khẩu không khớp';

  @override
  String get allDone => 'Hoàn tất!';

  @override
  String get accountCreatedHint =>
      'Tài khoản đã được tạo. Vào màn hình chính CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Vào màn hình chính';

  @override
  String get cannotGetInitKey =>
      'Không lấy được khóa khởi tạo. Kiểm tra máy chủ.';

  @override
  String initFailed(Object e) {
    return 'Khởi tạo thất bại: $e';
  }

  @override
  String get openAppWith => 'Mở ứng dụng bằng';

  @override
  String get builtinBrowser => 'Trình duyệt trong app';

  @override
  String get systemBrowser => 'Trình duyệt hệ thống';

  @override
  String get openInSystemBrowser => 'Mở bằng trình duyệt hệ thống';

  @override
  String get loading => 'Đang tải...';
}
