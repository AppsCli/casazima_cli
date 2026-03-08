import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import '../models/file_item.dart';
import '../l10n/app_localizations.dart';
import '../utils/video_file_utils.dart';

/// 视频播放对话框（流式播放，与 CasaOS-UI VideoPlayer 一致使用 /v3/file?path=...&token=...）
/// 网络播放失败时可调用 onDownloadAndPlay 下载后本地播放
class VideoViewerDialog extends StatefulWidget {
  final FileItem item;
  final String streamingUrl;
  final Map<String, String>? httpHeaders;
  final VoidCallback? onDownload;
  /// 网络播放失败时，调用此方法下载到临时文件并返回路径，用于 fallback 播放
  final Future<String?> Function()? onDownloadAndPlay;

  const VideoViewerDialog({
    super.key,
    required this.item,
    required this.streamingUrl,
    this.httpHeaders,
    this.onDownload,
    this.onDownloadAndPlay,
  });

  @override
  State<VideoViewerDialog> createState() => _VideoViewerDialogState();
}

class _VideoViewerDialogState extends State<VideoViewerDialog> {
  late VideoPlayerController _controller;
  String? _error;
  bool _isDownloading = false;

  void _initFromNetwork() {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.streamingUrl),
      httpHeaders: widget.httpHeaders ?? {},
    )
      ..initialize().then((_) {
        if (mounted) setState(() {});
      }).catchError((e) {
        if (mounted) setState(() => _error = e.toString());
      });
  }

  Future<void> _tryDownloadAndPlay() async {
    if (widget.onDownloadAndPlay == null || _isDownloading || kIsWeb) {
      return;
    }
    setState(() {
      _error = null;
      _isDownloading = true;
    });
    try {
      final path = await widget.onDownloadAndPlay!();
      if (!mounted) {
        return;
      }
      if (path != null && path.isNotEmpty) {
        _controller.dispose();
        _controller = createVideoControllerFromFile(path);
        setState(() {
          _error = null;
          _isDownloading = false;
        });
        _controller.initialize().then((_) {
          if (mounted) {
            setState(() {});
          }
        }).catchError((e) {
          if (mounted) {
            setState(() {
              _error = e.toString();
            });
          }
        });
      } else {
        if (mounted) {
          setState(() {
            _error = 'Download failed or cancelled';
            _isDownloading = false;
          });
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
          _isDownloading = false;
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _initFromNetwork();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _openFullscreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (ctx) => _VideoViewerFullscreen(
          item: widget.item,
          streamingUrl: widget.streamingUrl,
          httpHeaders: widget.httpHeaders,
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
                  IconButton(
                    icon: const Icon(Icons.fullscreen),
                    onPressed: () => _openFullscreen(context),
                    tooltip: l10n.fullscreen,
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
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (_isDownloading) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(AppLocalizations.of(context)!.downloadingForPlayback),
          ],
        ),
      );
    }
    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text(_error!, textAlign: TextAlign.center),
              if (widget.onDownloadAndPlay != null && !kIsWeb) ...[
                const SizedBox(height: 24),
                FilledButton.icon(
                  icon: const Icon(Icons.download),
                  label: Text(AppLocalizations.of(context)!.downloadAndPlay),
                  onPressed: _tryDownloadAndPlay,
                ),
              ],
            ],
          ),
        ),
      );
    }
    if (!_controller.value.isInitialized) {
      return const Center(child: CircularProgressIndicator());
    }
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: Stack(
        alignment: Alignment.center,
        children: [
          VideoPlayer(_controller),
          Center(
            child: IconButton(
              icon: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                size: 64,
              ),
              onPressed: () {
                setState(() {
                  _controller.value.isPlaying
                      ? _controller.pause()
                      : _controller.play();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

/// 全屏视频播放
class _VideoViewerFullscreen extends StatefulWidget {
  final FileItem item;
  final String streamingUrl;
  final Map<String, String>? httpHeaders;
  final VoidCallback? onDownload;

  const _VideoViewerFullscreen({
    required this.item,
    required this.streamingUrl,
    this.httpHeaders,
    this.onDownload,
  });

  @override
  State<_VideoViewerFullscreen> createState() => _VideoViewerFullscreenState();
}

class _VideoViewerFullscreenState extends State<_VideoViewerFullscreen> {
  late VideoPlayerController _controller;
  String? _error;

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.streamingUrl),
      httpHeaders: widget.httpHeaders ?? {},
    )
      ..initialize().then((_) {
        if (mounted) {
          setState(() {});
          _controller.play();
        }
      }).catchError((e) {
        if (mounted) setState(() => _error = e.toString());
      });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          if (_error != null)
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.error_outline, size: 48, color: Colors.red),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(_error!, textAlign: TextAlign.center, style: const TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            )
          else if (_controller.value.isInitialized)
            Center(
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
            )
          else
            const Center(child: CircularProgressIndicator(color: Colors.white)),
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
                  if (_controller.value.isInitialized)
                    IconButton(
                      icon: Icon(
                        _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
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
    );
  }
}
