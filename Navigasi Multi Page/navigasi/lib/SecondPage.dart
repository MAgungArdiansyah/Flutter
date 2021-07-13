import 'package:flutter/material.dart';
import 'package:navigasi/MainPage.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        
        title: Text('Second Page'),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Ini adalah Second Page'),
            RaisedButton(
                child: Text('Back'),
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                }),
          ],
        ),
      ),
    );
  }
}
