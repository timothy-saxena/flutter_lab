import 'package:flutter/material.dart';

void main() {
  runApp(const RowApp());
}

class RowApp extends StatelessWidget {
  const RowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Row Layout')),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MenuItem(icon: Icons.home, label: 'Home'),
              MenuItem(icon: Icons.school, label: 'College'),
              MenuItem(icon: Icons.settings, label: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const MenuItem({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 40, color: Colors.blue),
        const SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
