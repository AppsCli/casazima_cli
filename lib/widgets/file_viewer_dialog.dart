import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../models/file_item.dart';
import '../l10n/app_localizations.dart';

/// 根据扩展名判断是否为可预览的文本文件（与 CasaOS-UI filePanelMap code-editor 一致）
bool isPreviewableTextFile(FileItem item) {
  const textExts = {
    'txt', 'log', 'pages', 'conf', 'config', 'list', 'ini', 'toml', 'cfg', 'rc',
    'env', 'service', 'conf.d', 'htaccess', 'gitconfig', 'vim', 'curlrc', 'wgetrc',
    'gitignore', 'md', 'php', 'css', 'less', 'scss', 'sass', 'aspx', 'lua', 'vue',
    'js', 'go', 'asp', 'bat', 'c', 'cpp', 'cs', 'json', 'py', 'perl', 'sh', 'xml',
    'yaml', 'vb', 'vbs', 'sql', 'swift', 'rust', 'rs', 'jsp', 'yml', 'r', 'pl', 'rb',
    'src', 'h', 'tex', 'rtf', 'jsonld', 'ttl', 'n3', 'rss', 'atom', 'srt', 'ass',
    'tsv', 'vcard', 'asc', 'url', 'diff', 'plaintext', 'html', 'htm', 'shtml', 'shtm',
    'makefile', 'cmake', 'dockerfile',
  };
  final ext = _getFileExt(item.name);
  return textExts.contains(ext.toLowerCase());
}

/// 根据扩展名判断是否为可预览的图片文件（与 CasaOS-UI filePanelMap image-viewer 一致）
bool isPreviewableImageFile(FileItem item) {
  const imageExts = {'png', 'jpg', 'jpeg', 'bmp', 'gif', 'webp', 'svg', 'tiff'};
  final ext = _getFileExt(item.name);
  return imageExts.contains(ext.toLowerCase());
}

/// 可播放的视频格式（与 CasaOS-UI video-player 一致）
bool isPreviewableVideoFile(FileItem item) {
  const videoExts = {
    'mkv', 'mp4', '3gp', 'avi', 'm2ts', 'webm', 'flv', 'vob', 'ts', 'mts',
    'mov', 'wmv', 'rm', 'rmvb', 'asf', 'mpg', 'm4v', 'mpeg', 'f4v',
  };
  final ext = _getFileExt(item.name);
  return videoExts.contains(ext.toLowerCase());
}

/// 可播放的音频格式（与 CasaOS-UI video-player 中的 audio 一致）
bool isPreviewableAudioFile(FileItem item) {
  const audioExts = {
    'aac', 'aiff', 'alac', 'amr', 'ape', 'flac', 'm4a', 'mp3', 'ogg',
    'opus', 'wma', 'wav',
  };
  final ext = _getFileExt(item.name);
  return audioExts.contains(ext.toLowerCase());
}

/// 可查看的 PDF 文档
bool isPreviewablePdfFile(FileItem item) {
  final ext = _getFileExt(item.name);
  return ext.toLowerCase() == 'pdf';
}

String _getFileExt(String name) {
  final i = name.lastIndexOf('.');
  return i >= 0 ? name.substring(i + 1) : '';
}

/// 文件预览对话框：支持文本和图片
class FileViewerDialog extends StatelessWidget {
  final FileItem item;
  final String? textContent;
  final Uint8List? imageBytes;
  final bool isSvg;
  final VoidCallback? onDownload;

  const FileViewerDialog({
    super.key,
    required this.item,
    this.textContent,
    this.imageBytes,
    this.isSvg = false,
    this.onDownload,
  });

  void _openFullscreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (ctx) => _FileViewerFullscreen(
          item: item,
          textContent: textContent,
          imageBytes: imageBytes,
          isSvg: isSvg,
          onDownload: onDownload,
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
          maxWidth: MediaQuery.of(context).size.width * 0.9,
          maxHeight: MediaQuery.of(context).size.height * 0.85,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 标题栏
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      item.name,
                      style: Theme.of(context).textTheme.titleMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.fullscreen),
                    onPressed: () => _openFullscreen(context),
                    tooltip: l10n.fullscreen,
                  ),
                  if (onDownload != null)
                    IconButton(
                      icon: const Icon(Icons.download),
                      onPressed: onDownload,
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
            // 内容区
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: _buildContent(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    if (textContent != null) {
      return SelectableText(
        textContent!,
        style: const TextStyle(
          fontFamily: 'monospace',
          fontSize: 13,
        ),
      );
    }
    if (imageBytes != null) {
      if (isSvg) {
        return SvgPicture.memory(
          imageBytes!,
          fit: BoxFit.contain,
          placeholderBuilder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
      return Image.memory(
        imageBytes!,
        fit: BoxFit.contain,
        errorBuilder: (_, __, ___) => const Icon(Icons.broken_image, size: 64),
      );
    }
    return const SizedBox.shrink();
  }
}

/// 全屏预览页（文本/图片）
class _FileViewerFullscreen extends StatefulWidget {
  final FileItem item;
  final String? textContent;
  final Uint8List? imageBytes;
  final bool isSvg;
  final VoidCallback? onDownload;

  const _FileViewerFullscreen({
    required this.item,
    this.textContent,
    this.imageBytes,
    this.isSvg = false,
    this.onDownload,
  });

  @override
  State<_FileViewerFullscreen> createState() => _FileViewerFullscreenState();
}

class _FileViewerFullscreenState extends State<_FileViewerFullscreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  Widget _buildContent() {
    if (widget.textContent != null) {
      return SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: SelectableText(
          widget.textContent!,
          style: const TextStyle(fontFamily: 'monospace', fontSize: 15),
        ),
      );
    }
    if (widget.imageBytes != null) {
      if (widget.isSvg) {
        return InteractiveViewer(
          child: SvgPicture.memory(widget.imageBytes!, fit: BoxFit.contain),
        );
      }
      return InteractiveViewer(
        child: Image.memory(
          widget.imageBytes!,
          fit: BoxFit.contain,
          errorBuilder: (_, __, ___) => const Icon(Icons.broken_image, size: 64),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Center(child: _buildContent()),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Material(
                color: Colors.black54,
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Expanded(
                      child: Text(
                        widget.item.name,
                        style: const TextStyle(color: Colors.white),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    if (widget.onDownload != null)
                      IconButton(
                        icon: const Icon(Icons.download, color: Colors.white),
                        onPressed: widget.onDownload,
                        tooltip: l10n.download,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
