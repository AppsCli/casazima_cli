class AppInfo {
  final String id;
  final String name;
  /// 用于 compose API 的应用名（appgrid 返回的 name，即 compose 项目名）
  final String? composeName;
  final String? icon;
  final String? description;
  final String? version;
  final String? state;
  final bool? isRunning;
  final String? category;
  /// appgrid 返回的类型：v2app、container 等；container 表示旧应用（待重建）
  final String? appType;

  AppInfo({
    required this.id,
    required this.name,
    this.composeName,
    this.icon,
    this.description,
    this.version,
    this.state,
    this.isRunning,
    this.category,
    this.appType,
  });

  factory AppInfo.fromJson(Map<String, dynamic> json) {
    return AppInfo(
      id: json['id']?.toString() ?? '',
      name: json['name'] as String? ?? '',
      composeName: json['compose_name'] as String?,
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      state: json['state'] as String?,
      isRunning: json['running'] as bool? ?? false,
      category: json['category'] as String?,
      appType: json['app_type'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'compose_name': composeName,
      'icon': icon,
      'description': description,
      'version': version,
      'state': state,
      'running': isRunning,
      'category': category,
      'app_type': appType,
    };
  }

  bool get isLegacyContainer => appType == 'container';
}

