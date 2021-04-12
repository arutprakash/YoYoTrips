import 'package:f_anime/screens/sandbox.dart';
import 'package:flutter/material.dart';
import 'package:f_anime/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YoYo Trips',
      home: Home(),
    );
  }
}
