class SystemInfo {
  final String version;
  final HardwareInfo? hardware;

  SystemInfo({
    required this.version,
    this.hardware,
  });

  factory SystemInfo.fromJson(Map<String, dynamic> json) {
    return SystemInfo(
      version: json['current_version'] as String? ?? '',
      hardware: json['hardware'] != null
          ? HardwareInfo.fromJson(json['hardware'] as Map<String, dynamic>)
          : null,
    );
  }
}

class HardwareInfo {
  final CpuInfo? cpu;
  final MemoryInfo? memory;
  final List<DiskInfo>? disks;
  final NetworkInfo? network;

  HardwareInfo({
    this.cpu,
    this.memory,
    this.disks,
    this.network,
  });

  factory HardwareInfo.fromJson(Map<String, dynamic> json) {
    return HardwareInfo(
      cpu: json['cpu'] != null
          ? CpuInfo.fromJson(json['cpu'] as Map<String, dynamic>)
          : null,
      memory: json['memory'] != null
          ? MemoryInfo.fromJson(json['memory'] as Map<String, dynamic>)
          : null,
      disks: json['disks'] != null
          ? (json['disks'] as List)
              .map((e) => DiskInfo.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      network: json['network'] != null
          ? NetworkInfo.fromJson(json['network'] as Map<String, dynamic>)
          : null,
    );
  }
}

class CpuInfo {
  final double usagePercent;
  final int cores;

  CpuInfo({
    required this.usagePercent,
    required this.cores,
  });

  factory CpuInfo.fromJson(Map<String, dynamic> json) {
    return CpuInfo(
      usagePercent: (json['used_percent'] as num?)?.toDouble() ?? 0.0,
      cores: json['cores'] as int? ?? 0,
    );
  }
}

class MemoryInfo {
  final int total;
  final int used;
  final int free;
  final double usedPercent;

  MemoryInfo({
    required this.total,
    required this.used,
    required this.free,
    required this.usedPercent,
  });

  factory MemoryInfo.fromJson(Map<String, dynamic> json) {
    return MemoryInfo(
      total: json['total'] as int? ?? 0,
      used: json['used'] as int? ?? 0,
      free: json['free'] as int? ?? 0,
      usedPercent: (json['used_percent'] as num?)?.toDouble() ?? 0.0,
    );
  }

  String get formattedTotal => _formatBytes(total);
  String get formattedUsed => _formatBytes(used);
  String get formattedFree => _formatBytes(free);

  static String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}

class DiskInfo {
  final String name;
  final int total;
  final int used;
  final int free;
  final double usedPercent;

  DiskInfo({
    required this.name,
    required this.total,
    required this.used,
    required this.free,
    required this.usedPercent,
  });

  factory DiskInfo.fromJson(Map<String, dynamic> json) {
    return DiskInfo(
      name: json['name'] as String? ?? '',
      total: json['total'] as int? ?? 0,
      used: json['used'] as int? ?? 0,
      free: json['free'] as int? ?? 0,
      usedPercent: (json['used_percent'] as num?)?.toDouble() ?? 0.0,
    );
  }

  String get formattedTotal => MemoryInfo._formatBytes(total);
  String get formattedUsed => MemoryInfo._formatBytes(used);
  String get formattedFree => MemoryInfo._formatBytes(free);
}

class NetworkInfo {
  final double uploadSpeed;
  final double downloadSpeed;

  NetworkInfo({
    required this.uploadSpeed,
    required this.downloadSpeed,
  });

  factory NetworkInfo.fromJson(Map<String, dynamic> json) {
    return NetworkInfo(
      uploadSpeed: (json['upload_speed'] as num?)?.toDouble() ?? 0.0,
      downloadSpeed: (json['download_speed'] as num?)?.toDouble() ?? 0.0,
    );
  }
}
