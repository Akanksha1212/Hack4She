import 'package:flutter/material.dart';
import 'package:csv/csv.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:streecare/Components/gridDashboard.dart';
import 'package:streecare/Screens/dialog_flow.dart';
import 'package:streecare/Screens/videos.dart';

class Health extends StatefulWidget {
  @override
  _HealthState createState() => _HealthState();
}

class _HealthState extends State<Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xfffe82a7),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Image(
              image: AssetImage('assets/images/sakhi.gif'),
            ),
            Container(
              margin: EdgeInsets.all(20),
              color: Color(0xffffde59),
              padding: EdgeInsets.all(30),
              child: Text(
                'Hi, I am your Sakhi. I am here to help you with your questions. Just click on \'Talk to Sakhi\' ',
                style: TextStyle(fontSize: 15),
              ),
            ),
            RaisedButton(
              child: Text(
                'Talk to Sakhi',
                style: TextStyle(fontSize: 18),
              ),
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Colors.black)),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Sakhi()));
              },
            ),
            SizedBox(
              height: 25,
            ),
            GridDashboard(),
          ],
        ),
      ),
    );
  }
}
