# CasaZima CLI

English | [简体中文](README_zh.md)

A **multi-server client for CasaOS / ZimaOS** built with Flutter, supporting Android, iOS, macOS, Windows, Linux, and Web.

This project integrates the official frontend `CasaOS-UI/` code locally for reference on interaction and API design, while the actual runtime is the Flutter client under `lib/`:

- Configure multiple CasaOS / ZimaOS servers and select one as the active server
- System initialization wizard (replicating `Welcome.vue` logic)
- Login / logout (replicating `Login.vue` logic)
- Home dashboard with system status (CPU, memory, disk, network) and app list
- Basic file management (browse / create / rename / delete files and folders)
- File preview (text, images, audio/video, PDF, etc.)
- Multi-language support (Chinese, English, Japanese, Korean, German, French, Spanish, Russian, Arabic, Italian, Traditional Chinese)
- App detail / install / uninstall entry points reserved for future CasaOS OpenAPI integration

---

## Download & Release

| Platform | Format | Description |
|----------|--------|--------------|
| **Android** | APK / AAB | For phones and tablets |
| **iOS** | IPA | Requires signing for installation |
| **macOS** | DMG | Drag-and-drop install |
| **Windows** | MSIX / Setup.exe | MSIX for Microsoft Store; Setup.exe is Inno Setup installer |
| **Linux** | deb / rpm / AppImage / Flatpak / tar.gz | deb/rpm for major distros; AppImage portable; Flatpak sandbox; tar.gz portable archive |

