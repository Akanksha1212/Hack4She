import 'package:flutter/material.dart';
import 'package:streecare/Components/gridDashboard.dart';
import 'package:google_fonts/google_fonts.dart';

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
          children: [
            SizedBox(height: 200),
            GridDashboard(),
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
