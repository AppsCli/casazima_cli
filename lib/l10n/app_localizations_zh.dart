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
}
