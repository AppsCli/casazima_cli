import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../l10n/app_localizations.dart';

/// 内置浏览器页面，使用 flutter_inappwebview 显示 WebView
/// 提供「使用系统浏览器打开」按钮
class InAppBrowserScreen extends StatefulWidget {
  final String initialUrl;

  const InAppBrowserScreen({
    super.key,
    required this.initialUrl,
  });

  @override
  State<InAppBrowserScreen> createState() => _InAppBrowserScreenState();
}

class _InAppBrowserScreenState extends State<InAppBrowserScreen> {
  String _currentUrl = '';
  bool _isLoading = true;

  Future<void> _openInSystemBrowser() async {
    final url = _currentUrl.isNotEmpty ? _currentUrl : widget.initialUrl;
    final uri = Uri.tryParse(url);
    if (uri != null && await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final uri = Uri.tryParse(widget.initialUrl);
    if (uri == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text(l10n.error),
        ),
        body: Center(
          child: Text(l10n.cannotOpen(widget.initialUrl)),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/home');
            }
          },
          tooltip: l10n.back,
        ),
        title: _isLoading
            ? Text(l10n.loading)
            : Text(
                _currentUrl,
                style: const TextStyle(
                  fontSize: 14,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
        actions: [
          IconButton(
            icon: const Icon(Icons.open_in_browser),
            onPressed: _openInSystemBrowser,
            tooltip: l10n.openInSystemBrowser,
          ),
        ],
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(url: WebUri(uri.toString())),
        initialSettings: InAppWebViewSettings(
          javaScriptEnabled: true,
          domStorageEnabled: true,
          useWideViewPort: true,
          loadWithOverviewMode: true,
        ),
        onWebViewCreated: (_) {},
        onLoadStart: (controller, url) {
          if (mounted) {
            setState(() {
              _currentUrl = url?.toString() ?? widget.initialUrl;
              _isLoading = true;
            });
          }
        },
        onLoadStop: (controller, url) {
          if (mounted) {
            setState(() {
              _currentUrl = url?.toString() ?? widget.initialUrl;
              _isLoading = false;
            });
          }
        },
        onReceivedError: (controller, request, error) {
          if (mounted) {
            setState(() => _isLoading = false);
          }
        },
      ),
    );
  }
}
