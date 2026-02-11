// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS クライアント';

  @override
  String get settings => '設定';

  @override
  String get appearance => '外観';

  @override
  String get themeMode => 'テーマモード';

  @override
  String get followSystem => 'システムに従う';

  @override
  String get lightMode => 'ライトモード';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get themeColor => 'テーマカラー';

  @override
  String get themeColorDescription => 'テーマカラーを選択すると、ライトモードとダークモードの両方に適用されます。';

  @override
  String get language => '言語';

  @override
  String get languageFollowSystem => 'システムに従う';

  @override
  String get files => 'ファイル管理';

  @override
  String get serverConfig => 'サーバー設定';

  @override
  String get refresh => '更新';

  @override
  String get user => 'ユーザー';

  @override
  String get login => 'ログイン';

  @override
  String get home => 'ホーム';

  @override
  String get welcome => 'ようこそ';

  @override
  String get logout => 'ログアウト';

  @override
  String get systemStatus => 'システム状態';

  @override
  String get error => 'エラー';

  @override
  String get apps => 'アプリ';

  @override
  String appCount(Object count) {
    return '合計 $count 件';
  }

  @override
  String get noApps => 'アプリがありません';
}
