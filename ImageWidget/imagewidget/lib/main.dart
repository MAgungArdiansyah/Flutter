import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Widget'),
        ),
        body: Center(
            child: Container(
          width: 500,
          height: 500,
          child: Image.asset('assets/images/uchimusume.jpeg'),
        )),
      ),
    );
  }
}
