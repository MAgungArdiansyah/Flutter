import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          child: ListView(
            children: <Widget>[
              BuildCard(Icons.email, 'E-mail', 20),
            ],
          ),
        ),
      ),
    );
  }

  Card BuildCard(IconData iconData, String text, double Margin) {
    return Card(
      elevation: 10,
      child: Row(
        children: [
          Container(margin: EdgeInsets.all(Margin), child: Icon(iconData)),
          Text(text)
        ],
      ),
    );
  }
}
