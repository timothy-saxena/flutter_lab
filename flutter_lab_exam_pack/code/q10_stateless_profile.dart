import 'package:flutter/material.dart';

void main() {
  runApp(const StaticProfileApp());
}

class StaticProfileApp extends StatelessWidget {
  const StaticProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('StatelessWidget Demo')),
        body: Center(
          child: Container(
            width: 300,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 42,
                  child: Icon(Icons.person, size: 48),
                ),
                SizedBox(height: 16),
                Text(
                  'Flutter Student',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Static profile screen'),
                SizedBox(height: 8),
                Text('The displayed information does not change.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
