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
          title: Text('Container'),
        ),
        body: Container(
          color: Colors.blueGrey[400],
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          child: Container(
            //color: Colors.cyan[300],
            //margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
            margin: EdgeInsets.only(bottom: 400),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[Colors.cyan, Colors.amber])),
          ),
        ),
      ),
    );
  }
}

// margin jarak antara container dengan widget lainnya yang dibagian luar