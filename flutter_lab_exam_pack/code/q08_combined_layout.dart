import 'package:flutter/material.dart';

void main() {
  runApp(const CombinedLayoutApp());
}

class CombinedLayoutApp extends StatelessWidget {
  const CombinedLayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Combined Layout')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 170,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    const Positioned(
                      left: 20,
                      bottom: 20,
                      child: Text(
                        'MGIT Flutter Lab',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Positioned(
                      right: 18,
                      top: 18,
                      child: Icon(Icons.flutter_dash, color: Colors.white, size: 58),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Choose an action',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(icon: Icons.home, label: 'Home'),
                  ActionButton(icon: Icons.play_arrow, label: 'Start'),
                  ActionButton(icon: Icons.info_outline, label: 'Info'),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                'Column creates sections, Stack creates the banner, and Row creates this horizontal menu.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(onPressed: () {}, child: Icon(icon)),
        const SizedBox(height: 4),
        Text(label),
      ],
    );
  }
}
