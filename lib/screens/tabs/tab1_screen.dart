import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';
import '../../services/routing_service.dart';


class Tab1Screen extends StatefulWidget {
  const Tab1Screen({super.key});
  @override
  State<Tab1Screen> createState() => _Tab1ScreenState();
}

class _Tab1ScreenState extends State<Tab1Screen> {
  bool _active = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Win • DailyZen'),
        actions: [
          IconButton(
            icon: const Icon(Icons.wb_twilight, color: AppTheme.primaryColor),
            onPressed: () => RoutingService.openRegistrationUrl(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 20),
            decoration: BoxDecoration(
              gradient: RadialGradient(
                colors: [AppTheme.primaryColor.withValues(alpha: 0.25), AppTheme.surfaceColor],
                radius: 0.9,
              ),
              borderRadius: BorderRadius.circular(28),
              border: Border.all(color: AppTheme.primaryColor.withValues(alpha: 0.3)),
            ),
            child: Column(
              children: [
                const Text('4-7-8 CALMING BREATH', style: TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.bold, fontSize: 12, letterSpacing: 1.5)),
                const SizedBox(height: 24),
                Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppTheme.primaryColor, width: 4),
                    color: AppTheme.primaryColor.withValues(alpha: 0.15),
                  ),
                  child: const Center(
                    child: Text('INHALE', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 2)),
                  ),
                ),
                const SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: () => setState(() => _active = !_active),
                  icon: Icon(_active ? Icons.pause : Icons.play_arrow),
                  label: Text(_active ? 'Pause Session' : 'Begin Breathing (5 min)'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(child: _zenMetric('Mindful Mins', '145m', Icons.schedule)),
              const SizedBox(width: 12),
              Expanded(child: _zenMetric('Zen Days', '18 Days', Icons.spa)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _zenMetric(String t, String v, IconData ic) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(ic, color: AppTheme.secondaryColor, size: 24),
          const SizedBox(height: 8),
          Text(t, style: const TextStyle(color: Colors.white60, fontSize: 12), maxLines: 1, overflow: TextOverflow.ellipsis),
          Text(v, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

