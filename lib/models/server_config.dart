class ServerConfig {
  final String id;
  final String name;
  final String host;
  final int port;
  final bool useHttps;
  final bool isActive;

  ServerConfig({
    required this.id,
    required this.name,
    required this.host,
    required this.port,
    this.useHttps = false,
    this.isActive = false,
  });

  String get baseUrl {
    final protocol = useHttps ? 'https' : 'http';
    return '$protocol://$host:$port';
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'host': host,
      'port': port,
      'useHttps': useHttps,
      'isActive': isActive,
    };
  }

  factory ServerConfig.fromJson(Map<String, dynamic> json) {
    return ServerConfig(
      id: json['id'] as String,
      name: json['name'] as String,
      host: json['host'] as String,
      port: json['port'] as int,
      useHttps: json['useHttps'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? false,
    );
  }

  ServerConfig copyWith({
    String? id,
    String? name,
    String? host,
    int? port,
    bool? useHttps,
    bool? isActive,
  }) {
    return ServerConfig(
      id: id ?? this.id,
      name: name ?? this.name,
      host: host ?? this.host,
      port: port ?? this.port,
      useHttps: useHttps ?? this.useHttps,
      isActive: isActive ?? this.isActive,
    );
  }
}
