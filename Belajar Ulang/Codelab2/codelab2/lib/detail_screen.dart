import 'dart:html';

import 'package:codelab2/model/tourism_place.dart';
import 'package:flutter/material.dart';

class detailscreen extends StatelessWidget {
  final TourismPlace place;
  detailscreen({required this.place});
  var informasionTextStyle = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Image.asset(place.imageAsset),
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Staatliches'),
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
                      Text(
                        place.openDays,
                        style: informasionTextStyle,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.schedule),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        place.openTime,
                        style: informasionTextStyle,
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.monetization_on),
                      SizedBox(height: 8.0),
                      Text(
                        place.ticketPrice,
                        style: informasionTextStyle,
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              child: Text(
                place.description,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: place.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
