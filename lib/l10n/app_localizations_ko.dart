// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'CasaOS / ZimaOS 클라이언트';

  @override
  String get settings => '설정';

  @override
  String get appearance => '모양';

  @override
  String get themeMode => '테마 모드';

  @override
  String get followSystem => '시스템 따르기';

  @override
  String get lightMode => '라이트 모드';

  @override
  String get darkMode => '다크 모드';

  @override
  String get themeColor => '테마 색상';

  @override
  String get themeColorDescription => '테마 색상을 선택하면 라이트 모드와 다크 모드 모두에 적용됩니다.';

  @override
  String get language => '언어';

  @override
  String get languageFollowSystem => '시스템 따르기';

  @override
  String get files => '파일 관리';

  @override
  String get serverConfig => '서버 설정';

  @override
  String get refresh => '새로 고침';

  @override
  String get user => '사용자';

  @override
  String get login => '로그인';

  @override
  String get home => '홈';

  @override
  String get welcome => '환영합니다';

  @override
  String get logout => '로그아웃';

  @override
  String get systemStatus => '시스템 상태';

  @override
  String get error => '오류';

  @override
  String get apps => '앱';

  @override
  String appCount(Object count) {
    return '총 $count개';
  }

  @override
  String get noApps => '앱이 없습니다';
}
