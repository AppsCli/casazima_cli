class AppInfo {
  final String id;
  final String name;
  final String? icon;
  final String? description;
  final String? version;
  final String? state;
  final bool? isRunning;
  final String? category;

  AppInfo({
    required this.id,
    required this.name,
    this.icon,
    this.description,
    this.version,
    this.state,
    this.isRunning,
    this.category,
  });

  factory AppInfo.fromJson(Map<String, dynamic> json) {
    return AppInfo(
      id: json['id']?.toString() ?? '',
      name: json['name'] as String? ?? '',
      icon: json['icon'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      state: json['state'] as String?,
      isRunning: json['running'] as bool? ?? false,
      category: json['category'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'description': description,
      'version': version,
      'state': state,
      'running': isRunning,
      'category': category,
    };
  }
}
