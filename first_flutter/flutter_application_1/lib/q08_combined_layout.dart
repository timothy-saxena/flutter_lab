import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Combined Layout")),

        body: Column(
          children: [
            // Stack
            Stack(
              children: [
                Image.network(
                  "https://picsum.photos/400/200",
                  width: 400,
                  height: 200,
                ),

                Positioned(
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
            Column(
              children: [
                Text("Welcome to MGIT"),
                Text("UI Design using Flutter"),
              ],
            ),

            // Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Icon(Icons.home), Icon(Icons.school), Text("Start")],
            ),
          ],
        ),
      ),
    );
  }
}
