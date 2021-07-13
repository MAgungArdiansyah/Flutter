import 'package:flutter/material.dart';
import 'package:mediaquery/SecondPage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Media Query'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.amber,
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 5,
          ),
          RaisedButton(
              child: Text('Next'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SecondPage();
                }));
              })
        ],
      ),
    );
  }
}
