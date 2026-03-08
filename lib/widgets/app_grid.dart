import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../l10n/app_localizations.dart';
import '../models/app_info.dart';
import '../providers/app_provider.dart';
import '../services/api_service.dart';

/// 与应用卡片样式一致的固定入口卡片（如 App Store、Files）
class SystemEntryCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const SystemEntryCard({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 48),
              const SizedBox(height: 8),
              Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppGrid extends StatelessWidget {
  final List<AppInfo> apps;

  const AppGrid({super.key, required this.apps});

  /// 桌面端根据宽度自适应每行数量，移动端保持适中尺寸
  static const double minCellWidth = 140.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final count = (width / minCellWidth).floor().clamp(2, 12);
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 1.2,
          ),
          itemCount: apps.length,
          itemBuilder: (context, index) {
            final app = apps[index];
            return AppCard(app: app);
          },
        );
      },
    );
  }
}

/// 单个应用卡片：点击图标打开应用(网页)，右上角三点菜单(打开/提示/设置/检查并更新/卸载/重启/关闭)
/// 参照 CasaOS-UI AppCard.vue 与 Business_OpenThirdApp
class AppCard extends StatefulWidget {
  final AppInfo app;

  const AppCard({super.key, required this.app});

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  final ApiService _api = ApiService();
  bool _isLoading = false;

  bool get _isV2App => widget.app.appType == 'v2app';
  bool get _isLegacyContainer => widget.app.isLegacyContainer;
  String? get _composeName => widget.app.composeName;

  void _onCardTap() {
    if (_isLegacyContainer) {
      context.push('/app/${widget.app.id}');
      return;
    }
    _openApp();
  }

