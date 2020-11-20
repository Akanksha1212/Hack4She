import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:streecare/Screens/addMeetUp.dart';

class Meetups extends StatefulWidget {
  @override
  _MeetupsState createState() => _MeetupsState();
}

class _MeetupsState extends State<Meetups> {
  Geoflutterfire geo = Geoflutterfire();
  GeoFirePoint center;


// get the collection reference or query
  var collectionReference = Firestore.instance.collection('MeetUps');

  double radius = 50;
  String field = 'location';

  StreamSubscription subscription;
  _getdata() async {
    // Create a geoFirePoint
    setState(() {
      center = geo.point(latitude: 17.3850, longitude: 78.4867);

    });

// get the collection reference or query
    var collectionReference = Firestore.instance.collection('MeetUps');

    double radius = 50;
    String field = 'location';

    subscription = await geo.collection(collectionRef: collectionReference)
        .within(center: center, radius: radius, field: field).listen(_updateMarkers);

  }
  void _updateMarkers(List<DocumentSnapshot> documentList) {
    print(documentList);

    documentList.forEach((DocumentSnapshot document) {
      GeoPoint pos = document.data['location']['geopoint'];
      double distance = document.data['distance'];
      //print(document);
      //print(pos);

      print(document.data['title']);



    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getdata();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: MediaQuery.of(context).size.height*0.05,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      GestureDetector(onTap:(){},child: Text('NearBy Meetups',style: TextStyle(color: Color(0xff756d7f),fontSize: 18),)),
                      Visibility(visible: true,child: SizedBox(width: 45,child: Divider(thickness: 2,color: Color(0xf0ff5252),))),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Flexible(
                    child: StreamBuilder<QuerySnapshot>(
                      stream:  Firestore.instance.collection('MeetUps').snapshots(),
                      builder: (context,snapshot){
                        if(snapshot.connectionState == ConnectionState.waiting){
                          return Center(child: CircularProgressIndicator());
                        }
                        if(snapshot.hasData)
                          {
                            final docs = snapshot.data.documents;
                            for (var data in docs){
                              // GeoPoint pos = docs.data['location']['geopoint'];
                              // double distance = docs.data['distance'];
                              // //print(document);
                              // //print(pos);
                              //
                              // print(docs.data['title']);
                            }

                          }
                        if(!snapshot.hasData)
                        {
                          return Container(
                            child: Center(
                              child: Text(
                                '🙁 No Records Found',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.grey
                                ),
                              ),
                            ),
                          );
                        }
                         return ListView(

                                        );
                                          }


                    ),
                  )

                ],
              ),
            ],
          )

      ),
    );
  }
}
