import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:streecare/EnterMobile.dart';
import 'package:streecare/LoginScreen.dart';
import 'package:streecare/SplashScreen.dart';
import 'package:streecare/maps.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
