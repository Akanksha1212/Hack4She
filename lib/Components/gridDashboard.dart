import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streecare/Screens/health.dart';
import 'package:streecare/Screens/meetups.dart';
import 'package:streecare/Screens/jobs.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = new Items(
      title: "Health", img: "assets/images/healthcare.png", screen: Health());

  Items item2 = new Items(
    title: "Meetups",
    img: "assets/images/calendar.png",
    screen: Meetups(),
  );
  Items item3 = new Items(
    title: "Jobs",
    img: "assets/images/job.png",
    screen: Jobs(),
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3];
    var color = 0xffB8B3E9;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 14, right: 14),
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: myList.map((data) {
            return GestureDetector(
              child: Container(
                decoration: BoxDecoration(
                    color: Color(color),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      data.img,
                      width: 60,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      data.title,
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => data.screen),
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;
  String img;
  Widget screen;
  Items({this.title, this.img, this.screen});
}
