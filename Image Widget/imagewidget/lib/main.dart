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
          title: Text('Aplikasi Image Widget'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Gambar dari URL'),
              Container(
                width: 200,
                height: 200,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: NetworkImage(
                      'https://i.pinimg.com/originals/56/9e/34/569e34307b5abf52a69bd0a1a9b524bd.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              Text('Gambar dari Sisaorage'),
              Container(
                color: Colors.black,
                width: 100,
                height: 100,
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage('assets/image/5.png'),
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