  Future<void> _openApp() async {
    final app = widget.app;
    final l10n = AppLocalizations.of(context)!;
    if (_composeName == null) {
      _showSnack(l10n.cannotGetAppAddress);
      return;
    }
    setState(() => _isLoading = true);
    try {
      final running = app.isRunning ?? false;
      if (!running && _isV2App) {
        await _api.updateAppStatus(_composeName!, 'start');
        await Future.delayed(const Duration(milliseconds: 1200));
      }
      final url = await _api.getAppLaunchUrl(_composeName!);
      if (url != null && url.isNotEmpty) {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else {
          _showSnack(l10n.cannotOpen(url));
        }
      } else {
        _showSnack(l10n.cannotGetAppAddress);
      }
    } catch (e) {
      _showSnack(l10n.openFailed(e.toString()));
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  /// 统一执行 start/restart/stop 并刷新列表（与 CasaOS-UI toggle/restartApp 一致）
  Future<void> _setAppState(String status) async {
    final name = _composeName ?? widget.app.name;
    final l10n = AppLocalizations.of(context)!;
    setState(() => _isLoading = true);
    try {
      if (_isV2App) {
        await _api.updateAppStatus(name, status);
      } else if (_isLegacyContainer) {
        await _api.updateContainerState(name, status);
      } else {
        _showSnack(l10n.appTypeNotSupported);
        return;
      }
      _showSnack(status == 'start' ? l10n.starting : status == 'restart' ? l10n.restarting : l10n.closed);
      await Future.delayed(const Duration(milliseconds: 800));
      _refreshList();
    } catch (e) {
      _showSnack(l10n.operationFailed(e.toString()));
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  void _showSnack(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: Colors.grey.shade800),
    );
  }

  void _refreshList() {
    Provider.of<AppProvider>(context, listen: false).loadApps();
  }

  Future<void> _menuOpen() async {
    if (_isLegacyContainer) {
      context.push('/app/${widget.app.id}');
      return;
    }
    await _openApp();
  }

  void _menuTips() {
    final app = widget.app;
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.tipsTitle(app.name)),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (app.description != null && app.description!.isNotEmpty)
                Text(app.description!),
              if (app.description == null || app.description!.isEmpty)
                Text(l10n.noDescription),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.ok),
          ),
        ],
      ),
    );
  }

  void _menuSetting() {
    context.push('/app/${widget.app.id}');
  }

  Future<void> _menuCheckUpdate() async {
    final l10n = AppLocalizations.of(context)!;
    if (_composeName == null) {
      _showSnack(l10n.checkUpdateNotSupported);
      return;
    }
    setState(() => _isLoading = true);
    try {
      final msg = await _api.updateComposeApp(_composeName!);
      _showSnack(msg);
      _refreshList();
    } catch (e) {
      _showSnack(l10n.updateFailed(e.toString()));
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _menuUninstall() async {
    final name = _composeName ?? widget.app.name;
    final l10n = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.confirmUninstall),
        content: Text(
          l10n.uninstallConfirmMessage(widget.app.name),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.uninstall, style: const TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (ok != true || !mounted) return;
    setState(() => _isLoading = true);
    try {
      if (_isV2App) {
        await _api.uninstallApp(name, deleteConfig: false);
      } else if (_isLegacyContainer) {
        await _api.uninstallContainer(name, deleteConfig: false);
      } else {
        _showSnack(l10n.cannotUninstall);
        return;
      }
      _showSnack(l10n.uninstalled);
      _refreshList();
    } catch (e) {
      _showSnack(l10n.uninstallFailed(e.toString()));
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _menuRestart() async {
    final name = _composeName ?? widget.app.name;
    final l10n = AppLocalizations.of(context)!;
    if (name.isEmpty) {
      _showSnack(l10n.cannotRestart);
      return;
    }
    await _setAppState('restart');
  }

  Future<void> _menuClose() async {
    final name = _composeName ?? widget.app.name;
    final l10n = AppLocalizations.of(context)!;
    if (name.isEmpty) {
      _showSnack(l10n.cannotClose);
      return;
    }
    await _setAppState('stop');
  }

  @override
  Widget build(BuildContext context) {
    final app = widget.app;
    final running = app.isRunning ?? false;

    return Card(
      elevation: 2,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          InkWell(
            onTap: _isLoading ? null : _onCardTap,
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (app.icon != null)
                    CachedNetworkImage(
                      imageUrl: app.icon!,
                      width: 48,
                      height: 48,
                      fit: BoxFit.cover,
                      placeholder: (_, __) => const SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                            child: CircularProgressIndicator(strokeWidth: 2)),
                      ),
                      errorWidget: (_, __, ___) =>
                          const Icon(Icons.apps, size: 48),
                    )
                  else
                    const Icon(Icons.apps, size: 48),
                  const SizedBox(height: 8),
                  Text(
                    app.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (running)
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          AppLocalizations.of(context)!.running,
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.green.shade800,
                          ),
                        ),
                      ),
                    ),
                  if (_isLoading)
                    const Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    ),
                ],
              ),
            ),
          ),
          if ((_composeName != null) || _isLegacyContainer)
            Positioned(
              top: 4,
              right: 4,
              child: PopupMenuButton<String>(
                icon: Icon(
                  Icons.more_vert,
                  size: 20,
                  color: Colors.grey.shade700,
                ),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 1),
                onSelected: (value) async {
                  switch (value) {
                    case 'open':
                      await _menuOpen();
                      break;
                    case 'tips':
                      _menuTips();
                      break;
                    case 'setting':
                      _menuSetting();
                      break;
                    case 'check_update':
                      await _menuCheckUpdate();
                      break;
                    case 'uninstall':
                      await _menuUninstall();
                      break;
                    case 'restart':
                      await _menuRestart();
                      break;
                    case 'close':
                      await _menuClose();
                      break;
                  }
                },
                itemBuilder: (ctx) {
                  final l10n = AppLocalizations.of(context)!;
                  return [
                    PopupMenuItem(
                      value: 'open',
                      child: Text(_isLegacyContainer ? l10n.open : (running ? l10n.open : l10n.launchAndOpen)),
                    ),
                    if (_isV2App) PopupMenuItem(value: 'tips', child: Text(l10n.tips)),
                    if (_isV2App) PopupMenuItem(value: 'setting', child: Text(l10n.settings)),
                    if (_isV2App)
                      PopupMenuItem(
                        value: 'check_update',
                        child: Text(l10n.checkAndUpdate),
                      ),
                    PopupMenuItem(
                      value: 'uninstall',
                      child: Text(l10n.uninstall, style: const TextStyle(color: Colors.red)),
                    ),
                    PopupMenuItem(
                      value: 'restart',
                      enabled: running,
                      child: Text(l10n.restart),
                    ),
                    PopupMenuItem(
                      value: 'close',
                      enabled: running,
                      child: Text(l10n.close),
                    ),
                  ];
                },
              ),
            ),
        ],
      ),
    );
  }
}
