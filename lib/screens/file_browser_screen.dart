import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';
import '../providers/file_provider.dart';
import '../models/file_item.dart';

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
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(isFolder ? '新建文件夹' : '新建文件'),
        content: TextField(
          controller: controller,
          decoration: InputDecoration(
            labelText: isFolder ? '文件夹名称' : '文件名称',
            border: const OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${isFolder ? '文件夹' : '文件'}创建成功'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                } catch (e) {
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('创建失败: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              }
            },
            child: const Text('创建'),
          ),
        ],
      ),
    );
  }

  void _showRenameDialog(FileItem item) {
    final controller = TextEditingController(text: item.name);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('重命名${item.isDir ? '文件夹' : '文件'}'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: '新名称',
            border: OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
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
                      const SnackBar(
                        content: Text('重命名成功'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  }
                } catch (e) {
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('重命名失败: $e'),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                }
              }
            },
            child: const Text('确定'),
          ),
        ],
      ),
    );
  }

  void _showDeleteDialog(FileItem item) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('删除${item.isDir ? '文件夹' : '文件'}'),
        content: Text('确定要删除 "${item.name}" 吗？此操作不可撤销。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('取消'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context);
              final provider = Provider.of<FileProvider>(context, listen: false);
              try {
                await provider.deleteItem(item);
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('删除成功'),
                      backgroundColor: Colors.green,
                    ),
                  );
                }
              } catch (e) {
                if (mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('删除失败: $e'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: const Text('删除'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<FileProvider>(
          builder: (context, provider, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('文件管理'),
                Text(
                  provider.currentPath,
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            );
          },
        ),
        actions: [
          Consumer<FileProvider>(
            builder: (context, provider, child) {
              return IconButton(
                icon: Icon(provider.isGridView ? Icons.view_list : Icons.grid_view),
                onPressed: () => provider.toggleView(),
                tooltip: provider.isGridView ? '列表视图' : '网格视图',
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              Provider.of<FileProvider>(context, listen: false).refresh();
            },
            tooltip: '刷新',
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'folder',
                child: Row(
                  children: [
                    Icon(Icons.folder, size: 20),
                    SizedBox(width: 8),
                    Text('新建文件夹'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'file',
                child: Row(
                  children: [
                    Icon(Icons.insert_drive_file, size: 20),
                    SizedBox(width: 8),
                    Text('新建文件'),
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
                    '错误: ${provider.error}',
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => provider.refresh(),
                    child: const Text('重试'),
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
                  const Text(
                    '文件夹为空',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
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
    );
  }

  Widget _buildGridView(FileProvider provider) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
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
              // TODO: Open file viewer
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('打开文件: ${item.name}')),
              );
            }
          },
          onLongPress: () {
            _showItemMenu(item, provider);
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
            item.isDir ? '文件夹' : item.formattedSize,
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
              // TODO: Open file viewer
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('打开文件: ${item.name}')),
              );
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
              title: const Text('重命名'),
              onTap: () {
                Navigator.pop(context);
                _showRenameDialog(item);
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete, color: Colors.red),
              title: const Text('删除', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pop(context);
                _showDeleteDialog(item);
              },
            ),
            if (!item.isDir)
              ListTile(
                leading: const Icon(Icons.download),
                title: const Text('下载'),
                onTap: () {
                  Navigator.pop(context);
                  // TODO: Implement download
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('下载功能待实现')),
                  );
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
