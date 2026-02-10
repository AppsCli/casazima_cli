# casazima_cli

一个基于 Flutter 实现的 **CasaOS / ZimaOS 多服务器客户端**。

本项目在本地集成了官方前端 `CasaOS-UI/` 代码，用于参考交互与接口设计，但真正运行的是 `lib/` 下的 Flutter 客户端：

- 支持配置多个 CasaOS / ZimaOS 服务器，并选择其一作为当前激活服务器
- 支持系统初始化引导（复刻 `Welcome.vue` 逻辑）
- 支持登录 / 退出登录（复刻 `Login.vue` 逻辑）
- 支持首页系统状态展示（CPU、内存、磁盘、网络）与应用列表
- 支持基础文件管理（浏览 / 新建 / 重命名 / 删除 文件与文件夹）
- 预留 App 详情 / 安装 / 卸载 的入口，后续可继续对接 CasaOS 的 OpenAPI

---

## 功能概览

- **多服务器管理**
  - 在 APP 中配置多个 CasaOS / ZimaOS 服务器（IP / 域名 + 端口 + 是否 HTTPS）
  - 可设置一个服务器为“激活服务器”，所有 API 请求都会发往该服务器

- **初始化引导（Welcome）**
  - 首次启动且服务器未初始化时，自动进入欢迎向导
  - 引导用户创建初始账号（使用 `/users/status` + `/users/register` + `initKey`）
  - 注册成功后自动登录，并设置默认 App 顺序（与 CasaOS 保持一致）

- **登录与账号状态**
  - 登录：`/users/login`
  - 使用 `SharedPreferences` 持久化 `access_token / refresh_token / user`
  - 已登录用户可直接进入首页

- **首页（Home）**
  - 显示当前服务器：
    - 系统版本 `/sys/version`
    - 硬件信息 `/sys/hardware`
    - CPU / 内存 / 磁盘 / 网络等状态
  - 显示应用列表 `/v2/app_management/apps`

- **文件管理**
  - 目录列表：`/folder`
  - 新建 / 重命名 / 删除 文件和文件夹：`/folder` + `/file`
  - 网格 / 列表视图切换
  - 面包屑导航、上一级目录、空目录提示等

- **App 详情（基础版）**
  - 通过 `/v2/app_management/apps/{id}` 拉取应用详情
  - 展示名称 / 图标 / 版本 / 分类 / 描述 / 运行状态
  - 提供“安装 / 启动”和“卸载”按钮，目前为安全起见只做**提示占位**，未真正发起安装 / 卸载请求

---

## 目录结构（核心部分）

仅列出与 Flutter 客户端相关的核心目录：

- `lib/main.dart`  
  应用入口，配置 `MultiProvider` 和 `GoRouter`。

- `lib/router/app_router.dart`  
  路由配置：
  - `/login`：登录页
  - `/welcome`：初始化向导
  - `/home`：首页
  - `/server-config`：服务器配置
  - `/files`：文件管理器
  - `/apps/:id`：应用详情页

- `lib/models/`
  - `server_config.dart`：服务器配置模型
  - `user.dart`：用户与登录返回模型
  - `system_info.dart`：系统版本 / 硬件信息模型
  - `app_info.dart`：应用信息模型
  - `file_item.dart`：文件/目录信息模型

- `lib/services/`
  - `api_service.dart`：对 CasaOS / ZimaOS HTTP API 的封装
  - `server_config_service.dart`：服务器配置本地存储封装

- `lib/providers/`
  - `auth_provider.dart`：登录状态 / 用户信息
  - `server_config_provider.dart`：服务器列表 / 激活服务器
  - `system_info_provider.dart`：系统信息
  - `app_provider.dart`：应用列表
  - `file_provider.dart`：文件管理状态

- `lib/screens/`
  - `login_screen.dart`：登录界面
  - `welcome_screen.dart`：初始化引导界面
  - `home_screen.dart`：首页（系统状态 + 应用列表）
  - `server_config_screen.dart`：服务器配置界面
  - `file_browser_screen.dart`：文件浏览与管理界面
  - `app_detail_screen.dart`：应用详情界面

- `lib/widgets/`
  - `system_status_card.dart`：系统状态卡片（CPU / 内存 / 磁盘 / 网络）
  - `app_grid.dart`：应用网格列表

CasaOS 官方前端代码位于：

- `CasaOS-UI/`：原始 Vue 前端工程，仅作为参考，不参与 Flutter 构建。

---

## 环境要求

- Flutter SDK：3.8.1 及以上（见 `pubspec.yaml` 中 `sdk: ^3.8.1`）
- Dart SDK：随 Flutter 安装
- 开发平台：
  - macOS（已包含 iOS / macOS 构建工程）
  - Windows / Linux（已包含对应 Flutter Runner）

---

## 安装与运行

### 1. 安装依赖

