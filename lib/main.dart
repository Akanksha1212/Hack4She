import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:streecare/EnterMobile.dart';
import 'package:streecare/Screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EnterMobile(),
    );
  }
}
