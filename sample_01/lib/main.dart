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
        backgroundColor: Colors.greenAccent,
        body: Center(
          child: Text(
            'Welcome to Flutter',
            style: TextStyle(color: Colors.blueGrey[800]),
          ),
        ),
      ),
    );
  }
}
