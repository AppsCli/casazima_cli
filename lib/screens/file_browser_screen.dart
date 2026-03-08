import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../l10n/app_localizations.dart';
import '../providers/file_provider.dart';
import '../models/file_item.dart';
import '../widgets/file_viewer_dialog.dart';
import '../widgets/video_viewer_dialog.dart';
import '../widgets/audio_viewer_dialog.dart';
import '../widgets/pdf_viewer_dialog.dart';

class FileBrowserScreen extends StatefulWidget {
  final String? initialPath;
  
  const FileBrowserScreen({super.key, this.initialPath});

  @override
  State<FileBrowserScreen> createState() => _FileBrowserScreenState();
}

class _FileBrowserScreenState extends State<FileBrowserScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final provider = Provider.of<FileProvider>(context, listen: false);
      provider.loadFolder(widget.initialPath ?? '/DATA');
    });
  }

  void _showCreateDialog({required bool isFolder}) {
    final controller = TextEditingController();
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(isFolder ? l10n.newFolder : l10n.newFile),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: isFolder ? l10n.folderName : l10n.fileName,
            border: const OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              if (controller.text.isNotEmpty) {
                Navigator.pop(context);
                final provider = Provider.of<FileProvider>(context, listen: false);
                try {
                  if (isFolder) {
                    await provider.createFolder(controller.text);
                  } else {
                    await provider.createFile(controller.text);
                  }
                  if (mounted) {
                    final l = AppLocalizations.of(context)!;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(isFolder ? l.folderCreated : l.fileCreated),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                } catch (e) {
                  if (mounted) {
                    final l = AppLocalizations.of(context)!;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(l.createFailed(e.toString())),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              }
            },
            child: Text(l10n.create),
          ),
        ],
      ),
    );
  }

  void _showRenameDialog(FileItem item) {
    final controller = TextEditingController(text: item.name);
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(item.isDir ? l10n.renameFolder : l10n.renameFile),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: l10n.newName,
            border: const OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              if (controller.text.isNotEmpty && controller.text != item.name) {
                Navigator.pop(context);
                final provider = Provider.of<FileProvider>(context, listen: false);
                try {
                  await provider.renameItem(item, controller.text);
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppLocalizations.of(context)!.renameSuccess),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                } catch (e) {
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(AppLocalizations.of(context)!.renameFailed(e.toString())),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              }
            },
            child: Text(l10n.ok),
          ),
        ],
      ),
    );
  }

  Future<void> _openFile(FileItem item, FileProvider provider) async {
    final l10n = AppLocalizations.of(context)!;
    if (item.isDir) return;

    if (isPreviewableTextFile(item)) {
      try {
        final content = await provider.getFileContent(item.path);
        if (!mounted) return;
        showDialog(
          context: context,
          builder: (ctx) => FileViewerDialog(
            item: item,
            textContent: content,
            onDownload: () {
              Navigator.pop(ctx);
              _doDownload(item, provider);
            },
          ),
        );
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.openFailed(e.toString())), backgroundColor: Colors.red),
          );
        }
      }
      return;
    }

    if (isPreviewableImageFile(item)) {
      try {
        final bytes = await provider.downloadFileAsBytes(item.path);
        if (!mounted) return;
        final isSvg = item.name.toLowerCase().endsWith('.svg');
        showDialog(
          context: context,
          builder: (ctx) => FileViewerDialog(
            item: item,
            imageBytes: bytes,
            isSvg: isSvg,
            onDownload: () {
              Navigator.pop(ctx);
              _doDownload(item, provider);
            },
          ),
        );
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.openFailed(e.toString())), backgroundColor: Colors.red),
          );
        }
      }
      return;
    }

    if (isPreviewableVideoFile(item) || isPreviewableAudioFile(item)) {
      try {
        final streaming = await provider.getFileStreamingUrl(item.path);
        if (!mounted) return;
        debugPrint('[视频/音频预览] URL: ${streaming.url}');
        if (isPreviewableVideoFile(item)) {
          showDialog(
            context: context,
            builder: (ctx) => VideoViewerDialog(
              item: item,
              streamingUrl: streaming.url,
              httpHeaders: streaming.headers,
              onDownload: () {
                Navigator.pop(ctx);
                _doDownload(item, provider);
              },
              onDownloadAndPlay: () async {
                try {
                  return await provider.downloadVideoToTemp(item.path, item.name);
                } catch (e) {
                  debugPrint('[视频预览] 下载失败: $e');
                  return null;
                }
              },
            ),
          );
        } else {
          showDialog(
            context: context,
            builder: (ctx) => AudioViewerDialog(
              item: item,
              streamingUrl: streaming.url,
              httpHeaders: streaming.headers,
              onDownload: () {
                Navigator.pop(ctx);
                _doDownload(item, provider);
              },
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.openFailed(e.toString())), backgroundColor: Colors.red),
          );
        }
      }
      return;
    }

    if (isPreviewablePdfFile(item)) {
      try {
        final bytes = await provider.downloadFileAsBytes(item.path);
        if (!mounted) return;
        showDialog(
          context: context,
          builder: (ctx) => PdfViewerDialog(
            item: item,
            bytes: bytes,
            onDownload: () {
              Navigator.pop(ctx);
              _doDownload(item, provider);
            },
          ),
        );
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.openFailed(e.toString())), backgroundColor: Colors.red),
          );
        }
      }
      return;
    }

    // 不可预览的文件：直接下载
    _doDownload(item, provider);
  }

  Future<void> _doDownload(FileItem item, FileProvider provider) async {
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.downloadPreparing)),
    );
    try {
      final path = await provider.downloadFile(item);
      if (!mounted) return;
      if (path != null && path.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.downloadSuccess), backgroundColor: Colors.green),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.downloadCancelled)),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.operationFailed(e.toString())), backgroundColor: Colors.red),
        );
      }
    }
  }

  void _showDeleteDialog(FileItem item) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(item.isDir ? l10n.deleteFolder : l10n.deleteFile),
        content: Text(l10n.deleteConfirm(item.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              final provider = Provider.of<FileProvider>(context, listen: false);
              try {
                await provider.deleteItem(item);
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(AppLocalizations.of(context)!.deleteSuccess),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              } catch (e) {
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(AppLocalizations.of(context)!.deleteFailed(e.toString())),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
  }

  void _goToPreviousPage() {
    if (context.canPop()) {
      context.pop();
    } else {
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Consumer<FileProvider>(
      builder: (context, provider, _) {
        return PopScope(
          canPop: !provider.hasParentDirectory,
          onPopInvokedWithResult: (didPop, result) {
            if (!didPop && provider.hasParentDirectory) {
              provider.navigateUp();
            }
          },
          child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: _goToPreviousPage,
          tooltip: l10n.back,
        ),
        title: Consumer<FileProvider>(
          builder: (context, provider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(l10n.files),
                Text(
                  provider.currentPath,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            );
          },
        ),
        actions: [
          if (provider.hasParentDirectory)
            IconButton(
              icon: const Icon(Icons.subdirectory_arrow_left),
              onPressed: () => provider.navigateUp(),
              tooltip: l10n.parentDirectory,
            ),
          Consumer<FileProvider>(
            builder: (context, provider, child) {
              return IconButton(
                icon: Icon(provider.isGridView ? Icons.view_list : Icons.grid_view),
                onPressed: () => provider.toggleView(),
                tooltip: provider.isGridView ? l10n.listView : l10n.gridView,
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              Provider.of<FileProvider>(context, listen: false).refresh();
            },
            tooltip: l10n.refresh,
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'folder',
                child: Row(
                  children: [
                    const Icon(Icons.folder, size: 20),
                    const SizedBox(width: 8),
                    Text(l10n.newFolder),
                  ],
                ),
              ),
              PopupMenuItem(
                value: 'file',
                child: Row(
                  children: [
                    const Icon(Icons.insert_drive_file, size: 20),
                    const SizedBox(width: 8),
                    Text(l10n.newFile),
                  ],
                ),
              ),
            ],
            onSelected: (value) {
              _showCreateDialog(isFolder: value == 'folder');
            },
          ),
        ],
      ),
      body: Consumer<FileProvider>(
        builder: (context, provider, child) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.error != null) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.error_outline, size: 64, color: Colors.red),
                  const SizedBox(height: 16),
                  Text(
                    '${l10n.error}: ${provider.error}',
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => provider.refresh(),
                    child: Text(l10n.retry),
                  ),
                ],
              ),
            );
          }

          if (provider.files.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.folder_open, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text(
                    l10n.folderEmpty,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              // Breadcrumb
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                color: Colors.grey.shade100,
                child: Consumer<FileProvider>(
                  builder: (context, provider, child) {
                    final parts = provider.currentPath
                        .split('/')
                        .where((p) => p.isNotEmpty)
                        .toList();
                    return Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: provider.currentPath == '/' ||
                                  provider.currentPath.isEmpty
                              ? null
                              : () => provider.navigateUp(),
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () => provider.navigateTo('/'),
                                  child: const Text(
                                    '/',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                ...parts.asMap().entries.map((entry) {
                                  final index = entry.key;
                                  final part = entry.value;
                                  final path = '/${parts.sublist(0, index + 1).join('/')}';
                                  return Row(
                                    children: [
                                      const Text(' / '),
                                      GestureDetector(
                                        onTap: () => provider.navigateTo(path),
                                        child: Text(
                                          part,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // File list
              Expanded(
                child: provider.isGridView
                    ? _buildGridView(provider)
                    : _buildListView(provider),
              ),
            ],
          );
        },
      ),
    ),
    );
  },
  );
  }

  /// 桌面端根据宽度自适应每行数量，使每项大小适中
  static const double _minCellWidth = 140.0;

  Widget _buildGridView(FileProvider provider) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final count = (width / _minCellWidth).floor().clamp(2, 12);
        return GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: count,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.8,
          ),
          itemCount: provider.files.length,
          itemBuilder: (context, index) {
            final item = provider.files[index];
            return _FileItemCard(
              item: item,
              onTap: () {
                if (item.isDir) {
                  provider.navigateTo(item.path);
                } else {
                  _openFile(item, provider);
                }
              },
              onLongPress: () {
                _showItemMenu(item, provider);
              },
            );
          },
        );
      },
    );
  }

  Widget _buildListView(FileProvider provider) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: provider.files.length,
      itemBuilder: (context, index) {
        final item = provider.files[index];
        return ListTile(
          leading: Icon(
            item.isDir ? Icons.folder : Icons.insert_drive_file,
            color: item.isDir ? Colors.blue : Colors.grey,
          ),
          title: Text(item.name),
          subtitle: Text(
            item.isDir ? AppLocalizations.of(context)!.folder : item.formattedSize,
          ),
          trailing: item.date != null
              ? Text(
                  item.date!,
                  style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                )
              : null,
          onTap: () {
            if (item.isDir) {
              provider.navigateTo(item.path);
            } else {
              _openFile(item, provider);
            }
          },
          onLongPress: () {
            _showItemMenu(item, provider);
          },
        );
      },
    );
  }

  void _showItemMenu(FileItem item, FileProvider provider) {
    showModalBottomSheet(
      context: context,
      builder: (context) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.drive_file_rename_outline),
              title: Text(AppLocalizations.of(context)!.rename),
              onTap: () {
                Navigator.pop(context);
                _showRenameDialog(item);
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete, color: Colors.red),
              title: Text(AppLocalizations.of(context)!.delete, style: const TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pop(context);
                _showDeleteDialog(item);
              },
            ),
            if (!item.isDir)
              ListTile(
                leading: const Icon(Icons.download),
                title: Text(AppLocalizations.of(context)!.download),
                onTap: () {
                  Navigator.pop(context);
                  _doDownload(item, provider);
                },
              ),
          ],
        ),
      ),
    );
  }
}

class _FileItemCard extends StatelessWidget {
  final FileItem item;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const _FileItemCard({
    required this.item,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                item.isDir ? Icons.folder : Icons.insert_drive_file,
                size: 48,
                color: item.isDir ? Colors.blue : Colors.grey,
              ),
              const SizedBox(height: 8),
              Text(
                item.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (!item.isDir) ...[
                const SizedBox(height: 4),
                Text(
                  item.formattedSize,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
