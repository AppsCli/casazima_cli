/// NAS 类型：CasaOS 与 ZimaOS 使用不同的 API 接口
enum NasType {
  casaos,
  zimaos,
}

extension NasTypeExtension on NasType {
  String get displayName {
    switch (this) {
      case NasType.casaos:
        return 'CasaOS';
      case NasType.zimaos:
        return 'ZimaOS';
    }
  }
}

class ServerConfig {
  final String id;
  final String name;
  final String host;
  final int port;
  final bool useHttps;
  final bool isActive;
  final NasType nasType;

  ServerConfig({
    required this.id,
    required this.name,
    required this.host,
    required this.port,
    this.useHttps = false,
    this.isActive = false,
    this.nasType = NasType.casaos,
  });

  /// CasaOS 默认根路径 /DATA，ZimaOS 默认 /media/ZimaOS-HD
  String get defaultFilesPath {
    switch (nasType) {
      case NasType.casaos:
        return '/DATA';
      case NasType.zimaos:
        return '/media/ZimaOS-HD';
    }
  }

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
      'nasType': nasType.name,
    };
  }

  factory ServerConfig.fromJson(Map<String, dynamic> json) {
    NasType nasType = NasType.casaos;
    final nt = json['nasType'] as String?;
    if (nt == 'zimaos') {
      nasType = NasType.zimaos;
    }
    return ServerConfig(
      id: json['id'] as String,
      name: json['name'] as String,
      host: json['host'] as String,
      port: json['port'] as int,
      useHttps: json['useHttps'] as bool? ?? false,
      isActive: json['isActive'] as bool? ?? false,
      nasType: nasType,
    );
  }

  ServerConfig copyWith({
    String? id,
    String? name,
    String? host,
    int? port,
    bool? useHttps,
    bool? isActive,
    NasType? nasType,
  }) {
    return ServerConfig(
      id: id ?? this.id,
      name: name ?? this.name,
      host: host ?? this.host,
      port: port ?? this.port,
      useHttps: useHttps ?? this.useHttps,
      isActive: isActive ?? this.isActive,
      nasType: nasType ?? this.nasType,
    );
  }
}
