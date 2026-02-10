class FileItem {
  final String name;
  final String path;
  final bool isDir;
  final int? size;
  final String? date;
  final bool? write;
  final String? extensions;

  FileItem({
    required this.name,
    required this.path,
    required this.isDir,
    this.size,
    this.date,
    this.write,
    this.extensions,
  });

  factory FileItem.fromJson(Map<String, dynamic> json) {
    return FileItem(
      name: json['name'] as String? ?? '',
      path: json['path'] as String? ?? '',
      isDir: json['is_dir'] as bool? ?? false,
      size: json['size'] as int?,
      date: json['date'] as String?,
      write: json['write'] as bool?,
      extensions: json['extensions'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'path': path,
      'is_dir': isDir,
      'size': size,
      'date': date,
      'write': write,
      'extensions': extensions,
    };
  }

  String get formattedSize {
    if (size == null) return '-';
    if (size! < 1024) return '$size B';
    if (size! < 1024 * 1024) return '${(size! / 1024).toStringAsFixed(1)} KB';
    if (size! < 1024 * 1024 * 1024) {
      return '${(size! / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(size! / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}

class FolderListResponse {
  final List<FileItem> content;

  FolderListResponse({required this.content});

  factory FolderListResponse.fromJson(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>;
    final content = data['content'] as List;
    return FolderListResponse(
      content: content
          .map((e) => FileItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
