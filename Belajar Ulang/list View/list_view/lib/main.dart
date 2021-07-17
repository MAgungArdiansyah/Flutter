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
      home: ListViewSeparated(),
    );
  }
}

class ScrollingScreenListView extends StatelessWidget {
  const ScrollingScreenListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '1',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '3',
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
          Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '4',
                style: TextStyle(fontSize: 50),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListViewDinamis extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Dinamis'),
      ),
      body: ListView(
        children: numberList.map((number) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.grey, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '$number',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class ListViewDenganBuilder extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LisView Dengan Pemisah'),
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black)),
                child: Center(
                  child: Text(
                    '${numberList[index]}',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              );
            },
            itemCount: numberList.length),
      ),
    );
  }
}

class ListViewSeparated extends StatelessWidget {
  final List<int> numberList = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LisView Dengan Pemisah'),
      ),
      body: Container(
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black)),
                child: Center(
                  child: Text(
                    '${numberList[index]}',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
                  color: Colors.amber,
                  thickness: 10,
                ),
            itemCount: numberList.length),
      ),
    );
  }
}
