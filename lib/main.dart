import 'package:flutter/material.dart';
import 'homepage.dart';
import 'weather.dart';
import 'profile.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}


