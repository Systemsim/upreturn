import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/contactus.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(AboutUs());
}

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AboutUsscreen(),
    );
  }
}

class AboutUsscreen extends StatelessWidget {
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
                  'About us',
                  style: TextStyle(
                    fontSize: 55,
                    fontFamily: 'JockeyOne',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                size: 35,
                color: Colors.white,
              ), // Change the color of the drawer icon menu
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
            ),
            // iconTheme: IconThemeData(color: Colors.white), // Change the color of the drawer icon menu
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
              title: Text('Upload Documents'),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UploadPdf(),

                ),
              );},
            ),
            ListTile(
              leading: Icon(Icons.file_download),
              title: Text('Download Documents'),
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
              onTap: () {},
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
          constraints: BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Color(0xFFffffff),
                  padding: EdgeInsets.only(bottom: 75, top: 50),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IntrinsicHeight(),
                      IntrinsicHeight(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFebf3ff),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x4D000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.only(top: 30, bottom: 30),
                          margin: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 10),
                          width: double.infinity,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10, left: 25),
                                  child: Text(
                                    'Dipak Khatri',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 1, left: 20, right: 20),
                                  width: double.infinity,
                                  child: Text(
                                    'He is the founder of the Company and we offer services which are customized, flexible and cost effective bookkeeping, Taxation, Payroll Processing and our rates are standardized and most competitive.',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top:15, bottom: 2, left: 21),
                                  child: Text(
                                    'Our Promises',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  width: double.infinity,
                                  child: Text(
                                    'We provide clarity, trustable firm, valuable relationship with the clients. From startups to established enterprises, we tailor our services to meet the unique needs of each client. Whether you\'re seeking tax advice, financial planning, or accounting solutions, we\'ve got you covered.',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                    ],
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
