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
  String get about => '정보';

  @override
  String get appearance => '모양';

  @override
  String get openSource => '오픈 소스';

  @override
  String get tapToOpen => '탭하여 브라우저에서 열기';

  @override
  String get themeMode => '테마 모드';

  @override
  String get followSystem => '시스템 설정 따름';

  @override
  String get lightMode => '라이트';

  @override
  String get darkMode => '다크';

  @override
  String get themeColor => '테마 색';

  @override
  String get themeColorDescription => '테마 색을 선택합니다. 라이트·다크 모드 모두에 적용됩니다.';

  @override
  String get language => '언어';

  @override
  String get languageFollowSystem => '시스템 설정 따름';

  @override
  String get files => '파일';

  @override
  String get serverConfig => '서버';

  @override
  String get refresh => '새로고침';

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
  String get noApps => '앱 없음';

  @override
  String get cancel => '취소';

  @override
  String get ok => '확인';

  @override
  String get retry => '다시 시도';

  @override
  String get back => '뒤로';

  @override
  String get delete => '삭제';

  @override
  String get cannotGetAppAddress => '앱 주소를 가져올 수 없습니다';

  @override
  String cannotOpen(Object url) {
    return '열 수 없음: $url';
  }

  @override
  String openFailed(Object e) {
    return '열기 실패: $e';
  }

  @override
  String get appTypeNotSupported => '이 앱 유형은 이 작업을 지원하지 않습니다';

  @override
  String get starting => '시작 중';

  @override
  String get restarting => '다시 시작 중';

  @override
  String get restart => '다시 시작';

  @override
  String get closed => '종료됨';

  @override
  String operationFailed(Object e) {
    return '작업 실패: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - 도움말';
  }

  @override
  String get noDescription => '설명이 없습니다. 설정에서 구성을 수정하세요.';

  @override
  String get checkUpdateNotSupported => '이 앱은 업데이트 확인을 지원하지 않습니다';

  @override
  String updateFailed(Object e) {
    return '업데이트 실패: $e';
  }

  @override
  String get confirmUninstall => '제거 확인';

  @override
  String uninstallConfirmMessage(Object name) {
    return '「$name」을(를) 제거할까요? 제거 후 데이터는 복구할 수 없습니다.';
  }

  @override
  String get uninstall => '제거';

  @override
  String get cannotUninstall => '제거할 수 없습니다';

  @override
  String get uninstalled => '제거됨';

  @override
  String uninstallFailed(Object e) {
    return '제거 실패: $e';
  }

  @override
  String get cannotRestart => '다시 시작할 수 없습니다';

  @override
  String get cannotClose => '닫을 수 없습니다';

  @override
  String get running => '실행 중';

  @override
  String get open => '열기';

  @override
  String get launchAndOpen => '실행 후 열기';

  @override
  String get tips => '도움말';

  @override
  String get checkAndUpdate => '확인 및 업데이트';

  @override
  String get close => '닫기';

  @override
  String get configureServerFirst => '먼저 서버를 설정하고 활성화하세요';

  @override
  String get loginFailed => '로그인 실패';

  @override
  String get configureServer => '서버 설정';

  @override
  String get username => '사용자 이름';

  @override
  String get password => '비밀번호';

  @override
  String get usernameRequired => '사용자 이름을 입력하세요';

  @override
  String get passwordRequired => '비밀번호를 입력하세요';

  @override
  String get passwordMinLength => '비밀번호는 5자 이상이어야 합니다';

  @override
  String get rememberCredentials => '로그인 정보 저장';

  @override
  String get newFolder => '새 폴더';

  @override
  String get newFile => '새 파일';

  @override
  String get folderName => '폴더 이름';

  @override
  String get fileName => '파일 이름';

  @override
  String get create => '만들기';

  @override
  String get folderCreated => '폴더를 만들었습니다';

  @override
  String get fileCreated => '파일을 만들었습니다';

  @override
  String createFailed(Object e) {
    return '만들기 실패: $e';
  }

  @override
  String get rename => '이름 바꾸기';

  @override
  String get renameFolder => '폴더 이름 바꾸기';

  @override
  String get renameFile => '파일 이름 바꾸기';

  @override
  String get newName => '새 이름';

  @override
  String get renameSuccess => '이름을 바꿨습니다';

  @override
  String renameFailed(Object e) {
    return '이름 바꾸기 실패: $e';
  }

  @override
  String get deleteFolder => '폴더 삭제';

  @override
  String get deleteFile => '파일 삭제';

  @override
  String deleteConfirm(Object name) {
    return '「$name」을(를) 삭제할까요? 이 작업은 취소할 수 없습니다.';
  }

  @override
  String get deleteSuccess => '삭제했습니다';

  @override
  String deleteFailed(Object e) {
    return '삭제 실패: $e';
  }

  @override
  String get parentDirectory => '상위 폴더';

  @override
  String get listView => '목록 보기';

  @override
  String get gridView => '격자 보기';

  @override
  String get folderEmpty => '폴더가 비어 있습니다';

  @override
  String openFile(Object name) {
    return '파일 열기: $name';
  }

  @override
  String get folder => '폴더';

  @override
  String get file => '파일';

  @override
  String get download => '다운로드';

  @override
  String get downloadNotImplemented => '다운로드가 구현되지 않았습니다';

  @override
  String get downloadSuccess => '다운로드했습니다';

  @override
  String get downloadCancelled => '다운로드가 취소되었습니다';

  @override
  String get downloadPreparing => '다운로드 준비 중…';

  @override
  String get downloadAndPlay => '다운로드 후 재생';

  @override
  String get downloadingForPlayback => '재생용 다운로드 중…';

  @override
  String get fullscreen => '전체 화면';

  @override
  String get installSuccess => '설치했습니다';

  @override
  String installSuccessWithApp(Object title) {
    return '「$title」 설치 완료';
  }

  @override
  String installFailed(Object e) {
    return '설치 실패: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return '앱 구성을 가져오지 못했습니다: $e';
  }

  @override
  String customInstall(Object title) {
    return '사용자 지정 설치: $title';
  }

  @override
  String get editComposeHint => 'docker-compose를 편집한 뒤 설치를 누르세요';

  @override
  String get install => '설치';

  @override
  String get appStore => 'App Store';

  @override
  String get searchApps => '앱 검색';

  @override
  String get category => '카테고리';

  @override
  String get allCategories => '모든 카테고리';

  @override
  String get noAppsFound => '일치하는 앱이 없습니다';

  @override
  String get installed => '설치됨';

  @override
  String get custom => '사용자 지정';

  @override
  String get appDetail => '앱 정보';

  @override
  String get appNotFound => '앱을 찾을 수 없습니다';

  @override
  String versionLabel(Object version) {
    return '버전: $version';
  }

  @override
  String get description => '설명';

  @override
  String get status => '상태';

  @override
  String get notRunning => '실행 안 함';

  @override
  String get installStartNotImplemented =>
      '설치/시작이 구현되지 않았습니다(/v2/app_management/compose 필요)';

  @override
  String get uninstallNotImplemented =>
      '제거가 구현되지 않았습니다(/v2/app_management/compose 필요)';

  @override
  String get installStart => '설치 / 시작';

  @override
  String get legacyApps => '레거시 앱(재구축 예정)';

  @override
  String get version => '버전';

  @override
  String get cpuUsage => 'CPU 사용률';

  @override
  String cores(Object count) {
    return '코어: $count개';
  }

  @override
  String get memory => '메모리(RAM)';

  @override
  String memoryUsage(Object percent) {
    return '사용률 $percent%';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return '사용 $used / 전체 $total';
  }

  @override
  String get storage => '저장소';

  @override
  String totalLabel(Object storage) {
    return '전체 $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return '사용 $used · $percent%';
  }

  @override
  String get disk => '디스크';

  @override
  String get networkStatus => '네트워크';

  @override
  String get addServer => '서버 추가';

  @override
  String get editServer => '서버 편집';

  @override
  String get nasType => 'NAS 유형';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => '서버 이름';

  @override
  String get serverNameRequired => '서버 이름을 입력하세요';

  @override
  String get hostAddress => '호스트 주소';

  @override
  String get hostAddressHint => '192.168.1.100 또는 casaos.local';

  @override
  String get hostAddressRequired => '호스트 주소를 입력하세요';

  @override
  String get port => '포트';

  @override
  String get portRequired => '포트를 입력하세요';

  @override
  String get portInvalid => '유효한 포트(1–65535)를 입력하세요';

  @override
  String get useHttps => 'HTTPS 사용';

  @override
  String get save => '저장';

  @override
  String get noServerConfigured => '구성된 서버가 없습니다';

  @override
  String get activate => '활성화';

  @override
  String get edit => '편집';

  @override
  String get confirmDelete => '삭제 확인';

  @override
  String confirmDeleteServer(Object name) {
    return '서버 「$name」을(를) 삭제할까요?';
  }

  @override
  String get welcomeToCasaOS => 'CasaOS / ZimaOS에 오신 것을 환영합니다';

  @override
  String get createAccountHint => '먼저 초기 계정을 만듭니다.';

  @override
  String get createAccount => '계정 만들기';

  @override
  String get start => '시작 →';

  @override
  String get confirmPassword => '비밀번호 확인';

  @override
  String get confirmPasswordRequired => '비밀번호를 다시 입력하세요';

  @override
  String get passwordMismatch => '비밀번호가 일치하지 않습니다';

  @override
  String get allDone => '완료!';

  @override
  String get accountCreatedHint =>
      '계정이 만들어졌습니다. 데스크톱에서 CasaOS / ZimaOS를 사용해 보세요.';

  @override
  String get enterDesktop => '데스크톱으로';

  @override
  String get cannotGetInitKey => '초기화 키를 가져올 수 없습니다. 서버 상태를 확인하세요.';

  @override
  String initFailed(Object e) {
    return '초기화 실패: $e';
  }

  @override
  String get openAppWith => '앱 열기';

  @override
  String get builtinBrowser => '내장 브라우저';

  @override
  String get systemBrowser => '시스템 브라우저';

  @override
  String get openInSystemBrowser => '시스템 브라우저에서 열기';

  @override
  String get loading => '불러오는 중…';
}
