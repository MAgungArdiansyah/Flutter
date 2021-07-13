import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.view_headline_rounded),
            onPressed: () {},
          ),
          title: Text(
            'Camping',
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.right,
          ),
          actions: <Widget>[
            IconButton(
                color: Colors.black,
                icon: Icon(Icons.search_rounded),
                onPressed: () {}),
            IconButton(
                color: Colors.black,
                icon: Icon(Icons.account_circle),
                onPressed: () {})
          ],
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                child: Image(
                  image: AssetImage('assets/images/camp.png'),
                ),
              ),
              Container(
                child: Text(
                  'M Agung Ardiansyah',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              Container(child: TextField()),
            ],
          ),
        ),
      ),
    );
  }
}
