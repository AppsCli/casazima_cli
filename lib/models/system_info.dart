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
  /// 多网卡列表（来自 utilization 或 hardware 的 net 数组）
  final List<NetworkInterfaceInfo>? networks;
  /// 来自 sys_disk 的存储汇总，若存在则优先用于“存储空间”展示
  final StorageSummary? storageSummaryOverride;

  HardwareInfo({
    this.cpu,
    this.memory,
    this.disks,
    this.network,
    this.networks,
    this.storageSummaryOverride,
  });

  /// 存储汇总（来自 sys_disk 或 disks 聚合），用于“存储空间”展示
  StorageSummary? get storageSummary {
    if (storageSummaryOverride != null) return storageSummaryOverride;
    if (disks != null && disks!.isNotEmpty) {
      int total = 0, used = 0;
      for (final d in disks!) {
        total += d.total;
        used += d.used;
      }
      if (total > 0) {
        return StorageSummary(
          total: total,
          used: used,
          usedPercent: used / total * 100,
        );
      }
    }
    return null;
  }

  factory HardwareInfo.fromJson(Map<String, dynamic> json) {
    StorageSummary? sysDisk;
    if (json['sys_disk'] != null) {
      final d = json['sys_disk'] as Map<String, dynamic>;
      final total = (d['size'] as num?)?.toInt() ?? 0;
      final used = (d['used'] as num?)?.toInt() ?? 0;
      if (total > 0) {
        sysDisk = StorageSummary(
          total: total,
          used: used,
          usedPercent: used / total * 100,
        );
      }
    }
    List<NetworkInterfaceInfo>? nets;
    if (json['net'] != null && json['net'] is List) {
      nets = (json['net'] as List)
          .map((e) => NetworkInterfaceInfo.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return HardwareInfo(
      cpu: json['cpu'] != null
          ? CpuInfo.fromJson(json['cpu'] as Map<String, dynamic>)
          : null,
      memory: json['memory'] != null
          ? MemoryInfo.fromJson(json['memory'] as Map<String, dynamic>)
          : (json['mem'] != null
              ? MemoryInfo.fromJson(json['mem'] as Map<String, dynamic>)
              : null),
      disks: json['disks'] != null
          ? (json['disks'] as List)
              .map((e) => DiskInfo.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
      network: json['network'] != null
          ? NetworkInfo.fromJson(json['network'] as Map<String, dynamic>)
          : null,
      networks: nets,
      storageSummaryOverride: sysDisk,
    );
  }
}

/// 存储空间汇总（总计/已用/使用率）
class StorageSummary {
  final int total;
  final int used;
  final double usedPercent;

  StorageSummary({
    required this.total,
    required this.used,
    required this.usedPercent,
  });

  String get formattedTotal => MemoryInfo._formatBytes(total);
  String get formattedUsed => MemoryInfo._formatBytes(used);
}

/// 单块网卡信息（名称 + 上下行速度，用于多网卡选择）
class NetworkInterfaceInfo {
  final String name;
  final double uploadSpeed;
  final double downloadSpeed;

  NetworkInterfaceInfo({
    required this.name,
    required this.uploadSpeed,
    required this.downloadSpeed,
  });

  factory NetworkInterfaceInfo.fromJson(Map<String, dynamic> json) {
    return NetworkInterfaceInfo(
      name: json['name'] as String? ?? '',
      uploadSpeed: (json['upload_speed'] as num?)?.toDouble() ?? 0.0,
      downloadSpeed: (json['download_speed'] as num?)?.toDouble() ?? 0.0,
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
      usagePercent: (json['used_percent'] as num?)?.toDouble() ??
          (json['percent'] as num?)?.toDouble() ?? 0.0,
      cores: json['cores'] as int? ?? json['num'] as int? ?? 0,
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
      usedPercent: (json['used_percent'] as num?)?.toDouble() ??
          (json['usedPercent'] as num?)?.toDouble() ?? 0.0,
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
