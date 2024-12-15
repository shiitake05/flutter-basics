import 'package:flutter/material.dart';

import 'next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Image Sample'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '文字の装飾',
              style: TextStyle(
                fontSize: 30,                         // 文字の大きさ
                color: Colors.blue,                   // 文字の色
                fontWeight: FontWeight.bold,          // 太字
                fontStyle: FontStyle.italic,          // イタリック
                decoration: TextDecoration.underline, // 下線
              ),
            ),

            Container(
              width: double.infinity,
              child: Text('左寄せ')
            ),

            Container(
              width: double.infinity,
              child: Text(
                '中央寄せ',
                textAlign: TextAlign.center
              )
            ),

            Container(
              width: double.infinity,
              child: Text(
                '右寄せ',
                textAlign: TextAlign.right
              )
            ),
          ],
        ),
      ),
    );
  }
}
