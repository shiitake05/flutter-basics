import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('次のページです'),
      ),
      body: Container(
        color: Colors.yellow,
        child: Text(name),
      ),
    );
  }
}