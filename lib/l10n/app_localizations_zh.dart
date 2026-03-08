// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS 客户端';

  @override
  String get settings => '设置';

  @override
  String get appearance => '外观';

  @override
  String get themeMode => '主题模式';

  @override
  String get followSystem => '跟随系统';

  @override
  String get lightMode => '浅色模式';

  @override
  String get darkMode => '深色模式';

  @override
  String get themeColor => '主题颜色';

  @override
  String get themeColorDescription => '选择一个主题颜色，会同时应用到浅色和深色模式。';

  @override
  String get language => '语言';

  @override
  String get languageFollowSystem => '跟随系统';

  @override
  String get files => '文件管理';

  @override
  String get serverConfig => '服务器配置';

  @override
  String get refresh => '刷新';

  @override
  String get user => '用户';

  @override
  String get login => '登录';

  @override
  String get home => '首页';

  @override
  String get welcome => '欢迎';

  @override
  String get logout => '退出登录';

  @override
  String get systemStatus => '系统状态';

  @override
  String get error => '错误';

  @override
  String get apps => '应用';

  @override
  String appCount(Object count) {
    return '共 $count 个';
  }

  @override
  String get noApps => '暂无应用';

  @override
  String get cancel => '取消';

  @override
  String get ok => '确定';

  @override
  String get retry => '重试';

  @override
  String get back => '返回';

  @override
  String get delete => '删除';

  @override
  String get cannotGetAppAddress => '无法获取应用地址';

  @override
  String cannotOpen(Object url) {
    return '无法打开: $url';
  }

  @override
  String openFailed(Object e) {
    return '打开失败: $e';
  }

  @override
  String get appTypeNotSupported => '当前应用类型不支持此操作';

  @override
  String get starting => '正在启动';

  @override
  String get restarting => '正在重启';

  @override
  String get restart => '重启';

  @override
  String get closed => '已关闭';

  @override
  String operationFailed(Object e) {
    return '操作失败: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - 提示';
  }

  @override
  String get noDescription => '暂无说明。如需修改配置请前往设置。';

  @override
  String get checkUpdateNotSupported => '当前应用不支持检查更新';

  @override
  String updateFailed(Object e) {
    return '更新失败: $e';
  }

  @override
  String get confirmUninstall => '确认卸载';

  @override
  String uninstallConfirmMessage(Object name) {
    return '确定要卸载「$name」吗？\n卸载后数据无法恢复。';
  }

  @override
  String get uninstall => '卸载';

  @override
  String get cannotUninstall => '无法卸载';

  @override
  String get uninstalled => '已卸载';

  @override
  String uninstallFailed(Object e) {
    return '卸载失败: $e';
  }

  @override
  String get cannotRestart => '无法重启';

  @override
  String get cannotClose => '无法关闭';

  @override
  String get running => '运行中';

  @override
  String get open => '打开';

  @override
  String get launchAndOpen => '启动并打开';

  @override
  String get tips => '提示';

  @override
  String get checkAndUpdate => '检查并更新';

  @override
  String get close => '关闭';

  @override
  String get configureServerFirst => '请先配置并激活一个服务器';

  @override
  String get loginFailed => '登录失败';

  @override
  String get configureServer => '配置服务器';

  @override
  String get username => '用户名';

  @override
  String get password => '密码';

  @override
  String get usernameRequired => '请输入用户名';

  @override
  String get passwordRequired => '请输入密码';

  @override
  String get passwordMinLength => '密码至少需要5个字符';

  @override
  String get rememberCredentials => '记住账号密码';

  @override
  String get newFolder => '新建文件夹';

  @override
  String get newFile => '新建文件';

  @override
  String get folderName => '文件夹名称';

  @override
  String get fileName => '文件名称';

  @override
  String get create => '创建';

  @override
  String get folderCreated => '文件夹创建成功';

  @override
  String get fileCreated => '文件创建成功';

  @override
  String createFailed(Object e) {
    return '创建失败: $e';
  }

  @override
  String get rename => '重命名';

  @override
  String get renameFolder => '重命名文件夹';

  @override
  String get renameFile => '重命名文件';

  @override
  String get newName => '新名称';

  @override
  String get renameSuccess => '重命名成功';

  @override
  String renameFailed(Object e) {
    return '重命名失败: $e';
  }

  @override
  String get deleteFolder => '删除文件夹';

  @override
  String get deleteFile => '删除文件';

  @override
  String deleteConfirm(Object name) {
    return '确定要删除 \"$name\" 吗？此操作不可撤销。';
  }

  @override
  String get deleteSuccess => '删除成功';

  @override
  String deleteFailed(Object e) {
    return '删除失败: $e';
  }

  @override
  String get parentDirectory => '上级目录';

  @override
  String get listView => '列表视图';

  @override
  String get gridView => '网格视图';

  @override
  String get folderEmpty => '文件夹为空';

  @override
  String openFile(Object name) {
    return '打开文件: $name';
  }

  @override
  String get folder => '文件夹';

  @override
  String get file => '文件';

  @override
  String get download => '下载';

  @override
  String get downloadNotImplemented => '下载功能待实现';

  @override
  String get downloadSuccess => '下载成功';

  @override
  String get downloadCancelled => '已取消下载';

  @override
  String get downloadPreparing => '正在准备下载...';

  @override
  String get downloadAndPlay => '下载后播放';

  @override
  String get downloadingForPlayback => '正在下载以便播放...';

  @override
  String get fullscreen => '全屏';

  @override
  String get installSuccess => '安装成功';

  @override
  String installSuccessWithApp(Object title) {
    return '$title 安装成功';
  }

  @override
  String installFailed(Object e) {
    return '安装失败: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return '获取应用配置失败: $e';
  }

  @override
  String customInstall(Object title) {
    return '自定义安装: $title';
  }

  @override
  String get editComposeHint => '编辑 docker-compose 配置后点击安装';

  @override
  String get install => '安装';

  @override
  String get appStore => '应用市场';

  @override
  String get searchApps => '搜索应用';

  @override
  String get category => '分类';

  @override
  String get allCategories => '全部分类';

  @override
  String get noAppsFound => '未找到匹配的应用';

  @override
  String get installed => '已安装';

  @override
  String get custom => '自定义';

  @override
  String get appDetail => '应用详情';

  @override
  String get appNotFound => '未找到应用信息';

  @override
  String versionLabel(Object version) {
    return '版本：$version';
  }

  @override
  String get description => '简介';

  @override
  String get status => '状态';

  @override
  String get notRunning => '未运行';

  @override
  String get installStartNotImplemented =>
      '安装/启动功能待实现（需要对接 /v2/app_management/compose）';

  @override
  String get uninstallNotImplemented =>
      '卸载功能待实现（需要对接 /v2/app_management/compose）';

  @override
  String get installStart => '安装 / 启动';

  @override
  String get legacyApps => '旧应用程序 (待重建)';

  @override
  String get version => '版本';

  @override
  String get cpuUsage => 'CPU 占用率';

  @override
  String cores(Object count) {
    return '核心数: $count';
  }

  @override
  String get memory => '内存 (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% 占用率';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return '已用 $used / 总量 $total';
  }

  @override
  String get storage => '存储空间';

  @override
  String totalLabel(Object storage) {
    return '总计 $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return '已用 $used · $percent%';
  }

  @override
  String get disk => '磁盘';

  @override
  String get networkStatus => '网络状态';

  @override
  String get addServer => '添加服务器';

  @override
  String get editServer => '编辑服务器';

  @override
  String get nasType => 'NAS 类型';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => '服务器名称';

  @override
  String get serverNameRequired => '请输入服务器名称';

  @override
  String get hostAddress => '主机地址';

  @override
  String get hostAddressHint => '192.168.1.100 或 casaos.local';

  @override
  String get hostAddressRequired => '请输入主机地址';

  @override
  String get port => '端口';

  @override
  String get portRequired => '请输入端口';

  @override
  String get portInvalid => '请输入有效的端口号 (1-65535)';

  @override
  String get useHttps => '使用 HTTPS';

  @override
  String get save => '保存';

  @override
  String get noServerConfigured => '还没有配置服务器';

  @override
  String get activate => '激活';

  @override
  String get edit => '编辑';

  @override
  String get confirmDelete => '确认删除';

  @override
  String confirmDeleteServer(Object name) {
    return '确定要删除服务器 \"$name\" 吗？';
  }

  @override
  String get welcomeToCasaOS => '欢迎使用 CasaOS / ZimaOS';

  @override
  String get createAccountHint => '让我们先创建你的初始账户。';

  @override
  String get createAccount => '创建账户';

  @override
  String get start => '开始 →';

  @override
  String get confirmPassword => '确认密码';

  @override
  String get confirmPasswordRequired => '请再次输入密码';

  @override
  String get passwordMismatch => '两次输入的密码不一致';

  @override
  String get allDone => '全部搞定！';

  @override
  String get accountCreatedHint => '你的账户已经创建完成，马上进入桌面体验 CasaOS / ZimaOS。';

  @override
  String get enterDesktop => '进入桌面';

  @override
  String get cannotGetInitKey => '无法获取初始化密钥，请检查服务器状态';

  @override
  String initFailed(Object e) {
    return '初始化失败：$e';
  }
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS 客戶端';

  @override
  String get settings => '設定';

  @override
  String get appearance => '外觀';

  @override
  String get themeMode => '主題模式';

  @override
  String get followSystem => '跟隨系統';

  @override
  String get lightMode => '淺色模式';

  @override
  String get darkMode => '深色模式';

  @override
  String get themeColor => '主題顏色';

  @override
  String get themeColorDescription => '選擇一個主題顏色，會同時套用到淺色和深色模式。';

  @override
  String get language => '語言';

  @override
  String get languageFollowSystem => '跟隨系統';

  @override
  String get files => '檔案管理';

  @override
  String get serverConfig => '伺服器設定';

  @override
  String get refresh => '重新整理';

  @override
  String get user => '使用者';

  @override
  String get login => '登入';

  @override
  String get home => '首頁';

  @override
  String get welcome => '歡迎';

  @override
  String get logout => '登出';

  @override
  String get systemStatus => '系統狀態';

  @override
  String get error => '錯誤';

  @override
  String get apps => '應用';

  @override
  String appCount(Object count) {
    return '共 $count 個';
  }

  @override
  String get noApps => '暫無應用';

  @override
  String get cancel => '取消';

  @override
  String get ok => '確定';

  @override
  String get retry => '重試';

  @override
  String get back => '返回';

  @override
  String get delete => '刪除';

  @override
  String get cannotGetAppAddress => '無法取得應用程式位址';

  @override
  String cannotOpen(Object url) {
    return '無法開啟: $url';
  }

  @override
  String openFailed(Object e) {
    return '開啟失敗: $e';
  }

  @override
  String get appTypeNotSupported => '目前應用程式類型不支援此操作';

  @override
  String get starting => '正在啟動';

  @override
  String get restarting => '正在重新啟動';

  @override
  String get restart => '重新啟動';

  @override
  String get closed => '已關閉';

  @override
  String operationFailed(Object e) {
    return '操作失敗: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - 提示';
  }

  @override
  String get noDescription => '暫無說明。如需修改設定請前往設定。';

  @override
  String get checkUpdateNotSupported => '目前應用程式不支援檢查更新';

  @override
  String updateFailed(Object e) {
    return '更新失敗: $e';
  }

  @override
  String get confirmUninstall => '確認解除安裝';

  @override
  String uninstallConfirmMessage(Object name) {
    return '確定要解除安裝「$name」嗎？\n解除安裝後資料無法復原。';
  }

  @override
  String get uninstall => '解除安裝';

  @override
  String get cannotUninstall => '無法解除安裝';

  @override
  String get uninstalled => '已解除安裝';

  @override
  String uninstallFailed(Object e) {
    return '解除安裝失敗: $e';
  }

  @override
  String get cannotRestart => '無法重新啟動';

  @override
  String get cannotClose => '無法關閉';

  @override
  String get running => '執行中';

  @override
  String get open => '開啟';

  @override
  String get launchAndOpen => '啟動並開啟';

  @override
  String get tips => '提示';

  @override
  String get checkAndUpdate => '檢查並更新';

  @override
  String get close => '關閉';

  @override
  String get configureServerFirst => '請先設定並啟用伺服器';

  @override
  String get loginFailed => '登入失敗';

  @override
  String get configureServer => '設定伺服器';

  @override
  String get username => '使用者名稱';

  @override
  String get password => '密碼';

  @override
  String get usernameRequired => '請輸入使用者名稱';

  @override
  String get passwordRequired => '請輸入密碼';

  @override
  String get passwordMinLength => '密碼至少需要5個字元';

  @override
  String get rememberCredentials => '記住帳號密碼';

  @override
  String get newFolder => '新增資料夾';

  @override
  String get newFile => '新增檔案';

  @override
  String get folderName => '資料夾名稱';

  @override
  String get fileName => '檔案名稱';

  @override
  String get create => '建立';

  @override
  String get folderCreated => '資料夾建立成功';

  @override
  String get fileCreated => '檔案建立成功';

  @override
  String createFailed(Object e) {
    return '建立失敗: $e';
  }

  @override
  String get rename => '重新命名';

  @override
  String get renameFolder => '重新命名資料夾';

  @override
  String get renameFile => '重新命名檔案';

  @override
  String get newName => '新名稱';

  @override
  String get renameSuccess => '重新命名成功';

  @override
  String renameFailed(Object e) {
    return '重新命名失敗: $e';
  }

  @override
  String get deleteFolder => '刪除資料夾';

  @override
  String get deleteFile => '刪除檔案';

  @override
  String deleteConfirm(Object name) {
    return '確定要刪除 \"$name\" 嗎？此操作無法復原。';
  }

  @override
  String get deleteSuccess => '刪除成功';

  @override
  String deleteFailed(Object e) {
    return '刪除失敗: $e';
  }

  @override
  String get parentDirectory => '上層目錄';

  @override
  String get listView => '清單檢視';

  @override
  String get gridView => '網格檢視';

  @override
  String get folderEmpty => '資料夾為空';

  @override
  String openFile(Object name) {
    return '開啟檔案: $name';
  }

  @override
  String get folder => '資料夾';

  @override
  String get file => '檔案';

  @override
  String get download => '下載';

  @override
  String get downloadNotImplemented => '下載功能待實作';

  @override
  String get downloadSuccess => '下載成功';

  @override
  String get downloadCancelled => '已取消下載';

  @override
  String get downloadPreparing => '正在準備下載...';

  @override
  String get downloadAndPlay => '下載後播放';

  @override
  String get downloadingForPlayback => '正在下載以便播放...';

  @override
  String get fullscreen => '全螢幕';

  @override
  String get installSuccess => '安裝成功';

  @override
  String installSuccessWithApp(Object title) {
    return '$title 安裝成功';
  }

  @override
  String installFailed(Object e) {
    return '安裝失敗: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return '取得應用程式設定失敗: $e';
  }

  @override
  String customInstall(Object title) {
    return '自訂安裝: $title';
  }

  @override
  String get editComposeHint => '編輯 docker-compose 設定後點擊安裝';

  @override
  String get install => '安裝';

  @override
  String get appStore => '應用程式市集';

  @override
  String get searchApps => '搜尋應用程式';

  @override
  String get category => '分類';

  @override
  String get allCategories => '全部分類';

  @override
  String get noAppsFound => '未找到符合的應用程式';

  @override
  String get installed => '已安裝';

  @override
  String get custom => '自訂';

  @override
  String get appDetail => '應用程式詳情';

  @override
  String get appNotFound => '未找到應用程式資訊';

  @override
  String versionLabel(Object version) {
    return '版本：$version';
  }

  @override
  String get description => '簡介';

  @override
  String get status => '狀態';

  @override
  String get notRunning => '未執行';

  @override
  String get installStartNotImplemented =>
      '安裝/啟動功能待實作（需要對接 /v2/app_management/compose）';

  @override
  String get uninstallNotImplemented =>
      '解除安裝功能待實作（需要對接 /v2/app_management/compose）';

  @override
  String get installStart => '安裝 / 啟動';

  @override
  String get legacyApps => '舊版應用程式（待重建）';

  @override
  String get version => '版本';

  @override
  String get cpuUsage => 'CPU 使用率';

  @override
  String cores(Object count) {
    return '核心數: $count';
  }

  @override
  String get memory => '記憶體 (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% 使用率';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return '已用 $used / 總量 $total';
  }

  @override
  String get storage => '儲存空間';

  @override
  String totalLabel(Object storage) {
    return '總計 $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return '已用 $used · $percent%';
  }

  @override
  String get disk => '磁碟';

  @override
  String get networkStatus => '網路狀態';

  @override
  String get addServer => '新增伺服器';

  @override
  String get editServer => '編輯伺服器';

  @override
  String get nasType => 'NAS 類型';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => '伺服器名稱';

  @override
  String get serverNameRequired => '請輸入伺服器名稱';

  @override
  String get hostAddress => '主機位址';

  @override
  String get hostAddressHint => '192.168.1.100 或 casaos.local';

  @override
  String get hostAddressRequired => '請輸入主機位址';

  @override
  String get port => '連接埠';

  @override
  String get portRequired => '請輸入連接埠';

  @override
  String get portInvalid => '請輸入有效的連接埠號 (1-65535)';

  @override
  String get useHttps => '使用 HTTPS';

  @override
  String get save => '儲存';

  @override
  String get noServerConfigured => '尚未設定伺服器';

  @override
  String get activate => '啟用';

  @override
  String get edit => '編輯';

  @override
  String get confirmDelete => '確認刪除';

  @override
  String confirmDeleteServer(Object name) {
    return '確定要刪除伺服器 \"$name\" 嗎？';
  }

  @override
  String get welcomeToCasaOS => '歡迎使用 CasaOS / ZimaOS';

  @override
  String get createAccountHint => '讓我們先建立您的初始帳戶。';

  @override
  String get createAccount => '建立帳戶';

  @override
  String get start => '開始 →';

  @override
  String get confirmPassword => '確認密碼';

  @override
  String get confirmPasswordRequired => '請再次輸入密碼';

  @override
  String get passwordMismatch => '兩次輸入的密碼不一致';

  @override
  String get allDone => '全部完成！';

  @override
  String get accountCreatedHint => '您的帳戶已建立完成，馬上進入桌面體驗 CasaOS / ZimaOS。';

  @override
  String get enterDesktop => '進入桌面';

  @override
  String get cannotGetInitKey => '無法取得初始化金鑰，請檢查伺服器狀態';

  @override
  String initFailed(Object e) {
    return '初始化失敗：$e';
  }
}
