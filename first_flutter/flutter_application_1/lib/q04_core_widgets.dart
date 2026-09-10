import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Widgets')),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 146, 165, 181),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  'https://picsum.photos/200',
                  width: 200,
                  height: 150,
                ),
                const Text(
                  'Welcome to Flutter!',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
