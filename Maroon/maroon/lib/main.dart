import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String Nama, Kelas;
  int Npm, Angkatan;

  getNama(nama) {
    this.Nama = nama;
  }

  getKelas(kelas) {
    this.Kelas = kelas;
  }

  getNpm(npm) {
    this.Npm = npm;
  }

  getNama(nama) {
    this.Nama = nama;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}
