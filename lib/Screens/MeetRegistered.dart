import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:streecare/Components/styles.dart';



class DonorView extends StatefulWidget {
  DonorView({title,description,city,date,landamark,mobile,seats,state,duration});
  final String title,description,city,date,landmark,mobile,seats,state,duration;


  @override
  _DonorViewState createState() => _DonorViewState();
}

class _DonorViewState extends State<DonorView> {
  bool isPressed = false;
  DateFormat formatter = DateFormat.yMd();

  IconData down = Icons.keyboard_arrow_down,up = Icons.keyboard_arrow_up;

  @override
  Widget build(BuildContext context) {
    //DateTime recoverDate = widget.isRecovered?widget.recoverDate.toDate():DateTime.now();
  //  DateTime lastTested = widget.lastTested.toDate();
    return Container(
        decoration: BoxDecoration(
          color: Color(0xffffebee),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: InkWell(
          onTap: (){
//            var code;
//            if(puid.hashCode > uid.hashCode)
//              code = '$puid-$uid';
//            else
//              code = '$uid-$puid';
//            Firestore.instance.collection('ongoing').document(puid).collection(puid).document(code).setData({
//              'image':img,
//              'nickname':name,
//              'msg':msg,
//              'time':formatter.format(DateTime.now()),
//              'uid':uid
//            });
//            Navigator.push(context, MaterialPageRoute(builder: (context)=> Chat(code: code,image: img,name: name,puid: puid,)));
          },
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('${widget.title}',style: TextStyle(fontSize: 22,color: Color(0xff756d7f)),),
                              //Text('${widget.age} years ${widget.gender}',style: TextStyle(fontSize: 15,color: Color(0xff756d7f)),),
                              SizedBox(height: 8,),
                              Text('${widget.city}',style: kInfoText,),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              isPressed = !isPressed;
                            });
                          },
                          child: Icon(
                            isPressed?up:down,
                            size: 30,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Visibility(
                  visible: isPressed,
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
                      child: Column(
                        children: <Widget>[

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Contact:',style: kLabelStyle,),
                              SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                              Container(
                                  width: MediaQuery.of(context).size.width*0.35,
                                  child: Text('${widget.mobile}',style: kDateStyle.copyWith(color: Colors.black),)
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('State:',style: kLabelStyle,),
                              SizedBox(width: MediaQuery.of(context).size.width*0.05,),
                              Container(
                                  width: MediaQuery.of(context).size.width*0.35,
                                  child: Text('${widget.state}',style: kDateStyle.copyWith(color: Colors.black),)
                              )
                            ],
                          ),





                        ],
                      )
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
