import 'package:flutter/material.dart';
import '../../theme/app_theme.dart';


class Tab3Screen extends StatefulWidget {
  const Tab3Screen({super.key});
  @override
  State<Tab3Screen> createState() => _Tab3ScreenState();
}

class _Tab3ScreenState extends State<Tab3Screen> {
  double _rain = 0.7;
  double _bowls = 0.4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Win • Nature Ambience')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(color: AppTheme.surfaceColor, borderRadius: BorderRadius.circular(18)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Soft Rain on Bamboo', style: TextStyle(fontWeight: FontWeight.bold)),
                Slider(value: _rain, activeColor: AppTheme.primaryColor, onChanged: (v) => setState(() => _rain = v)),
                const SizedBox(height: 10),
                const Text('Tibetan Singing Bowls', style: TextStyle(fontWeight: FontWeight.bold)),
                Slider(value: _bowls, activeColor: AppTheme.primaryColor, onChanged: (v) => setState(() => _bowls = v)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

