import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:streecare/EnterMobile.dart';
import 'package:streecare/Meetups/MeetUpBoard.dart';
import 'file:///D:/Hack4She/lib/Meetups/CreateMeetup.dart';
import 'file:///D:/Hack4She/lib/Meetups/MeetUpExplore.dart';


import 'package:streecare/Screens/addMeetUp.dart';
import 'package:streecare/Screens/meetups.dart';

import 'package:streecare/SplashScreen.dart';
import 'package:streecare/maps.dart';

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
      home: SplashScreen(),
    );
  }
}
