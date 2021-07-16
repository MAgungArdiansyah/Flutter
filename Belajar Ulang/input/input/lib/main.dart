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
        home: SwitchButton());
  }
}

class _FirstScreen extends StatefulWidget {
  @override
  __FirstScreenState createState() => __FirstScreenState();
}

class __FirstScreenState extends State<_FirstScreen> {
  String? _name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Write your name here...',
                labelText: 'Your Name',
              ),
              onSubmitted: (String value) {
                setState(() {
                  _name = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Hello, $_name'),
                      );
                    });
              },
              child: Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}

class _SecondScreen extends StatefulWidget {
  @override
  __SecondScreenState createState() => __SecondScreenState();
}

class __SecondScreenState extends State<_SecondScreen> {
  String _name = '';
  String? _pswrd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Field'),
          leading: Icon(Icons.menu),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Username',
                        //labelText: 'Username',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.person)),
                    onSubmitted: (value) {
                      setState(() {
                        _name = value;
                      });
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFEFEBE9)),
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(Icons.password)),
                    obscureText: true,
                    onSubmitted: (value) {
                      _pswrd = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text('Hello, $_name'),
                            );
                          });
                    },
                    child: Text('Login'))
              ],
            ),
          ),
        ));
  }
}

class SwitchButton extends StatefulWidget {
  const SwitchButton({Key? key}) : super(key: key);

  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool lightOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch Button'),
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
        ],
      ),
      body: Switch(
          value: lightOn,
          onChanged: (bool value) {
            setState(() {
              lightOn = value;
            });
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(lightOn ? 'Light On' : 'Light Off'),
              duration: Duration(seconds: 1),
            ));
          }),
    );
  }
}