```bash
cd casazima_cli
flutter pub get
```

### 2. 运行到设备 / 模拟器

```bash
# 运行到已连接的设备或启动的模拟器
flutter run
```

如需指定平台：

```bash
flutter run -d macos
flutter run -d chrome
flutter run -d ios
flutter run -d android
```

---

## 使用说明

### 1. 配置 CasaOS / ZimaOS 服务器

1. 启动 APP 后，如果尚未配置服务器：
   - 登录页顶部会提示“配置服务器”按钮
2. 进入「服务器配置」：
   - 填写：
     - 服务器名称（任意标识）
     - 主机地址（IP 或域名，如 `192.168.1.100`、`casaos.local`）
     - 端口（默认 80 或 443，视你的部署而定）
     - 是否使用 HTTPS
   - 保存后，可在列表中点“勾选”按钮设置为**激活服务器**

> 只有存在一个激活服务器时，登录与其它 API 才能正常工作。

### 2. 初始化服务器（Welcome 流程）

若你的 CasaOS / ZimaOS 实例尚未完成初始化（与 Web UI 首次打开的流程一致）：

1. APP 会在登录页自动调用 `/users/status` 判断是否需要初始化
2. 若需要，将自动跳转到 `/welcome`：
   - 步骤 1：欢迎页
   - 步骤 2：创建账户（填用户名与两次密码）
   - 步骤 3：完成页（自动登录并设置默认 app 顺序）
3. 完成后进入首页。

### 3. 登录 / 退出登录

- 登录：
  - 在登录页输入用户名 / 密码
  - 点击“登录”按钮
  - 成功后跳转到 `/home`
- 退出登录：
  - 在首页右上角头像菜单中选择“退出登录”
  - 将清除本地 token 与用户信息，并返回登录页

### 4. 首页（系统状态 + 应用）

- 顶部卡片展示：
  - CasaOS / ZimaOS 当前版本
  - CPU 使用率
  - 内存占用
  - 磁盘容量与使用情况
  - 网络上/下载速率
- 下方 App 区域：
  - 展示来自 `/v2/app_management/apps` 的应用列表
  - 点击某个 App 卡片 → 进入应用详情页（信息展示已实现，安装/卸载为占位）

### 5. 文件管理

从首页 AppBar 点击“文件管理”按钮进入：

- 网格 / 列表双视图切换
- 支持：
  - 浏览目录（默认根路径 `/DATA`，可自定义）
  - 点击文件夹进入下一级目录
  - 面包屑导航跳转任意上级目录
  - 新建文件夹 / 文件
  - 重命名文件 / 文件夹
  - 删除文件 / 文件夹

> 下载与文件内容预览目前保留入口，具体行为可根据你的需求后续对接。

---

## 与 CasaOS-UI 的对应关系

为方便后续继续“复刻”官方前端，这里给出主要映射关系：

- 初始化 & 登录：
  - `CasaOS-UI/src/views/Welcome.vue` → `lib/screens/welcome_screen.dart`
  - `CasaOS-UI/src/views/Login.vue` → `lib/screens/login_screen.dart`
  - `CasaOS-UI/src/router/index.js` 中的 `beforeEach` → `lib/router/app_router.dart` 中 `redirect` 逻辑

- 首页：
  - `CasaOS-UI/src/views/Home.vue` → `lib/screens/home_screen.dart`
  - `CasaOS-UI/src/widgets/Cpu.vue` 等 → `lib/widgets/system_status_card.dart`

- 文件管理：
  - `CasaOS-UI/src/components/filebrowser/FilePanel.vue` → `lib/screens/file_browser_screen.dart` + `lib/providers/file_provider.dart`
  - `CasaOS-UI/src/service/folder.js` / `file.js` → `lib/services/api_service.dart` 中对应方法

- 应用：
  - `CasaOS-UI/src/components/Apps/*` → `lib/widgets/app_grid.dart` + `lib/screens/app_detail_screen.dart`
  - `CasaOS-UI/src/service/apps.js` / `container.js` → `lib/services/api_service.dart` 中 Apps 相关方法（部分已实现，安装/卸载待后续补全）

---

## 后续规划（可选）

如需进一步完全复刻 CasaOS-UI，可继续在本项目基础上扩展：

- App 安装 / 卸载 / 启停（对接 `/v2/app_management/compose` + `container` OpenAPI）
- WebSocket 消息总线接入（`/v2/message_bus/socket.io/`），用于：
  - App 安装进度
  - 系统事件 / 通知
  - 实时状态刷新
- 文件预览（文本编辑 / 图片 / 音视频 / PDF / Office 文档等）

---

## 许可证

本项目本身未显式声明许可证（请根据实际情况补充）。  
CasaOS-UI 部分代码版权归 IceWhale / CasaOS 官方所有，使用和分发时请遵循其原始仓库的 LICENSE 要求。

