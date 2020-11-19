import 'package:flutter/material.dart';
import 'package:streecare/Components/gridDashboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:streecare/Screens/health.dart';
import 'package:streecare/Screens/jobs.dart';
import 'package:streecare/Screens/meetups.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        brightness: Brightness.light,
        backgroundColor: Color(0xffffde59),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: new Image.asset('assets/images/menu(2).png'),
            );
          },
        ),
      ),
      drawer: NavDrawer(),
      body: Container(
        color: Color(0xfffe82a7),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage('assets/images/stree.jpeg'),
        //     fit: BoxFit.cover,
        //   ),
        // ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: Color(0xffffde59),
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/healthcare.png"),
                        title: Text('Health & Lifestyle'),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        // subtitle: Text(''),
                        // isThreeLine: true,
                        trailing: RaisedButton(
                            child: Text(''),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                side: BorderSide(color: Colors.black)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Health()),
                              );
                            }),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/calendar.png"),
                        title: Text('Meetups'),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        // subtitle: Text(''),
                        // isThreeLine: true,
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_right),
                            color: Colors.black,
                            iconSize: 50,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Meetups()),
                              );
                            }),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Card(
                      child: ListTile(
                        leading: Image.asset("assets/images/job.png"),
                        title: Text('Jobs'),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                        // subtitle: Text(''),
                        // isThreeLine: true,
                        trailing: RaisedButton(
                            child: Text(''),
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                side: BorderSide(color: Colors.black)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Jobs()),
                              );
                            }),
                      ),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Image(
                  image: AssetImage('assets/images/backk.png'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: MediaQuery.of(context).size.width / 1.7, //20.0,
      child: Drawer(
        child: Container(
          color: Color(0xfffe82a7),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Container(
                  alignment: Alignment.topCenter,
                  // child: Text(
                  //   'StreeCare',
                  //   style: GoogleFonts.abel(
                  //       textStyle:
                  //           TextStyle(color: Colors.black, fontSize: 30)),
                  // ),
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/hands.png'))),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.input),
                    title: Text('Welcome'),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: Icon(Icons.verified_user_rounded),
                    title: Text('Profile'),
                    // onTap: () => Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => Profile())),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                    // onTap: () => Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => SliderDialog())),
                  ),
                  ListTile(
                    leading: Icon(Icons.border_color),
                    title: Text('Feedback'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text('About'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('Logout'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
