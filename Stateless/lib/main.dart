import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('agung'),
        ),
      ),
    );
  }
}

/* 1. material.dart adalah pakage berisi widget widget untuk mendesain tampilan aplikasi
   2. statefull widget akan mengubah kelas yang dibuat menjadi widget, stateless
      widget bersifat immutable artinya teman teman tidak bisa mengubah propertya
      semua nilai adalah final
   3. home adala tampilan awal yang akan ditampilkan pada program
   4. Scafold adalah widget bagian dari material app yang menyediakan perintah
      seperti app bar, title, body untuk menyusun struktur utama program
   5. body adalah bagian program utama
   6. text adalah widget untuk menampilkan text
    
*/