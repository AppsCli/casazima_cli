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
  String get about => 'アプリについて';

  @override
  String get appearance => '外観';

  @override
  String get openSource => 'オープンソース';

  @override
  String get tapToOpen => 'タップしてブラウザで開く';

  @override
  String get themeMode => 'テーマ';

  @override
  String get followSystem => 'システムに合わせる';

  @override
  String get lightMode => 'ライト';

  @override
  String get darkMode => 'ダーク';

  @override
  String get themeColor => 'テーマカラー';

  @override
  String get themeColorDescription => 'テーマの色を選びます。ライト／ダークの両方に適用されます。';

  @override
  String get language => '言語';

  @override
  String get languageFollowSystem => 'システムに合わせる';

  @override
  String get files => 'ファイル';

  @override
  String get serverConfig => 'サーバー';

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

  @override
  String get cancel => 'キャンセル';

  @override
  String get ok => 'OK';

  @override
  String get retry => '再試行';

  @override
  String get back => '戻る';

  @override
  String get delete => '削除';

  @override
  String get cannotGetAppAddress => 'アプリのアドレスを取得できません';

  @override
  String cannotOpen(Object url) {
    return '開けません: $url';
  }

  @override
  String openFailed(Object e) {
    return '開けませんでした: $e';
  }

  @override
  String get appTypeNotSupported => 'この種類のアプリはこの操作に対応していません';

  @override
  String get starting => '起動中';

  @override
  String get restarting => '再起動中';

  @override
  String get restart => '再起動';

  @override
  String get closed => '終了';

  @override
  String operationFailed(Object e) {
    return '操作に失敗しました: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name のヒント';
  }

  @override
  String get noDescription => '説明がありません。設定で構成を変更してください。';

  @override
  String get checkUpdateNotSupported => 'このアプリは更新確認に対応していません';

  @override
  String updateFailed(Object e) {
    return '更新に失敗しました: $e';
  }

  @override
  String get confirmUninstall => 'アンインストールの確認';

  @override
  String uninstallConfirmMessage(Object name) {
    return '「$name」をアンインストールしますか？削除後のデータは復元できません。';
  }

  @override
  String get uninstall => 'アンインストール';

  @override
  String get cannotUninstall => 'アンインストールできません';

  @override
  String get uninstalled => 'アンインストールしました';

  @override
  String uninstallFailed(Object e) {
    return 'アンインストールに失敗しました: $e';
  }

  @override
  String get cannotRestart => '再起動できません';

  @override
  String get cannotClose => '閉じられません';

  @override
  String get running => '実行中';

  @override
  String get open => '開く';

  @override
  String get launchAndOpen => '起動して開く';

  @override
  String get tips => 'ヒント';

  @override
  String get checkAndUpdate => '確認して更新';

  @override
  String get close => '閉じる';

  @override
  String get configureServerFirst => '先にサーバーを設定して有効にしてください';

  @override
  String get loginFailed => 'ログインに失敗しました';

  @override
  String get configureServer => 'サーバー設定';

  @override
  String get username => 'ユーザー名';

  @override
  String get password => 'パスワード';

  @override
  String get usernameRequired => 'ユーザー名を入力してください';

  @override
  String get passwordRequired => 'パスワードを入力してください';

  @override
  String get passwordMinLength => 'パスワードは5文字以上にしてください';

  @override
  String get rememberCredentials => 'ログイン情報を保存';

  @override
  String get newFolder => '新しいフォルダー';

  @override
  String get newFile => '新しいファイル';

  @override
  String get folderName => 'フォルダー名';

  @override
  String get fileName => 'ファイル名';

  @override
  String get create => '作成';

  @override
  String get folderCreated => 'フォルダーを作成しました';

  @override
  String get fileCreated => 'ファイルを作成しました';

  @override
  String createFailed(Object e) {
    return '作成に失敗しました: $e';
  }

  @override
  String get rename => '名前の変更';

  @override
  String get renameFolder => 'フォルダー名の変更';

  @override
  String get renameFile => 'ファイル名の変更';

  @override
  String get newName => '新しい名前';

  @override
  String get renameSuccess => '名前を変更しました';

  @override
  String renameFailed(Object e) {
    return '名前の変更に失敗しました: $e';
  }

  @override
  String get deleteFolder => 'フォルダーを削除';

  @override
  String get deleteFile => 'ファイルを削除';

  @override
  String deleteConfirm(Object name) {
    return '「$name」を削除しますか？この操作は取り消せません。';
  }

  @override
  String get deleteSuccess => '削除しました';

  @override
  String deleteFailed(Object e) {
    return '削除に失敗しました: $e';
  }

  @override
  String get parentDirectory => '親フォルダー';

  @override
  String get listView => 'リスト表示';

  @override
  String get gridView => 'グリッド表示';

  @override
  String get folderEmpty => 'フォルダーは空です';

  @override
  String openFile(Object name) {
    return 'ファイルを開く: $name';
  }

  @override
  String get folder => 'フォルダー';

  @override
  String get file => 'ファイル';

  @override
  String get download => 'ダウンロード';

  @override
  String get downloadNotImplemented => 'ダウンロードは未実装です';

  @override
  String get downloadSuccess => 'ダウンロードしました';

  @override
  String get downloadCancelled => 'ダウンロードをキャンセルしました';

  @override
  String get downloadPreparing => 'ダウンロードの準備中…';

  @override
  String get downloadAndPlay => 'ダウンロードして再生';

  @override
  String get downloadingForPlayback => '再生用にダウンロード中…';

  @override
  String get fullscreen => '全画面';

  @override
  String get installSuccess => 'インストールしました';

  @override
  String installSuccessWithApp(Object title) {
    return '「$title」をインストールしました';
  }

  @override
  String installFailed(Object e) {
    return 'インストールに失敗しました: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'アプリ設定の取得に失敗しました: $e';
  }

  @override
  String customInstall(Object title) {
    return 'カスタムインストール: $title';
  }

  @override
  String get editComposeHint => 'docker-compose を編集してインストールをタップ';

  @override
  String get install => 'インストール';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => 'アプリを検索';

  @override
  String get category => 'カテゴリー';

  @override
  String get allCategories => 'すべてのカテゴリー';

  @override
  String get noAppsFound => '該当するアプリがありません';

  @override
  String get installed => 'インストール済み';

  @override
  String get custom => 'カスタム';

  @override
  String get appDetail => 'アプリの詳細';

  @override
  String get appNotFound => 'アプリが見つかりません';

  @override
  String versionLabel(Object version) {
    return 'バージョン: $version';
  }

  @override
  String get description => '説明';

  @override
  String get status => '状態';

  @override
  String get notRunning => '停止中';

  @override
  String get installStartNotImplemented =>
      'インストール／起動は未実装です（/v2/app_management/compose が必要）';

  @override
  String get uninstallNotImplemented =>
      'アンインストールは未実装です（/v2/app_management/compose が必要）';

  @override
  String get installStart => 'インストール／起動';

  @override
  String get legacyApps => 'レガシーアプリ（再構築予定）';

  @override
  String get version => 'バージョン';

  @override
  String get cpuUsage => 'CPU 使用率';

  @override
  String cores(Object count) {
    return 'コア数: $count';
  }

  @override
  String get memory => 'メモリー（RAM）';

  @override
  String memoryUsage(Object percent) {
    return '使用率 $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return '使用 $used / 合計 $total';
  }

  @override
  String get storage => 'ストレージ';

  @override
  String totalLabel(Object storage) {
    return '合計 $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return '使用 $used · $percent%';
  }

  @override
  String get disk => 'ディスク';

  @override
  String get networkStatus => 'ネットワーク';

  @override
  String get addServer => 'サーバーを追加';

  @override
  String get editServer => 'サーバーを編集';

  @override
  String get nasType => 'NAS の種類';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'サーバー名';

  @override
  String get serverNameRequired => 'サーバー名を入力してください';

  @override
  String get hostAddress => 'ホストアドレス';

  @override
  String get hostAddressHint => '192.168.1.100 または casaos.local';

  @override
  String get hostAddressRequired => 'ホストアドレスを入力してください';

  @override
  String get port => 'ポート';

  @override
  String get portRequired => 'ポートを入力してください';

  @override
  String get portInvalid => '有効なポート（1〜65535）を入力してください';

  @override
  String get useHttps => 'HTTPS を使用';

  @override
  String get save => '保存';

  @override
  String get noServerConfigured => 'サーバーがまだ設定されていません';

  @override
  String get activate => '有効化';

  @override
  String get edit => '編集';

  @override
  String get confirmDelete => '削除の確認';

  @override
  String confirmDeleteServer(Object name) {
    return 'サーバー「$name」を削除しますか？';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS へようこそ';

  @override
  String get createAccountHint => 'まず初期アカウントを作成しましょう。';

  @override
  String get createAccount => 'アカウント作成';

  @override
  String get start => '開始 →';

  @override
  String get confirmPassword => 'パスワードの確認';

  @override
  String get confirmPasswordRequired => 'パスワードをもう一度入力してください';

  @override
  String get passwordMismatch => 'パスワードが一致しません';

  @override
  String get allDone => '完了しました！';

  @override
  String get accountCreatedHint =>
      'アカウントを作成しました。デスクトップで CasaOS / ZimaOS をお試しください。';

  @override
  String get enterDesktop => 'デスクトップへ';

  @override
  String get cannotGetInitKey => '初期化キーを取得できません。サーバーの状態を確認してください。';

  @override
  String initFailed(Object e) {
    return '初期化に失敗しました: $e';
  }

  @override
  String get openAppWith => 'アプリを開く方法';

  @override
  String get builtinBrowser => 'アプリ内ブラウザー';

  @override
  String get systemBrowser => 'システムブラウザー';

  @override
  String get openInSystemBrowser => 'システムブラウザーで開く';

  @override
  String get loading => '読み込み中…';
}
