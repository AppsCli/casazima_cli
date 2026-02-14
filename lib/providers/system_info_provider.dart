import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/system_info.dart';
import '../services/api_service.dart';

const String _keySelectedNetworkIndex = 'selected_network_index';

class SystemInfoProvider with ChangeNotifier {
  final ApiService _apiService = ApiService();

  SystemInfo? _systemInfo;
  HardwareInfo? _hardwareInfo;
  bool _isLoading = false;
  String? _error;
  int _selectedNetworkIndex = 0;
  List<Map<String, dynamic>>? _lastNetSample;
  Timer? _utilizationTimer;

  SystemInfo? get systemInfo => _systemInfo;
  HardwareInfo? get hardwareInfo => _hardwareInfo;
  bool get isLoading => _isLoading;
  String? get error => _error;
  int get selectedNetworkIndex => _selectedNetworkIndex;

  /// 当前选中的网卡信息（多网卡时取 networks[selectedNetworkIndex]，否则取 network）
  NetworkInterfaceInfo? get selectedNetworkInterface {
    final h = _hardwareInfo;
    if (h == null) return null;
    if (h.networks != null && h.networks!.isNotEmpty) {
      final i = _selectedNetworkIndex.clamp(0, h.networks!.length - 1);
      return h.networks![i];
    }
    if (h.network != null) {
      return NetworkInterfaceInfo(
        name: 'default',
        uploadSpeed: h.network!.uploadSpeed,
        downloadSpeed: h.network!.downloadSpeed,
      );
    }
    return null;
  }

  Future<void> loadSelectedNetworkIndex() async {
    final prefs = await SharedPreferences.getInstance();
    final i = prefs.getInt(_keySelectedNetworkIndex);
    if (i != null) {
      _selectedNetworkIndex = i;
      notifyListeners();
    }
  }

  Future<void> setSelectedNetworkIndex(int index) async {
    if (_selectedNetworkIndex == index) return;
    _selectedNetworkIndex = index;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keySelectedNetworkIndex, index);
    notifyListeners();
  }

  Future<void> loadSystemInfo() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _systemInfo = await _apiService.getVersion();
      _hardwareInfo = await _apiService.getHardwareInfo();
      await loadSelectedNetworkIndex();
      _lastNetSample = null;
      await _mergeUtilizationOnce();
      _startUtilizationPolling();
    } catch (e) {
      _error = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _utilizationTimer?.cancel();
    _utilizationTimer = null;
    super.dispose();
  }

  void _startUtilizationPolling() {
    _utilizationTimer?.cancel();
    _utilizationTimer = Timer.periodic(const Duration(seconds: 2), (_) async {
      await _mergeUtilizationOnce();
    });
  }

  void stopUtilizationPolling() {
    _utilizationTimer?.cancel();
    _utilizationTimer = null;
  }

  Future<void> _mergeUtilizationOnce() async {
    try {
      final data = await _apiService.getUtilization();
      _mergeUtilizationData(data);
      notifyListeners();
    } catch (_) {
      // 忽略单次失败，保留已有 hardwareInfo
    }
  }

  void _mergeUtilizationData(Map<String, dynamic> data) {
    CpuInfo? cpu;
    if (data['cpu'] != null) {
      final c = data['cpu'] as Map<String, dynamic>;
      cpu = CpuInfo.fromJson(c);
    }
    MemoryInfo? memory;
    if (data['mem'] != null) {
      memory = MemoryInfo.fromJson(data['mem'] as Map<String, dynamic>);
    }
    StorageSummary? sysDisk;
    if (data['sys_disk'] != null) {
      final d = data['sys_disk'] as Map<String, dynamic>;
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
    List<NetworkInterfaceInfo>? networks;
    if (data['net'] != null && data['net'] is List) {
      final netList = data['net'] as List;
      final current = netList
          .map((e) => e as Map<String, dynamic>)
          .map((e) => <String, dynamic>{
                'name': e['name'],
                'bytesSent': (e['bytesSent'] as num?)?.toInt() ?? 0,
                'bytesRecv': (e['bytesRecv'] as num?)?.toInt() ?? 0,
                'time': (e['time'] as num?)?.toDouble() ?? 0.0,
              })
          .toList();
      networks = _computeNetworkSpeeds(current);
      _lastNetSample = current;
    }
    final prev = _hardwareInfo;
    _hardwareInfo = HardwareInfo(
      cpu: cpu ?? prev?.cpu,
      memory: memory ?? prev?.memory,
      disks: prev?.disks,
      network: prev?.network,
      networks: networks ?? prev?.networks,
      storageSummaryOverride: sysDisk ?? prev?.storageSummaryOverride,
    );
  }

  List<NetworkInterfaceInfo> _computeNetworkSpeeds(
      List<Map<String, dynamic>> current) {
    final prev = _lastNetSample;
    final result = <NetworkInterfaceInfo>[];
    for (var i = 0; i < current.length; i++) {
      final c = current[i];
      final name = c['name'] as String? ?? '';
      double up = 0, down = 0;
      if (prev != null &&
          i < prev.length &&
          (prev[i]['name'] as String? ?? '') == name) {
        final tCur = (c['time'] as num?)?.toDouble() ?? 0.0;
        final tPrev = (prev[i]['time'] as num?)?.toDouble() ?? 0.0;
        final dt = tCur - tPrev;
        if (dt > 0) {
          final sentDelta =
              ((c['bytesSent'] as num?)?.toInt() ?? 0) -
                  ((prev[i]['bytesSent'] as num?)?.toInt() ?? 0);
          final recvDelta =
              ((c['bytesRecv'] as num?)?.toInt() ?? 0) -
                  ((prev[i]['bytesRecv'] as num?)?.toInt() ?? 0);
          up = sentDelta / dt;
          down = recvDelta / dt;
        }
      }
      result.add(NetworkInterfaceInfo(
        name: name,
        uploadSpeed: up,
        downloadSpeed: down,
      ));
    }
    return result;
  }

  Future<void> refreshHardwareInfo() async {
    try {
      _hardwareInfo = await _apiService.getHardwareInfo();
      _lastNetSample = null;
      await _mergeUtilizationOnce();
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      notifyListeners();
    }
  }
}
