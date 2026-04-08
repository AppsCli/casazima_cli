// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'ไคลเอนต์ CasaOS / ZimaOS';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get appearance => 'รูปลักษณ์';

  @override
  String get openSource => 'โอเพนซอร์ส';

  @override
  String get tapToOpen => 'แตะเพื่อเปิดในเบราว์เซอร์';

  @override
  String get themeMode => 'โหมดธีม';

  @override
  String get followSystem => 'ตามระบบ';

  @override
  String get lightMode => 'สว่าง';

  @override
  String get darkMode => 'มืด';

  @override
  String get themeColor => 'สีธีม';

  @override
  String get themeColorDescription => 'เลือกสีธีม ใช้ได้ทั้งโหมดสว่างและมืด';

  @override
  String get language => 'ภาษา';

  @override
  String get languageFollowSystem => 'ตามระบบ';

  @override
  String get files => 'ไฟล์';

  @override
  String get serverConfig => 'เซิร์ฟเวอร์';

  @override
  String get refresh => 'รีเฟรช';

  @override
  String get user => 'ผู้ใช้';

  @override
  String get login => 'เข้าสู่ระบบ';

  @override
  String get home => 'หน้าแรก';

  @override
  String get welcome => 'ยินดีต้อนรับ';

  @override
  String get logout => 'ออกจากระบบ';

  @override
  String get systemStatus => 'สถานะระบบ';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String get apps => 'แอป';

  @override
  String appCount(Object count) {
    return 'ทั้งหมด $count รายการ';
  }

  @override
  String get noApps => 'ไม่มีแอป';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get ok => 'ตกลง';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get back => 'กลับ';

  @override
  String get delete => 'ลบ';

  @override
  String get cannotGetAppAddress => 'ไม่สามารถรับที่อยู่แอปได้';

  @override
  String cannotOpen(Object url) {
    return 'ไม่สามารถเปิด: $url';
  }

  @override
  String openFailed(Object e) {
    return 'เปิดไม่สำเร็จ: $e';
  }

  @override
  String get appTypeNotSupported => 'ประเภทแอปนี้ไม่รองรับการดำเนินการนี้';

  @override
  String get starting => 'กำลังเริ่ม';

  @override
  String get restarting => 'กำลังรีสตาร์ท';

  @override
  String get restart => 'รีสตาร์ท';

  @override
  String get closed => 'ปิดแล้ว';

  @override
  String operationFailed(Object e) {
    return 'ดำเนินการไม่สำเร็จ: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - เคล็ดลับ';
  }

  @override
  String get noDescription =>
      'ไม่มีคำอธิบาย ไปที่การตั้งค่าเพื่อแก้ไขการกำหนดค่า';

  @override
  String get checkUpdateNotSupported => 'แอปนี้ไม่รองรับการตรวจสอบอัปเดต';

  @override
  String updateFailed(Object e) {
    return 'อัปเดตไม่สำเร็จ: $e';
  }

  @override
  String get confirmUninstall => 'ยืนยันการถอนการติดตั้ง';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'ต้องการถอนการติดตั้ง \"$name\" หรือไม่ ข้อมูลจะกู้คืนไม่ได้หลังถอนการติดตั้ง';
  }

  @override
  String get uninstall => 'ถอนการติดตั้ง';

  @override
  String get cannotUninstall => 'ถอนการติดตั้งไม่ได้';

  @override
  String get uninstalled => 'ถอนการติดตั้งแล้ว';

  @override
  String uninstallFailed(Object e) {
    return 'ถอนการติดตั้งไม่สำเร็จ: $e';
  }

  @override
  String get cannotRestart => 'รีสตาร์ทไม่ได้';

  @override
  String get cannotClose => 'ปิดไม่ได้';

  @override
  String get running => 'กำลังทำงาน';

  @override
  String get open => 'เปิด';

  @override
  String get launchAndOpen => 'เรียกใช้และเปิด';

  @override
  String get tips => 'เคล็ดลับ';

  @override
  String get checkAndUpdate => 'ตรวจสอบและอัปเดต';

  @override
  String get close => 'ปิด';

  @override
  String get configureServerFirst => 'โปรดกำหนดค่าและเปิดใช้งานเซิร์ฟเวอร์ก่อน';

  @override
  String get loginFailed => 'เข้าสู่ระบบไม่สำเร็จ';

  @override
  String get configureServer => 'กำหนดค่าเซิร์ฟเวอร์';

  @override
  String get username => 'ชื่อผู้ใช้';

  @override
  String get password => 'รหัสผ่าน';

  @override
  String get usernameRequired => 'กรุณากรอกชื่อผู้ใช้';

  @override
  String get passwordRequired => 'กรุณากรอกรหัสผ่าน';

  @override
  String get passwordMinLength => 'รหัสผ่านต้องมีอย่างน้อย 5 ตัวอักษร';

  @override
  String get rememberCredentials => 'จดจำข้อมูลเข้าสู่ระบบ';

  @override
  String get newFolder => 'โฟลเดอร์ใหม่';

  @override
  String get newFile => 'ไฟล์ใหม่';

  @override
  String get folderName => 'ชื่อโฟลเดอร์';

  @override
  String get fileName => 'ชื่อไฟล์';

  @override
  String get create => 'สร้าง';

  @override
  String get folderCreated => 'สร้างโฟลเดอร์สำเร็จ';

  @override
  String get fileCreated => 'สร้างไฟล์สำเร็จ';

  @override
  String createFailed(Object e) {
    return 'สร้างไม่สำเร็จ: $e';
  }

  @override
  String get rename => 'เปลี่ยนชื่อ';

  @override
  String get renameFolder => 'เปลี่ยนชื่อโฟลเดอร์';

  @override
  String get renameFile => 'เปลี่ยนชื่อไฟล์';

  @override
  String get newName => 'ชื่อใหม่';

  @override
  String get renameSuccess => 'เปลี่ยนชื่อสำเร็จ';

  @override
  String renameFailed(Object e) {
    return 'เปลี่ยนชื่อไม่สำเร็จ: $e';
  }

  @override
  String get deleteFolder => 'ลบโฟลเดอร์';

  @override
  String get deleteFile => 'ลบไฟล์';

  @override
  String deleteConfirm(Object name) {
    return 'ลบ \"$name\" หรือไม่ การกระทำนี้ย้อนกลับไม่ได้';
  }

  @override
  String get deleteSuccess => 'ลบสำเร็จ';

  @override
  String deleteFailed(Object e) {
    return 'ลบไม่สำเร็จ: $e';
  }

  @override
  String get parentDirectory => 'โฟลเดอร์แม่';

  @override
  String get listView => 'มุมมองรายการ';

  @override
  String get gridView => 'มุมมองตาราง';

  @override
  String get folderEmpty => 'โฟลเดอร์ว่าง';

  @override
  String openFile(Object name) {
    return 'เปิดไฟล์: $name';
  }

  @override
  String get folder => 'โฟลเดอร์';

  @override
  String get file => 'ไฟล์';

  @override
  String get download => 'ดาวน์โหลด';

  @override
  String get downloadNotImplemented => 'ยังไม่รองรับการดาวน์โหลด';

  @override
  String get downloadSuccess => 'ดาวน์โหลดสำเร็จ';

  @override
  String get downloadCancelled => 'ยกเลิกการดาวน์โหลด';

  @override
  String get downloadPreparing => 'กำลังเตรียมดาวน์โหลด...';

  @override
  String get downloadAndPlay => 'ดาวน์โหลดและเล่น';

  @override
  String get downloadingForPlayback => 'กำลังดาวน์โหลดเพื่อเล่น...';

  @override
  String get fullscreen => 'เต็มหน้าจอ';

  @override
  String get installSuccess => 'ติดตั้งสำเร็จ';

  @override
  String installSuccessWithApp(Object title) {
    return 'ติดตั้ง $title สำเร็จ';
  }

  @override
  String installFailed(Object e) {
    return 'ติดตั้งไม่สำเร็จ: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'รับการกำหนดค่าแอปไม่สำเร็จ: $e';
  }

  @override
  String customInstall(Object title) {
    return 'ติดตั้งแบบกำหนดเอง: $title';
  }

  @override
  String get editComposeHint => 'แก้ไข docker-compose แล้วแตะติดตั้ง';

  @override
  String get install => 'ติดตั้ง';

  @override
  String get appStore => 'ร้านแอป';

  @override
  String get searchApps => 'ค้นหาแอป';

  @override
  String get category => 'หมวดหมู่';

  @override
  String get allCategories => 'ทุกหมวดหมู่';

  @override
  String get noAppsFound => 'ไม่พบแอปที่ตรงกัน';

  @override
  String get installed => 'ติดตั้งแล้ว';

  @override
  String get custom => 'กำหนดเอง';

  @override
  String get appDetail => 'รายละเอียดแอป';

  @override
  String get appNotFound => 'ไม่พบแอป';

  @override
  String versionLabel(Object version) {
    return 'เวอร์ชัน: $version';
  }

  @override
  String get description => 'คำอธิบาย';

  @override
  String get status => 'สถานะ';

  @override
  String get notRunning => 'ไม่ทำงาน';

  @override
  String get installStartNotImplemented =>
      'ติดตั้ง/เริ่มยังไม่รองรับ (ต้องการ /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'ถอนการติดตั้งยังไม่รองรับ (ต้องการ /v2/app_management/compose)';

  @override
  String get installStart => 'ติดตั้ง / เริ่ม';

  @override
  String get legacyApps => 'แอปรุ่นเก่า (จะสร้างใหม่)';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get cpuUsage => 'การใช้ CPU';

  @override
  String cores(Object count) {
    return 'คอร์: $count';
  }

  @override
  String get memory => 'หน่วยความจำ (RAM)';

  @override
  String memoryUsage(Object percent) {
    return 'ใช้ $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'ใช้แล้ว $used / ทั้งหมด $total';
  }

  @override
  String get storage => 'ที่เก็บข้อมูล';

  @override
  String totalLabel(Object storage) {
    return 'ทั้งหมด $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'ใช้แล้ว $used · $percent%';
  }

  @override
  String get disk => 'ดิสก์';

  @override
  String get networkStatus => 'เครือข่าย';

  @override
  String get addServer => 'เพิ่มเซิร์ฟเวอร์';

  @override
  String get editServer => 'แก้ไขเซิร์ฟเวอร์';

  @override
  String get nasType => 'ประเภท NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'ชื่อเซิร์ฟเวอร์';

  @override
  String get serverNameRequired => 'กรุณากรอกชื่อเซิร์ฟเวอร์';

  @override
  String get hostAddress => 'ที่อยู่โฮสต์';

  @override
  String get hostAddressHint => '192.168.1.100 หรือ casaos.local';

  @override
  String get hostAddressRequired => 'กรุณากรอกที่อยู่โฮสต์';

  @override
  String get port => 'พอร์ต';

  @override
  String get portRequired => 'กรุณากรอกพอร์ต';

  @override
  String get portInvalid => 'พอร์ตไม่ถูกต้อง (1-65535)';

  @override
  String get useHttps => 'ใช้ HTTPS';

  @override
  String get save => 'บันทึก';

  @override
  String get noServerConfigured => 'ยังไม่ได้กำหนดค่าเซิร์ฟเวอร์';

  @override
  String get activate => 'เปิดใช้งาน';

  @override
  String get edit => 'แก้ไข';

  @override
  String get confirmDelete => 'ยืนยันการลบ';

  @override
  String confirmDeleteServer(Object name) {
    return 'ลบเซิร์ฟเวอร์ \"$name\" หรือไม่?';
  }

  @override
  String get welcomeToCasaOS => 'ยินดีต้อนรับสู่ CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'มาสร้างบัญชีเริ่มต้นของคุณก่อน';

  @override
  String get createAccount => 'สร้างบัญชี';

  @override
  String get start => 'เริ่ม →';

  @override
  String get confirmPassword => 'ยืนยันรหัสผ่าน';

  @override
  String get confirmPasswordRequired => 'กรุณากรอกรหัสผ่านอีกครั้ง';

  @override
  String get passwordMismatch => 'รหัสผ่านไม่ตรงกัน';

  @override
  String get allDone => 'เสร็จสมบูรณ์!';

  @override
  String get accountCreatedHint =>
      'สร้างบัญชีแล้ว เข้าสู่เดสก์ท็อปเพื่อใช้ CasaOS / ZimaOS';

  @override
  String get enterDesktop => 'เข้าสู่เดสก์ท็อป';

  @override
  String get cannotGetInitKey => 'ไม่สามารถรับคีย์ init ได้ ตรวจสอบเซิร์ฟเวอร์';

  @override
  String initFailed(Object e) {
    return 'เริ่มต้นไม่สำเร็จ: $e';
  }

  @override
  String get openAppWith => 'เปิดแอปด้วย';

  @override
  String get builtinBrowser => 'เบราว์เซอร์ในตัว';

  @override
  String get systemBrowser => 'เบราว์เซอร์ระบบ';

  @override
  String get openInSystemBrowser => 'เปิดในเบราว์เซอร์ระบบ';

  @override
  String get loading => 'กำลังโหลด...';
}
