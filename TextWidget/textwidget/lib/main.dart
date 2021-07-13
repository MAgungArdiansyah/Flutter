import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
              color: Colors.cyan.shade300,
              //decoration: Box,
              width: 200,
              height: 150,
              child: Text(
                'Hallo nama saya agung saya adalah mahasiswa universitas pakuan',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 21),
              )),
        ),
      ),
    );
  }
}

// container = berfungsi untukl memberikan padding, margin, gradient pada widget yang di bungkus