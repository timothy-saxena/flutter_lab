import 'package:flutter/material.dart';

void main() {
  runApp(const StackApp());
}

class StackApp extends StatelessWidget {
  const StackApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Stack Layout')),
        body: Center(
          child: SizedBox(
            width: 320,
            height: 200,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Colors.indigo, Colors.lightBlue],
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                const Positioned(
                  left: 20,
                  bottom: 20,
                  child: Text(
                    'Welcome to MGIT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  right: 16,
                  top: 16,
                  child: CircleAvatar(
                    radius: 28,
                    child: Icon(Icons.school, size: 32),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
