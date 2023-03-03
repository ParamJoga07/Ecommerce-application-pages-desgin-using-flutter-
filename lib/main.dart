import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/screen1.dart';
import 'screens/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Screen1(),
    );
  }
}
