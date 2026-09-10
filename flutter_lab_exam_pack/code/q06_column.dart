import 'package:flutter/material.dart';

void main() {
  runApp(const ColumnApp());
}

class ColumnApp extends StatelessWidget {
  const ColumnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Column Layout')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              InfoBox(text: 'Welcome to MGIT', color: Colors.blue),
              SizedBox(height: 12),
              InfoBox(text: 'UI Design using Flutter', color: Colors.green),
              SizedBox(height: 12),
              InfoBox(text: 'Column arranges widgets vertically', color: Colors.orange),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoBox extends StatelessWidget {
  final String text;
  final Color color;

  const InfoBox({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