Release builds are available from [GitHub Releases](https://github.com/iotserv/casazima_cli/releases). Pushing a `v*.*.*` tag triggers automatic builds. Optionally, builds can be auto-submitted to **Snap Store**, **Microsoft Store**, **Google Play**, and **Apple App Store** (see [Store publishing guide](docs/STORE_PUBLISH.md) and GitHub Actions secrets).

---

## Features Overview

- **Multi-Server Management**
  - Configure multiple CasaOS / ZimaOS servers (IP / domain + port + HTTPS option)
  - Set one server as the "active server"; all API requests go to that server

- **Initialization Wizard (Welcome)**
  - On first launch with uninitialized server, enter the welcome wizard
  - Guide users to create the initial account (using `/users/status` + `/users/register` + `initKey`)
  - Auto-login after registration and set default app order (aligned with CasaOS)

- **Login & Account Status**
  - Login: `/users/login`
  - Persist `access_token / refresh_token / user` via `SharedPreferences`
  - Logged-in users go directly to the home screen

- **Home**
  - Current server info:
    - System version `/sys/version`
    - Hardware info `/sys/hardware`
    - CPU / memory / disk / network status
  - App list from `/v2/app_management/apps`

- **File Management**
  - Directory listing: `/folder`
  - Create / rename / delete files and folders: `/folder` + `/file`
  - Grid / list view toggle
  - Breadcrumb navigation, parent directory, empty directory hints
  - File preview: text, images, audio/video, PDF, etc.

- **App Detail (Basic)**
  - Fetch app details via `/v2/app_management/apps/{id}`
  - Display name / icon / version / category / description / run status
  - "Install / Start" and "Uninstall" buttons are placeholders for safety; no actual install/uninstall requests yet

---

## Directory Structure (Core)

Only core directories related to the Flutter client:

- `lib/main.dart`  
  App entry, configures `MultiProvider` and `GoRouter`.

- `lib/router/app_router.dart`  
  Route configuration:
  - `/login`: Login page
  - `/welcome`: Initialization wizard
  - `/home`: Home
  - `/server-config`: Server configuration
  - `/files`: File manager
  - `/apps/:id`: App detail page

- `lib/models/`
  - `server_config.dart`: Server config model
  - `user.dart`: User and login response model
  - `system_info.dart`: System version / hardware info model
  - `app_info.dart`: App info model
  - `file_item.dart`: File/directory info model

- `lib/services/`
  - `api_service.dart`: HTTP API wrapper for CasaOS / ZimaOS
  - `server_config_service.dart`: Local storage for server config

- `lib/providers/`
  - `auth_provider.dart`: Login state / user info
  - `server_config_provider.dart`: Server list / active server
  - `system_info_provider.dart`: System info
  - `app_provider.dart`: App list
  - `file_provider.dart`: File management state

- `lib/screens/`
  - `login_screen.dart`: Login UI
  - `welcome_screen.dart`: Initialization wizard UI
  - `home_screen.dart`: Home (system status + app list)
  - `server_config_screen.dart`: Server configuration UI
  - `file_browser_screen.dart`: File browser and management UI
  - `app_detail_screen.dart`: App detail UI

- `lib/widgets/`
  - `system_status_card.dart`: System status card (CPU / memory / disk / network)
  - `app_grid.dart`: App grid list

Official CasaOS frontend code:

- `CasaOS-UI/`: Original Vue frontend project, for reference only, not part of Flutter build.

---

## Requirements

- Flutter SDK: 3.8.1 or higher (CI uses 3.32.8; see `pubspec.yaml` `sdk: ^3.8.1`)
- Dart SDK: Bundled with Flutter
- Development platforms:
  - macOS (includes iOS / macOS build)
  - Windows / Linux (includes corresponding Flutter Runner)
  - Web (Chrome, etc.)

### Linux Build Dependencies

For Linux builds, the `audioplayers` plugin requires GStreamer. If you see `gstreamer-1.0 not found`, install:

**Ubuntu / Debian:**

```bash
sudo apt-get install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
```

**Fedora:**

```bash
sudo dnf install gstreamer1-devel gstreamer1-plugins-base-devel
```

**Arch Linux:**

```bash
sudo pacman -S gstreamer gst-plugins-base
```

### Windows: WRONG_VERSION_NUMBER Error

On Windows, if you see `WRONG_VERSION_NUMBER(tls_record.cc:127)` or `HandshakeException` when connecting to a server, it usually indicates an **HTTP/HTTPS protocol mismatch**:

- **Cause**: The client expects TLS (HTTPS) handshake but the server returns plain HTTP, or vice versa.
- **Common case**: CasaOS / ZimaOS typically use **HTTP** on port 80. If "Use HTTPS" is checked in server config while the server is actually HTTP, this error occurs.
- **Fix**:
  1. Go to Server Config → Edit the server
  2. If the server uses HTTP (e.g. `http://192.168.1.100:80`), **uncheck** "Use HTTPS"
  3. If the server uses HTTPS (e.g. `https://...:443`), ensure "Use HTTPS" is checked and the port is correct
  4. Verify in a browser: `http://server-ip:80` or `https://server-ip:443`

If the issue persists, check for corporate proxies, firewalls, or TLS interception affecting the connection.

---

## Installation & Run

### 1. Install Dependencies

```bash
cd casazima_cli
flutter pub get
```

### 2. Run on Device / Emulator

```bash
flutter run
```

To specify a platform:

```bash
flutter run -d macos
flutter run -d chrome
flutter run -d ios
flutter run -d android
```

---

## Usage

### 1. Configure CasaOS / ZimaOS Server

1. After launching the app, if no server is configured:
   - The login page shows a "Configure server" button at the top
2. Go to **Server Config**:
   - Fill in:
     - Server name (any label)
     - Host (IP or domain, e.g. `192.168.1.100`, `casaos.local`)
     - Port (default 80 or 443, depending on your setup)
     - Use HTTPS
   - After saving, tap the checkmark in the list to set it as the **active server**

> Login and other APIs only work when there is an active server.

### 2. Initialize Server (Welcome Flow)

If your CasaOS / ZimaOS instance is not yet initialized (same as first-time Web UI):

1. The app calls `/users/status` on the login page to check if initialization is needed
2. If needed, it redirects to `/welcome`:
   - Step 1: Welcome page
   - Step 2: Create account (username and password twice)
   - Step 3: Done (auto-login and set default app order)
3. Then you are taken to the home screen.

### 3. Login / Logout

- **Login**: Enter username and password on the login page, tap "Login", then go to `/home`
- **Logout**: From the avatar menu (top-right on home), choose "Log out". Local tokens and user info are cleared and you return to the login page.

### 4. Home (System Status + Apps)

- Top cards show:
  - CasaOS / ZimaOS version
  - CPU usage
  - Memory usage
  - Disk capacity and usage
  - Network upload/download speed
- App area below:
  - App list from `/v2/app_management/apps`
  - Tap an app card → App detail page (info shown; install/uninstall are placeholders)

### 5. File Management

Enter from the "File Management" button in the home AppBar:

- Grid / list view toggle
- Browse directories (default root `/DATA`, configurable)
- Tap folders to go deeper
- Breadcrumb navigation to any parent directory
- Create folder / file
- Rename file / folder
- Delete file / folder

> File preview supports text, images, audio/video, PDF, etc. Download can be added later as needed.

---

## Mapping to CasaOS-UI

For easier continuation of the official frontend replication:

- Initialization & login:
  - `CasaOS-UI/src/views/Welcome.vue` → `lib/screens/welcome_screen.dart`
  - `CasaOS-UI/src/views/Login.vue` → `lib/screens/login_screen.dart`
  - `beforeEach` in `CasaOS-UI/src/router/index.js` → `redirect` logic in `lib/router/app_router.dart`

- Home:
  - `CasaOS-UI/src/views/Home.vue` → `lib/screens/home_screen.dart`
  - `CasaOS-UI/src/widgets/Cpu.vue` etc. → `lib/widgets/system_status_card.dart`

- File management:
  - `CasaOS-UI/src/components/filebrowser/FilePanel.vue` → `lib/screens/file_browser_screen.dart` + `lib/providers/file_provider.dart`
  - `CasaOS-UI/src/service/folder.js` / `file.js` → corresponding methods in `lib/services/api_service.dart`

- Apps:
  - `CasaOS-UI/src/components/Apps/*` → `lib/widgets/app_grid.dart` + `lib/screens/app_detail_screen.dart`
  - `CasaOS-UI/src/service/apps.js` / `container.js` → Apps-related methods in `lib/services/api_service.dart` (partially implemented; install/uninstall pending)

---

## CI/CD

The project uses GitHub Actions for CI and release:

- **Test workflow** (`.github/workflows/test.yml`): Runs on push and PR to `master` / `main`, builds all platforms and uploads artifacts
- **Release workflow** (`.github/workflows/release.yml`): Triggered by `v*.*.*` tags, builds release packages for all platforms and uploads to GitHub Releases

---

## Future Plans (Optional)

To further replicate CasaOS-UI:

- App install / uninstall / start-stop (integrate `/v2/app_management/compose` + `container` OpenAPI)
- WebSocket message bus (`/v2/message_bus/socket.io/`) for:
  - App install progress
  - System events / notifications
  - Real-time status updates
- Enhanced file preview (text editing / Office documents, etc.)

---

## License

This project does not explicitly declare a license (please add as appropriate).  
CasaOS-UI code is copyrighted by IceWhale / CasaOS; follow its original repository LICENSE for use and distribution.  
`build-flutter-app.sh` is licensed under MIT.
