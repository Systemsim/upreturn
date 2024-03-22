import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/contactus.dart';
import 'package:capston/pages/feedback.dart';
import 'package:capston/pages/login.dart';
import 'package:capston/pages/myprofile1.dart';
import 'package:capston/pages/news&update.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(Settings());
}

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
            color: Color(0xFF191d46),
          ),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(50))),
            backgroundColor: Color(0xFF191d46),
            title: Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 3, bottom: 0, right: 16.0),
                child: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 55,
                    fontFamily: 'JockeyOne',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.menu, size: 35, color: Colors.white),
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF191d46),
              ),
              child: Text(
                'Up Return',
                style: TextStyle(
                  fontFamily: "Jomhuria",
                  fontSize: 90,
                  color: Color(0xFFebf3ff),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('GST Calculator'),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Calc(),

                ),
              );},
            ),
            ListTile(
              leading: Icon(Icons.file_upload),
              title: Text('Upload PDF'),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UploadPdf(),

                ),
              );},
            ),
            ListTile(
              leading: Icon(Icons.file_download),
              title: Text('Download PDF'),
              onTap: () {
                // Handle Download PDF option
              },
            ),
            ListTile(
              leading: Icon(Icons.event),
              title: Text('Appointment Booking'),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AppointmentBooking(),

                ),
              );},
            ),
            ListTile(
              leading: Icon(Icons.widgets),
              title: Text('Services'),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Services(),

                ),
              );},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle Settings option
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About Us'),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUs(),

                ),
              );},
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactUs(),

                ),
              );},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Reminder'),
              onTap: () {
                // Handle Reminder option
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color(0xFFebf3ff),
                padding:
                    EdgeInsets.only(top: 24, bottom: 24, left: 28, right: 28),
                margin:
                    EdgeInsets.only(top: 40, bottom: 22, left: 19, right: 19),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyProfile1(),
                          ),
                        );
                      },
                      child: Text(
                        'My Profile',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 22,
                        ),
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFebf3ff),
                padding:
                    EdgeInsets.only(top: 23, bottom: 23, left: 30, right: 30),
                margin: EdgeInsets.only(bottom: 21, left: 17, right: 17),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Information(),
                          ),
                        );
                      },
                      child: Text(
                        'News & updates',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 22,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xFFebf3ff),
                padding:
                    EdgeInsets.only(top: 24, bottom: 24, left: 28, right: 28),
                margin: EdgeInsets.only(bottom: 313, left: 19, right: 19),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FeedBack(),
                          ),
                        );
                      },
                      child: Text(
                        'Feedback',
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 22,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 100),
                //width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 50),
                      backgroundColor: Color(0xFF0e40c1),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Login(),
                      ),
                    );
                  },
                  child: Text('Log Out',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    //);
  }
}
