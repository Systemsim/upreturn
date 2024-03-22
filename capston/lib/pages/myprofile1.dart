import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(MyProfile1());
}

class MyProfile1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProfile1Screen(),
    );
  }
}

class MyProfile1Screen extends StatelessWidget {
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
                  'My Profile',
                  style: TextStyle(
                    fontSize: 55,
                    fontFamily: 'JockeyOne',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.menu,
                  size: 35,
                  color: Colors.white),
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
              );
                // Handle Services option
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Settings(),

                ),
              );
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
              onTap: () {
                // Handle Contact Us option
              },
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
              Expanded(
                child: Container(
                  color: Color(0xFFffffff),
                  padding: EdgeInsets.only(bottom: 8),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IntrinsicHeight(
                          child: Container(
                            margin: EdgeInsets.only(top:40, bottom: 24, left: 37, right: 37),
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IntrinsicHeight(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: Color(0x407d869e),
                                    ),
                                    padding: EdgeInsets.only(top: 16),
                                    width: 90,
                                    height: 90,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(bottom: 18, left: 25, right: 25),
                                            height: 100,
                                            width: 100,
                                            child: Image.asset(
                                              'assets/images/profile.png',
                                              //fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    margin: EdgeInsets.only(top: 31, right: 40),
                                    child: Text(
                                      'Simran khatri',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildTextField(label: '', hintText: 'Enter your first name'),
                        _buildTextField(label: '', hintText: 'Enter your last name'),
                        _buildTextField(label: '', hintText: 'Enter your email address'),
                        _buildTextField(label: '', hintText: 'Enter your phone number'),
                        Container(
                          margin: EdgeInsets.only(top: 20, bottom: 20, left: 250, right: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF2079ff),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 7),
                          width: 100,
                          height: 42,
                          child: Column(
                            children: [
                              Text(
                                'Done',
                                style: TextStyle(
                                  color: Color(0xFFffffff),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //   ),
    );
  }
  Widget _buildTextField({required String label, required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 15, bottom: 15, left: 17),

        ),

        TextFormField(
          decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}