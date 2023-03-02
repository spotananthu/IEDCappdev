// @dart=2.9

import 'package:flutter/material.dart';
import 'package:iedc_summit/Event.dart';
import 'package:iedc_summit/Explore.dart';
//import 'package:iedc_summit/Map.dart';

import 'package:iedc_summit/Venuesss.dart';
//import 'Venue.dart';
import 'HomePage.dart';

void main() async {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IEDC',
      theme: ThemeData(primaryColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "HomePage": (BuildContext context) => HomePage(),
        //"VenuePage": (BuildContext context) => Venuepage(),
        "EventPage": (BuildContext context) => Eventpage(),
        //"Map": (BuildContext context) => MapPage(),
        "Stage": (BuildContext context) => StagePage(),
        "Explore": (BuildContext context) => Explorepage(),
        // "Schedule": (BuildContext context) => Schedulepage(),
      },
    );
  }
}
