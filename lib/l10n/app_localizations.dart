import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('ru'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'CasaOS / ZimaOS'**
  String get appTitle;

  /// No description provided for @appTitleClient.
  ///
  /// In en, this message translates to:
  /// **'CasaOS / ZimaOS Client'**
  String get appTitleClient;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @openSource.
  ///
  /// In en, this message translates to:
  /// **'Open source'**
  String get openSource;

  /// No description provided for @tapToOpen.
  ///
  /// In en, this message translates to:
  /// **'Tap to open in browser'**
  String get tapToOpen;

  /// No description provided for @themeMode.
  ///
  /// In en, this message translates to:
  /// **'Theme mode'**
  String get themeMode;

  /// No description provided for @followSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow system'**
  String get followSystem;

  /// No description provided for @lightMode.
  ///
  /// In en, this message translates to:
  /// **'Light mode'**
  String get lightMode;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark mode'**
  String get darkMode;

  /// No description provided for @themeColor.
  ///
  /// In en, this message translates to:
  /// **'Theme color'**
  String get themeColor;

  /// No description provided for @themeColorDescription.
  ///
  /// In en, this message translates to:
  /// **'Select a theme color; it applies to both light and dark mode.'**
  String get themeColorDescription;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @languageFollowSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow system'**
  String get languageFollowSystem;

  /// No description provided for @files.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get files;

  /// No description provided for @serverConfig.
  ///
  /// In en, this message translates to:
  /// **'Server config'**
  String get serverConfig;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logout;

  /// No description provided for @systemStatus.
  ///
  /// In en, this message translates to:
  /// **'System status'**
  String get systemStatus;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @apps.
  ///
  /// In en, this message translates to:
  /// **'Apps'**
  String get apps;

  /// No description provided for @appCount.
  ///
  /// In en, this message translates to:
  /// **'{count} in total'**
  String appCount(Object count);

  /// No description provided for @noApps.
  ///
  /// In en, this message translates to:
  /// **'No apps'**
  String get noApps;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @cannotGetAppAddress.
  ///
  /// In en, this message translates to:
  /// **'Cannot get app address'**
  String get cannotGetAppAddress;

  /// No description provided for @cannotOpen.
  ///
  /// In en, this message translates to:
  /// **'Cannot open: {url}'**
  String cannotOpen(Object url);

  /// No description provided for @openFailed.
  ///
  /// In en, this message translates to:
  /// **'Open failed: {e}'**
  String openFailed(Object e);

  /// No description provided for @appTypeNotSupported.
  ///
  /// In en, this message translates to:
  /// **'This app type does not support this operation'**
  String get appTypeNotSupported;

  /// No description provided for @starting.
  ///
  /// In en, this message translates to:
  /// **'Starting'**
  String get starting;

  /// No description provided for @restarting.
  ///
  /// In en, this message translates to:
  /// **'Restarting'**
  String get restarting;

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restart;

  /// No description provided for @closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get closed;

  /// No description provided for @operationFailed.
  ///
  /// In en, this message translates to:
  /// **'Operation failed: {e}'**
  String operationFailed(Object e);

  /// No description provided for @tipsTitle.
  ///
  /// In en, this message translates to:
  /// **'{name} - Tips'**
  String tipsTitle(Object name);

  /// No description provided for @noDescription.
  ///
  /// In en, this message translates to:
  /// **'No description. Go to settings to modify configuration.'**
  String get noDescription;

  /// No description provided for @checkUpdateNotSupported.
  ///
  /// In en, this message translates to:
  /// **'This app does not support check for updates'**
  String get checkUpdateNotSupported;

  /// No description provided for @updateFailed.
  ///
  /// In en, this message translates to:
  /// **'Update failed: {e}'**
  String updateFailed(Object e);

  /// No description provided for @confirmUninstall.
  ///
  /// In en, this message translates to:
  /// **'Confirm uninstall'**
  String get confirmUninstall;

  /// No description provided for @uninstallConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to uninstall \"{name}\"? Data cannot be recovered after uninstall.'**
  String uninstallConfirmMessage(Object name);

  /// No description provided for @uninstall.
  ///
  /// In en, this message translates to:
  /// **'Uninstall'**
  String get uninstall;

  /// No description provided for @cannotUninstall.
  ///
  /// In en, this message translates to:
  /// **'Cannot uninstall'**
  String get cannotUninstall;

  /// No description provided for @uninstalled.
  ///
  /// In en, this message translates to:
  /// **'Uninstalled'**
  String get uninstalled;

  /// No description provided for @uninstallFailed.
  ///
  /// In en, this message translates to:
  /// **'Uninstall failed: {e}'**
  String uninstallFailed(Object e);

  /// No description provided for @cannotRestart.
  ///
  /// In en, this message translates to:
  /// **'Cannot restart'**
  String get cannotRestart;

  /// No description provided for @cannotClose.
  ///
  /// In en, this message translates to:
  /// **'Cannot close'**
  String get cannotClose;

  /// No description provided for @running.
  ///
  /// In en, this message translates to:
  /// **'Running'**
  String get running;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @launchAndOpen.
  ///
  /// In en, this message translates to:
  /// **'Launch and open'**
  String get launchAndOpen;

  /// No description provided for @tips.
  ///
  /// In en, this message translates to:
  /// **'Tips'**
  String get tips;

  /// No description provided for @checkAndUpdate.
  ///
  /// In en, this message translates to:
  /// **'Check and update'**
  String get checkAndUpdate;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @configureServerFirst.
  ///
  /// In en, this message translates to:
  /// **'Please configure and activate a server first'**
  String get configureServerFirst;

  /// No description provided for @loginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed'**
  String get loginFailed;

  /// No description provided for @configureServer.
  ///
  /// In en, this message translates to:
  /// **'Configure server'**
  String get configureServer;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @usernameRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter username'**
  String get usernameRequired;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter password'**
  String get passwordRequired;

  /// No description provided for @passwordMinLength.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 5 characters'**
  String get passwordMinLength;

  /// No description provided for @rememberCredentials.
  ///
  /// In en, this message translates to:
  /// **'Remember credentials'**
  String get rememberCredentials;

  /// No description provided for @newFolder.
  ///
  /// In en, this message translates to:
  /// **'New folder'**
  String get newFolder;

  /// No description provided for @newFile.
  ///
  /// In en, this message translates to:
  /// **'New file'**
  String get newFile;

  /// No description provided for @folderName.
  ///
  /// In en, this message translates to:
  /// **'Folder name'**
  String get folderName;

  /// No description provided for @fileName.
  ///
  /// In en, this message translates to:
  /// **'File name'**
  String get fileName;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @folderCreated.
  ///
  /// In en, this message translates to:
  /// **'Folder created successfully'**
  String get folderCreated;

  /// No description provided for @fileCreated.
  ///
  /// In en, this message translates to:
  /// **'File created successfully'**
  String get fileCreated;

  /// No description provided for @createFailed.
  ///
  /// In en, this message translates to:
  /// **'Create failed: {e}'**
  String createFailed(Object e);

  /// No description provided for @rename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get rename;

  /// No description provided for @renameFolder.
  ///
  /// In en, this message translates to:
  /// **'Rename folder'**
  String get renameFolder;

  /// No description provided for @renameFile.
  ///
  /// In en, this message translates to:
  /// **'Rename file'**
  String get renameFile;

  /// No description provided for @newName.
  ///
  /// In en, this message translates to:
  /// **'New name'**
  String get newName;

  /// No description provided for @renameSuccess.
  ///
  /// In en, this message translates to:
  /// **'Renamed successfully'**
  String get renameSuccess;

  /// No description provided for @renameFailed.
  ///
  /// In en, this message translates to:
  /// **'Rename failed: {e}'**
  String renameFailed(Object e);

  /// No description provided for @deleteFolder.
  ///
  /// In en, this message translates to:
  /// **'Delete folder'**
  String get deleteFolder;

  /// No description provided for @deleteFile.
  ///
  /// In en, this message translates to:
  /// **'Delete file'**
  String get deleteFile;

  /// No description provided for @deleteConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete \"{name}\"? This action cannot be undone.'**
  String deleteConfirm(Object name);

  /// No description provided for @deleteSuccess.
  ///
  /// In en, this message translates to:
  /// **'Deleted successfully'**
  String get deleteSuccess;

  /// No description provided for @deleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Delete failed: {e}'**
  String deleteFailed(Object e);

  /// No description provided for @parentDirectory.
  ///
  /// In en, this message translates to:
  /// **'Parent directory'**
  String get parentDirectory;

  /// No description provided for @listView.
  ///
  /// In en, this message translates to:
  /// **'List view'**
  String get listView;

  /// No description provided for @gridView.
  ///
  /// In en, this message translates to:
  /// **'Grid view'**
  String get gridView;

  /// No description provided for @folderEmpty.
  ///
  /// In en, this message translates to:
  /// **'Folder is empty'**
  String get folderEmpty;

  /// No description provided for @openFile.
  ///
  /// In en, this message translates to:
  /// **'Open file: {name}'**
  String openFile(Object name);

  /// No description provided for @folder.
  ///
  /// In en, this message translates to:
  /// **'Folder'**
  String get folder;

  /// No description provided for @file.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get file;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @downloadNotImplemented.
  ///
  /// In en, this message translates to:
  /// **'Download not implemented'**
  String get downloadNotImplemented;

  /// No description provided for @downloadSuccess.
  ///
  /// In en, this message translates to:
  /// **'Downloaded successfully'**
  String get downloadSuccess;

  /// No description provided for @downloadCancelled.
  ///
  /// In en, this message translates to:
  /// **'Download cancelled'**
  String get downloadCancelled;

  /// No description provided for @downloadPreparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing download...'**
  String get downloadPreparing;

  /// No description provided for @downloadAndPlay.
  ///
  /// In en, this message translates to:
  /// **'Download and play'**
  String get downloadAndPlay;

  /// No description provided for @downloadingForPlayback.
  ///
  /// In en, this message translates to:
  /// **'Downloading for playback...'**
  String get downloadingForPlayback;

  /// No description provided for @fullscreen.
  ///
  /// In en, this message translates to:
  /// **'Fullscreen'**
  String get fullscreen;

  /// No description provided for @installSuccess.
  ///
  /// In en, this message translates to:
  /// **'Installed successfully'**
  String get installSuccess;

  /// No description provided for @installSuccessWithApp.
  ///
  /// In en, this message translates to:
  /// **'{title} installed successfully'**
  String installSuccessWithApp(Object title);

  /// No description provided for @installFailed.
  ///
  /// In en, this message translates to:
  /// **'Install failed: {e}'**
  String installFailed(Object e);

  /// No description provided for @getAppConfigFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to get app config: {e}'**
  String getAppConfigFailed(Object e);

  /// No description provided for @customInstall.
  ///
  /// In en, this message translates to:
  /// **'Custom install: {title}'**
  String customInstall(Object title);

  /// No description provided for @editComposeHint.
  ///
  /// In en, this message translates to:
  /// **'Edit docker-compose config and click install'**
  String get editComposeHint;

  /// No description provided for @install.
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get install;

  /// No description provided for @appStore.
  ///
  /// In en, this message translates to:
  /// **'App Store'**
  String get appStore;

  /// No description provided for @searchApps.
  ///
  /// In en, this message translates to:
  /// **'Search apps'**
  String get searchApps;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @allCategories.
  ///
  /// In en, this message translates to:
  /// **'All categories'**
  String get allCategories;

  /// No description provided for @noAppsFound.
  ///
  /// In en, this message translates to:
  /// **'No matching apps found'**
  String get noAppsFound;

  /// No description provided for @installed.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get installed;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @appDetail.
  ///
  /// In en, this message translates to:
  /// **'App details'**
  String get appDetail;

  /// No description provided for @appNotFound.
  ///
  /// In en, this message translates to:
  /// **'App not found'**
  String get appNotFound;

  /// No description provided for @versionLabel.
  ///
  /// In en, this message translates to:
  /// **'Version: {version}'**
  String versionLabel(Object version);

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @notRunning.
  ///
  /// In en, this message translates to:
  /// **'Not running'**
  String get notRunning;

  /// No description provided for @installStartNotImplemented.
  ///
  /// In en, this message translates to:
  /// **'Install/start not implemented (needs /v2/app_management/compose)'**
  String get installStartNotImplemented;

  /// No description provided for @uninstallNotImplemented.
  ///
  /// In en, this message translates to:
  /// **'Uninstall not implemented (needs /v2/app_management/compose)'**
  String get uninstallNotImplemented;

  /// No description provided for @installStart.
  ///
  /// In en, this message translates to:
  /// **'Install / Start'**
  String get installStart;

  /// No description provided for @legacyApps.
  ///
  /// In en, this message translates to:
  /// **'Legacy apps (to be rebuilt)'**
  String get legacyApps;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @cpuUsage.
  ///
  /// In en, this message translates to:
  /// **'CPU usage'**
  String get cpuUsage;

  /// No description provided for @cores.
  ///
  /// In en, this message translates to:
  /// **'Cores: {count}'**
  String cores(Object count);

  /// No description provided for @memory.
  ///
  /// In en, this message translates to:
  /// **'Memory (RAM)'**
  String get memory;

  /// No description provided for @memoryUsage.
  ///
  /// In en, this message translates to:
  /// **'{percent}% usage'**
  String memoryUsage(Object percent);

  /// No description provided for @usedOfTotal.
  ///
  /// In en, this message translates to:
  /// **'Used {used} / Total {total}'**
  String usedOfTotal(Object used, Object total);

  /// No description provided for @storage.
  ///
  /// In en, this message translates to:
  /// **'Storage'**
  String get storage;

  /// No description provided for @totalLabel.
  ///
  /// In en, this message translates to:
  /// **'Total {storage}'**
  String totalLabel(Object storage);

  /// No description provided for @usedLabel.
  ///
  /// In en, this message translates to:
  /// **'Used {used} · {percent}%'**
  String usedLabel(Object used, Object percent);

  /// No description provided for @disk.
  ///
  /// In en, this message translates to:
  /// **'Disk'**
  String get disk;

  /// No description provided for @networkStatus.
  ///
  /// In en, this message translates to:
  /// **'Network status'**
  String get networkStatus;

  /// No description provided for @addServer.
  ///
  /// In en, this message translates to:
  /// **'Add server'**
  String get addServer;

  /// No description provided for @editServer.
  ///
  /// In en, this message translates to:
  /// **'Edit server'**
  String get editServer;

  /// No description provided for @nasType.
  ///
  /// In en, this message translates to:
  /// **'NAS type'**
  String get nasType;

  /// No description provided for @nasTypeCasaOS.
  ///
  /// In en, this message translates to:
  /// **'CasaOS'**
  String get nasTypeCasaOS;

  /// No description provided for @nasTypeZimaOS.
  ///
  /// In en, this message translates to:
  /// **'ZimaOS'**
  String get nasTypeZimaOS;

  /// No description provided for @serverName.
  ///
  /// In en, this message translates to:
  /// **'Server name'**
  String get serverName;

  /// No description provided for @serverNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter server name'**
  String get serverNameRequired;

  /// No description provided for @hostAddress.
  ///
  /// In en, this message translates to:
  /// **'Host address'**
  String get hostAddress;

  /// No description provided for @hostAddressHint.
  ///
  /// In en, this message translates to:
  /// **'192.168.1.100 or casaos.local'**
  String get hostAddressHint;

  /// No description provided for @hostAddressRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter host address'**
  String get hostAddressRequired;

  /// No description provided for @port.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get port;

  /// No description provided for @portRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter port'**
  String get portRequired;

  /// No description provided for @portInvalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid port (1-65535)'**
  String get portInvalid;

  /// No description provided for @useHttps.
  ///
  /// In en, this message translates to:
  /// **'Use HTTPS'**
  String get useHttps;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @noServerConfigured.
  ///
  /// In en, this message translates to:
  /// **'No server configured yet'**
  String get noServerConfigured;

  /// No description provided for @activate.
  ///
  /// In en, this message translates to:
  /// **'Activate'**
  String get activate;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @confirmDelete.
  ///
  /// In en, this message translates to:
  /// **'Confirm delete'**
  String get confirmDelete;

  /// No description provided for @confirmDeleteServer.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete server \"{name}\"?'**
  String confirmDeleteServer(Object name);

  /// No description provided for @welcomeToCasaOS.
  ///
  /// In en, this message translates to:
  /// **'Welcome to CasaOS / ZimaOS'**
  String get welcomeToCasaOS;

  /// No description provided for @createAccountHint.
  ///
  /// In en, this message translates to:
  /// **'Let\'s create your initial account first.'**
  String get createAccountHint;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccount;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start →'**
  String get start;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get confirmPassword;

  /// No description provided for @confirmPasswordRequired.
  ///
  /// In en, this message translates to:
  /// **'Please enter password again'**
  String get confirmPasswordRequired;

  /// No description provided for @passwordMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords do not match'**
  String get passwordMismatch;

  /// No description provided for @allDone.
  ///
  /// In en, this message translates to:
  /// **'All done!'**
  String get allDone;

  /// No description provided for @accountCreatedHint.
  ///
  /// In en, this message translates to:
  /// **'Your account has been created. Enter the desktop to experience CasaOS / ZimaOS.'**
  String get accountCreatedHint;

  /// No description provided for @enterDesktop.
  ///
  /// In en, this message translates to:
  /// **'Enter desktop'**
  String get enterDesktop;

  /// No description provided for @cannotGetInitKey.
  ///
  /// In en, this message translates to:
  /// **'Cannot get init key. Please check server status.'**
  String get cannotGetInitKey;

  /// No description provided for @initFailed.
  ///
  /// In en, this message translates to:
  /// **'Init failed: {e}'**
  String initFailed(Object e);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'it',
    'ja',
    'ko',
    'ru',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'ru':
      return AppLocalizationsRu();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
