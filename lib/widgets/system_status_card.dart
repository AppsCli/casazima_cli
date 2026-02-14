import 'package:flutter/material.dart';
import '../models/system_info.dart';

class SystemStatusCard extends StatelessWidget {
  final HardwareInfo? hardwareInfo;
  final SystemInfo? systemInfo;
  final int selectedNetworkIndex;
  final ValueChanged<int>? onNetworkSelected;

  const SystemStatusCard({
    super.key,
    this.hardwareInfo,
    this.systemInfo,
    this.selectedNetworkIndex = 0,
    this.onNetworkSelected,
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
              if (hardwareInfo!.storageSummary != null) ...[
                _buildStorageSummary(hardwareInfo!.storageSummary!),
                const Divider(),
              ],
              if (hardwareInfo!.disks != null && hardwareInfo!.disks!.isNotEmpty) ...[
                _buildDiskInfo(hardwareInfo!.disks!),
                const Divider(),
              ],
              if (hardwareInfo!.networks != null && hardwareInfo!.networks!.isNotEmpty) ...[
                _buildNetworkSectionWithDropdown(context),
              ] else if (hardwareInfo!.network != null) ...[
                _buildNetworkInfoFromSingle(hardwareInfo!.network!),
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
              'CPU 占用率',
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
              '内存 (RAM)',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            Text(
              '${memory.usedPercent.toStringAsFixed(1)}% 占用率',
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
          '已用 ${memory.formattedUsed} / 总量 ${memory.formattedTotal}',
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }

  Widget _buildStorageSummary(StorageSummary storage) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '存储空间',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '总计 ${storage.formattedTotal}',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
            ),
            Text(
              '已用 ${storage.formattedUsed} · ${storage.usedPercent.toStringAsFixed(1)}%',
              style: TextStyle(
                fontSize: 12,
                color: _getUsageColor(storage.usedPercent),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: (storage.usedPercent / 100).clamp(0.0, 1.0),
            minHeight: 10,
            backgroundColor: Colors.grey.shade200,
            valueColor: AlwaysStoppedAnimation<Color>(
              _getUsageColor(storage.usedPercent),
            ),
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

  Widget _buildNetworkSectionWithDropdown(BuildContext context) {
    final nets = hardwareInfo!.networks!;
    final idx = selectedNetworkIndex.clamp(0, nets.length - 1);
    final current = nets[idx];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '网络状态',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
            if (onNetworkSelected != null && nets.length > 1)
              DropdownButton<int>(
                value: idx,
                isDense: true,
                underline: const SizedBox.shrink(),
                items: List.generate(nets.length, (i) => DropdownMenuItem<int>(value: i, child: Text(nets[i].name, overflow: TextOverflow.ellipsis))),
                onChanged: (v) {
                  if (v != null) onNetworkSelected!(v);
                },
              )
            else
              Text(
                current.name,
                style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
                overflow: TextOverflow.ellipsis,
              ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.arrow_upward, size: 16, color: Colors.blue.shade700),
            const SizedBox(width: 4),
            Text(_formatSpeed(current.uploadSpeed), style: TextStyle(fontSize: 13, color: Colors.grey.shade700)),
            const SizedBox(width: 16),
            Icon(Icons.arrow_downward, size: 16, color: Colors.green.shade700),
            const SizedBox(width: 4),
            Text(_formatSpeed(current.downloadSpeed), style: TextStyle(fontSize: 13, color: Colors.grey.shade700)),
          ],
        ),
      ],
    );
  }

  Widget _buildNetworkInfoFromSingle(NetworkInfo network) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '网络状态',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.arrow_upward, size: 16, color: Colors.blue.shade700),
            const SizedBox(width: 4),
            Text(_formatSpeed(network.uploadSpeed), style: TextStyle(fontSize: 13, color: Colors.grey.shade700)),
            const SizedBox(width: 16),
            Icon(Icons.arrow_downward, size: 16, color: Colors.green.shade700),
            const SizedBox(width: 4),
            Text(_formatSpeed(network.downloadSpeed), style: TextStyle(fontSize: 13, color: Colors.grey.shade700)),
          ],
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
