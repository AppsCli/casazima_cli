import 'package:flutter/material.dart';
import '../models/app_info.dart';

class AppGrid extends StatelessWidget {
  final List<AppInfo> apps;

  const AppGrid({super.key, required this.apps});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.2,
      ),
      itemCount: apps.length,
      itemBuilder: (context, index) {
        final app = apps[index];
        return _AppCard(app: app);
      },
    );
  }
}

class _AppCard extends StatelessWidget {
  final AppInfo app;

  const _AppCard({required this.app});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: InkWell(
        onTap: () {
          // TODO: Navigate to app details
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('打开应用: ${app.name}')),
          );
        },
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (app.icon != null)
                Image.network(
                  app.icon!,
                  width: 48,
                  height: 48,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.apps, size: 48);
                  },
                )
              else
                const Icon(Icons.apps, size: 48),
              const SizedBox(height: 8),
              Text(
                app.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              if (app.isRunning != null && app.isRunning!)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '运行中',
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.green.shade800,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
