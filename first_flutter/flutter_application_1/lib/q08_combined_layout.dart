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
        appBar: AppBar(title: const Text("Layout")),

        body: Column(
          children: [
            // Stack
            Stack(
              children: [
                Image.network("https://picsum.photos/400/200"),
                const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Text(
                    "MGIT",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ],
            ),

            // Column
            const Column(
              children: [
                Text("Welcome to MGIT"),
                Text("UI Design using Flutter"),
              ],
            ),

            // Row
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.home), Icon(Icons.school), Text("Start")],
            ),
          ],
        ),
      ),
    );
  }
}
