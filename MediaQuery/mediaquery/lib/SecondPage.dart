import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildContainer()
      ]
    );
  }

  Container buildContainer(Colors warna) {
    return Container(
        width: 100,
        height: 100,
        color: warna,
      );
  }

// if satu barus (syarat) ? True : False