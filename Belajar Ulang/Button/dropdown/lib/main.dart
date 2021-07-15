import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: FirstScreenState(),
    );
  }
}

class FirstScreenState extends StatefulWidget {
  @override
  _FirstScreenStateState createState() => _FirstScreenStateState();
}

class _FirstScreenStateState extends State<FirstScreenState> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: DropdownButton<String>(
        items: <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(
            child: Text('Dart'),
            value: 'Dart',
          ),
          DropdownMenuItem<String>(
            child: Text('kotlin'),
            value: 'Kotlin',
          ),
          DropdownMenuItem<String>(
            child: Text('Swift'),
            value: 'Swift',
          ),
        ],
        value: language,
        hint: Text('Select Language'),
        onChanged: (String? value) {
          setState(() {
            language = value;
          });
        },
      ),
    );
  }
}
