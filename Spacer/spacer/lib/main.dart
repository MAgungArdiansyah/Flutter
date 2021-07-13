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
          title: Text('Spacer'),
        ),
        body: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(
                flex: 1,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 30,
              ),
              Spacer(
                flex: 2,
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 30,
              ),
              Spacer(
                flex: 3,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
