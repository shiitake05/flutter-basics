import 'package:flutter/material.dart';

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
        title: Text("What's up?"),
        actions: [
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.greenAccent,
          height: 256,
          width: 320,
          // height: double.infinity,   // 画面全体の色をgreenAccentにする
          child: Padding(
            padding: const EdgeInsets.all(72.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,    // 中央寄せ
              mainAxisAlignment: MainAxisAlignment.start,        // 左寄せ
              children: <Widget>[
                Text(
                  'こんな感じで',
                ),
                Text(
                  '表示されるよ',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
