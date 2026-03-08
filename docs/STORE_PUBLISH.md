# 应用商店自动发布配置

推送 `v*.*.*` 标签会触发 [Release workflow](../.github/workflows/release.yml)，在构建各平台产物并上传到 GitHub Release 的同时，可自动提交到以下商店（需在 GitHub 中配置对应 Secrets）。

## 一、需要在 GitHub 配置的内容

在仓库 **Settings → Secrets and variables → Actions** 中添加以下 **Secrets**（按需添加，未配置的商店上传步骤会失败，可暂时忽略或注释掉对应步骤）。

---

### 1. Snap Store（Linux）

| Secret 名称 | 说明 |
|------------|------|
| `SNAPCRAFT_TOKEN` | Snap Store 登录凭据。在本地执行 `snapcraft login` 登录后，运行：<br>`snapcraft export-login -`<br>将输出内容完整保存为该 Secret。 |

- 需先在 [snapcraft.io](https://snapcraft.io) 注册并注册 snap 名称 `casazima-cli`。
- 工作流会构建 `snap/snapcraft.yaml` 并发布到 **stable** 通道。

---

### 2. Microsoft Store（Windows）

| Secret 名称 | 说明 |
|------------|------|
| `AZURE_TENANT_ID` | Azure AD 租户 ID |
| `AZURE_CLIENT_ID` | Azure AD 应用（客户端）ID |
| `AZURE_CLIENT_SECRET` | Azure AD 应用客户端密钥 |
| `MICROSOFT_STORE_APP_ID` | Partner Center 中该应用的 ID（应用标识） |

- 在 [Partner Center](https://partner.microsoft.com/dashboard) 创建/关联应用，并在 Azure AD 中创建用于 API 的“应用注册”，将上述值填入 Secrets。
- 本仓库 `pubspec.yaml` 中已配置 `msix_config`（identity、publisher 等），需与 Partner Center 中应用一致。
- 工作流在 Windows 任务中构建 MSIX 后会自动提交到 Microsoft Store。

---

### 3. Google Play（Android）

| Secret 名称 | 说明 |
|------------|------|
| `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON` | Google Play Console 服务账号 JSON 的**完整内容**（整段 JSON 字符串）。 |

- 在 [Google Play Console](https://play.google.com/console) → 设置 → API 访问 中创建服务账号，并下载 JSON 密钥。
- 在 Play Console 中为该服务账号授予“发布应用”等权限，且应用包名需已存在：`cloud.iothub.casazima_cli`。
- 当前工作流将 AAB 发布到 **internal** 轨道；若需 production/beta，可修改 workflow 中的 `track`。

---

### 4. Apple App Store（iOS / macOS）

当前 Release 流程中：

- **iOS**：使用 `flutter build ipa --no-codesign`，产出的归档未签名，**无法直接提交 TestFlight/App Store**。若需自动上传：
  1. 在仓库中配置代码签名（证书与描述文件），并改为带签名的 `flutter build ipa`（去掉 `--no-codesign`）。
  2. 在 workflow 中取消注释 “Upload to TestFlight” 步骤，并配置下列 Secrets。

| Secret 名称 | 说明 |
|------------|------|
| `APPSTORE_ISSUER_ID` | App Store Connect → 用户与访问 → 密钥 → Issuer ID |
| `APPSTORE_API_KEY_ID` | API 密钥的 Key ID |
| `APPSTORE_API_PRIVATE_KEY` | 下载的 `.p8` 私钥文件的**完整内容** |

- **macOS**：当前仅构建并发布 DMG 到 GitHub Release。若需提交 Mac App Store 或对外分发时做公证，需要：
  1. 配置 Mac 代码签名与公证（Apple ID、App 专用密码或 Notary 所需证书）。
  2. 在 workflow 中启用/添加“公证 DMG”和“上传 Mac 应用”等步骤（目前为注释占位）。

---

## 二、可选：仅在有密钥时才上传

若希望“未配置某商店密钥时不要因上传失败而报错”，可以：

1. **不配置对应 Secret**：未配置时该步会因认证失败而失败，可接受则保持现状。
2. **使用仓库变量**：在 **Settings → Secrets and variables → Actions → Variables** 中增加例如 `ENABLE_GOOGLE_PLAY`、`ENABLE_MICROSOFT_STORE`、`ENABLE_SNAP_STORE`，在 workflow 中为各上传步骤增加条件，例如：`if: vars.ENABLE_GOOGLE_PLAY == '1'`，这样只有设为 `1` 时才会执行上传。

---

## 三、流程概览

| 平台 | 产物 | GitHub Release | 商店自动上传 |
|------|------|----------------|-------------|
| Android | APK / AAB | ✅ | Google Play（需 `GOOGLE_PLAY_SERVICE_ACCOUNT_JSON`） |
| iOS | 归档 zip | ✅ | TestFlight/App Store（需签名 + 取消注释步骤 + Apple Secrets） |
| macOS | DMG | ✅ | Mac App Store / 公证（需额外配置，当前为占位） |
| Windows | zip / MSIX / Setup.exe | ✅ | Microsoft Store（需 Azure + `MICROSOFT_STORE_APP_ID`） |
| Linux | deb / rpm / AppImage / Snap | ✅ | Snap Store（需 `SNAPCRAFT_TOKEN`） |

推送 tag 示例：

```bash
git tag v1.0.1
git push origin v1.0.1
```

触发后可在 **Actions** 页查看 Release 及各商店上传步骤的执行情况。
