import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/contactus.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(Information());
}

class Information extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Setting debug to false
      theme: ThemeData(
        // Change the color of the icon here
        iconTheme: IconThemeData(
          color: Colors.white, // Change to your desired color
        ),
      ),
      home: Scaffold(
        key: _scaffoldKey,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: AppBar(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(35),
                ),
              ),
              title: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 3, bottom: 0, right: 16.0),
                  child: Text(
                    'News & Update',
                    style: TextStyle(
                      fontSize: 55,
                      fontFamily: 'JockeyOne',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              backgroundColor: Color(0xFF191d46),
              leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.white,size: 35,),
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
                  color: Color(
                      0xFF191d46), // Replace with your desired hex color
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
                title: Text('Gst Calculator'),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calc(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.file_upload),
                title: Text('Upload pdf'),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadPdf(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.file_download),
                title: Text('Download pdf'),
                onTap: () {},
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
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),

                  ),
                );},
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
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            color: Color(0xFFFFFFFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20), // Add padding between AppBar and Container
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 1, bottom: 70),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Color(0xFFebf3ff), Color.fromARGB(255, 190, 199, 225)],
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      width: MediaQuery.of(context).size.width * 0.8, // Adjust the width
                      height: MediaQuery.of(context).size.height * 0.6, // Adjust the height
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Year-wise Update ',
                            style: TextStyle(
                              color: Colors.black ,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          // Add your content here
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
