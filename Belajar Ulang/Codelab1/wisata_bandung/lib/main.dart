import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: detailscreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class detailscreen extends StatelessWidget {
  const detailscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Text(
              'Farm House Bandung',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.calendar_today),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text('Open Everyday')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.schedule),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text('09.00 - 20.00')
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.monetization_on),
                    SizedBox(height: 8.0),
                    Text('Rp. 25.000')
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(16),
            child: Text(
              'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            child: ElevatedButton(
              child: Text('Tekan'),
              onPressed: () {},
            ),
          ),
          Container(
            child: TextButton(
              child: Text('Text Button'),
              onPressed: () {},
            ),
          ),
          Container(
            child: OutlinedButton(
              child: Text('Outline Button'),
              onPressed: () {},
            ),
          ),
          Container(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.volume_up),
              tooltip: 'Increase volume by 10',
            ),
          )
        ],
      ),
    ));
  }
}
