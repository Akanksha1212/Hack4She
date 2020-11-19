import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streecare/Screens/addMeetUp.dart';

class Meetups extends StatefulWidget {
  @override
  _MeetupsState createState() => _MeetupsState();
}

class _MeetupsState extends State<Meetups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Meetup"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(CupertinoIcons.plus),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddMeetUp()));
        },
      ),
    );
  }
}
