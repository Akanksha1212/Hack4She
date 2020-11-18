import 'package:flutter/material.dart';

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
    );
  }
}
