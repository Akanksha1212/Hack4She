

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:streecare/EnterMobile.dart';
import 'package:streecare/Screens/homepage.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // getstatus();
    Future.delayed(Duration(seconds: 3),()
    {
      getstatus();
    });
    Future.delayed(Duration(seconds:3), () {
      Navigator.pop(context);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>EnterMobile()  ));
    });
  }
  void getstatus()async {
    var user= await FirebaseAuth.instance.currentUser();
    if(user!=null)
      {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>Homepage()  ));
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical:30),
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin:Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xffff5757),
                  Color(0xfffc5857),
                ]
            )
        ),
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.3,
                ),
                Center(
                  child: Container(
                  child: Image.asset("assets/images/logo.png"),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }
}