import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab2Screen extends StatelessWidget {
  const Tab2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final list = [
      {'t': 'Morning Clarity Awakening', 'd': '10 Mins • Focus', 'tag': 'Popular'},
      {'t': 'Stress & Cortisol Release', 'd': '15 Mins • Anxiety', 'tag': 'Calm'},
      {'t': 'Deep Restful Sleep Flow', 'd': '20 Mins • Evening', 'tag': 'Sleep'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Win • Guided Meditation')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: list.length,
        itemBuilder: (context, i) {
          final s = list[i];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: AppTheme.primaryColor.withValues(alpha: 0.2),
                  child: const Icon(Icons.self_improvement, color: AppTheme.primaryColor),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(s['t']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15), maxLines: 1, overflow: TextOverflow.ellipsis),
                      Text(s['d']!, style: const TextStyle(color: Colors.white60, fontSize: 12)),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.play_circle_filled, color: AppTheme.primaryColor, size: 36),
                  onPressed: () => RoutingService.openRegistrationUrl(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

