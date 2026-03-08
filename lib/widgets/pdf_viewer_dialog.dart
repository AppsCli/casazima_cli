import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdfx/pdfx.dart';
import '../models/file_item.dart';
import '../l10n/app_localizations.dart';

/// PDF 查看对话框
class PdfViewerDialog extends StatefulWidget {
  final FileItem item;
  final Uint8List bytes;
  final VoidCallback? onDownload;

  const PdfViewerDialog({
    super.key,
    required this.item,
    required this.bytes,
    this.onDownload,
  });

  @override
  State<PdfViewerDialog> createState() => _PdfViewerDialogState();
}

class _PdfViewerDialogState extends State<PdfViewerDialog> {
  late PdfControllerPinch _pdfController;

  @override
  void initState() {
    super.initState();
    _pdfController = PdfControllerPinch(
      document: PdfDocument.openData(widget.bytes),
      initialPage: 1,
    );
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

  void _openFullscreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (ctx) => _PdfViewerFullscreen(
          item: widget.item,
          bytes: widget.bytes,
          onDownload: widget.onDownload,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Dialog(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.95,
          maxHeight: MediaQuery.of(context).size.height * 0.9,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.item.name,
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  PdfPageNumber(
                    controller: _pdfController,
                    builder: (_, state, loadingState, pagesCount) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '${_pdfController.page}/${pagesCount ?? 0}',
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.fullscreen),
                    onPressed: () => _openFullscreen(context),
                    tooltip: AppLocalizations.of(context)!.fullscreen,
                  ),
                  if (widget.onDownload != null)
                    IconButton(
                      icon: const Icon(Icons.download),
                      onPressed: widget.onDownload,
                      tooltip: l10n.download,
                    ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Flexible(
              child: PdfViewPinch(
                controller: _pdfController,
                builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
                  options: const DefaultBuilderOptions(),
                  documentLoaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
                  pageLoaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
                  errorBuilder: (_, error) => Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.error_outline, size: 48, color: Colors.red),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(error.toString(), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 全屏 PDF 查看
class _PdfViewerFullscreen extends StatefulWidget {
  final FileItem item;
  final Uint8List bytes;
  final VoidCallback? onDownload;

  const _PdfViewerFullscreen({
    required this.item,
    required this.bytes,
    this.onDownload,
  });

  @override
  State<_PdfViewerFullscreen> createState() => _PdfViewerFullscreenState();
}

class _PdfViewerFullscreenState extends State<_PdfViewerFullscreen> {
  late PdfControllerPinch _pdfController;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    _pdfController = PdfControllerPinch(
      document: PdfDocument.openData(widget.bytes),
      initialPage: 1,
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    _pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Column(
          children: [
            Material(
              color: Colors.grey.shade800,
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                  Expanded(
                    child: Text(
                      widget.item.name,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  PdfPageNumber(
                    controller: _pdfController,
                    builder: (_, state, loadingState, pagesCount) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        '${_pdfController.page}/${pagesCount ?? 0}',
                        style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                      ),
                    ),
                  ),
                  if (widget.onDownload != null)
                    IconButton(
                      icon: const Icon(Icons.download),
                      onPressed: widget.onDownload,
                      tooltip: l10n.download,
                    ),
                ],
              ),
            ),
            Expanded(
              child: PdfViewPinch(
                controller: _pdfController,
                builders: PdfViewPinchBuilders<DefaultBuilderOptions>(
                  options: const DefaultBuilderOptions(),
                  documentLoaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
                  pageLoaderBuilder: (_) => const Center(child: CircularProgressIndicator()),
                  errorBuilder: (_, error) => Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.error_outline, size: 48, color: Colors.red),
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(error.toString(), textAlign: TextAlign.center),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
