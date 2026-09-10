import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    // return MaterialApp();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Row Widget")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.home), Text("Home"), Icon(Icons.settings)],
          ),
        ),
      ),
    );
  }
}
