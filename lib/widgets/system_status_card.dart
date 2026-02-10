import 'package:flutter/material.dart';
import '../models/system_info.dart';

class SystemStatusCard extends StatelessWidget {
  final HardwareInfo? hardwareInfo;
  final SystemInfo? systemInfo;

  const SystemStatusCard({
    super.key,
    this.hardwareInfo,
    this.systemInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (systemInfo != null) ...[
              _buildInfoRow('版本', systemInfo!.version),
              const Divider(),
            ],
            if (hardwareInfo != null) ...[
              if (hardwareInfo!.cpu != null) ...[
                _buildCpuInfo(hardwareInfo!.cpu!),
                const Divider(),
              ],
              if (hardwareInfo!.memory != null) ...[
                _buildMemoryInfo(hardwareInfo!.memory!),
                const Divider(),
              ],
              if (hardwareInfo!.disks != null && hardwareInfo!.disks!.isNotEmpty) ...[
                _buildDiskInfo(hardwareInfo!.disks!),
                const Divider(),
              ],
              if (hardwareInfo!.network != null) ...[
                _buildNetworkInfo(hardwareInfo!.network!),
              ],
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget _buildCpuInfo(CpuInfo cpu) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'CPU',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            Text(
              '${cpu.usagePercent.toStringAsFixed(1)}%',
              style: TextStyle(
                color: _getUsageColor(cpu.usagePercent),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: cpu.usagePercent / 100,
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation<Color>(
            _getUsageColor(cpu.usagePercent),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '核心数: ${cpu.cores}',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _buildMemoryInfo(MemoryInfo memory) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '内存',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            Text(
              '${memory.usedPercent.toStringAsFixed(1)}%',
              style: TextStyle(
                color: _getUsageColor(memory.usedPercent),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: memory.usedPercent / 100,
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation<Color>(
            _getUsageColor(memory.usedPercent),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '${memory.formattedUsed} / ${memory.formattedTotal}',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _buildDiskInfo(List<DiskInfo> disks) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '磁盘',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        ...disks.map((disk) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        disk.name,
                        style: const TextStyle(fontSize: 13),
                      ),
                      Text(
                        '${disk.usedPercent.toStringAsFixed(1)}%',
                        style: TextStyle(
                          color: _getUsageColor(disk.usedPercent),
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  LinearProgressIndicator(
                    value: disk.usedPercent / 100,
                    backgroundColor: Colors.grey.shade200,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      _getUsageColor(disk.usedPercent),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${disk.formattedUsed} / ${disk.formattedTotal}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildNetworkInfo(NetworkInfo network) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '网络',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        _buildInfoRow(
          '上传速度',
          _formatSpeed(network.uploadSpeed),
        ),
        const SizedBox(height: 4),
        _buildInfoRow(
          '下载速度',
          _formatSpeed(network.downloadSpeed),
        ),
      ],
    );
  }

  Color _getUsageColor(double percent) {
    if (percent < 50) return Colors.green;
    if (percent < 80) return Colors.orange;
    return Colors.red;
  }

  String _formatSpeed(double speed) {
    if (speed < 1024) return '${speed.toStringAsFixed(1)} B/s';
    if (speed < 1024 * 1024) {
      return '${(speed / 1024).toStringAsFixed(1)} KB/s';
    }
    return '${(speed / (1024 * 1024)).toStringAsFixed(1)} MB/s';
  }
}
