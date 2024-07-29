import 'package:flutter/material.dart';
import 'package:infopage_ta/ScholarshipPage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beasiswa App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ScholarshipPage(),
    );
  }
}