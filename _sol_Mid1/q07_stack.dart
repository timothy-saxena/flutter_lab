import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Stack Widget")),
        body: Center(
          child: Stack(
            children: [
              Image.network(
                "https://picsum.photos/300/200",
                width: 300,
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
        ),
      ),
    );
  }
}
