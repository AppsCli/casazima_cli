/// 应用市场中的应用信息（与 CasaOS /v2/app_management/apps 返回一致）
class StoreAppInfo {
  final String id;
  final String title;
  final String? icon;
  final String? category;
  final String? tagline;
  final String? thumbnail;

  StoreAppInfo({
    required this.id,
    required this.title,
    this.icon,
    this.category,
    this.tagline,
    this.thumbnail,
  });

  /// 从 list[id] -> ComposeAppStoreInfo 结构解析
  static StoreAppInfo fromStoreEntry(String id, Map<String, dynamic> json) {
    final titleObj = json['title'];
    String title = id;
    if (titleObj is Map<String, dynamic>) {
      title = titleObj['zh_cn']?.toString() ??
          titleObj['en_us']?.toString() ??
          (titleObj['custom']?.toString().trim().isNotEmpty == true
              ? titleObj['custom'].toString().trim()
              : (titleObj.values.isNotEmpty ? titleObj.values.first.toString() : id));
    } else if (titleObj is String) {
      title = titleObj;
    }
    return StoreAppInfo(
      id: id,
      title: title,
      icon: json['icon'] as String?,
      category: json['category'] as String?,
      tagline: (json['tagline'] is Map)
          ? ((json['tagline'] as Map)['zh_cn'] ?? (json['tagline'] as Map)['en_us'])?.toString()
          : json['tagline']?.toString(),
      thumbnail: json['thumbnail'] as String?,
    );
  }
}
