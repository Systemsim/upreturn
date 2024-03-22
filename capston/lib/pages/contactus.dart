import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/contactus1.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(const ContactUs());
}

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      home: Scaffold(
        extendBodyBehindAppBar: true,
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
                  padding:
                      const EdgeInsets.only(top: 3, bottom: 0, right: 16.0),
                  child: Text(
                    'Contact us',
                    style: TextStyle(
                      fontSize: 55,
                      fontFamily: 'JockeyOne',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              iconTheme: IconThemeData(size: 35, color: Colors.white),
            ),
          ),
        ), // Center align the title

        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF191d46)
                    // gradient: LinearGradient(
                    //   colors: [Color(0xFF191d46), Color.fromARGB(255, 112, 149, 167)],
                    //   begin: Alignment.centerLeft,
                    //   end: Alignment.centerRight,
                    // ),
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
                title: Text('GST Calculator',
                    style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calc(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.file_upload),
                title:
                    Text('Upload PDF', style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadPdf(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.file_download),
                title:
                    Text('Download PDF', style: TextStyle(color: Colors.black)),
                onTap: () {
                  // Handle Download PDF option
                },
              ),
              ListTile(
                leading: Icon(Icons.event),
                title: Text('Appointment Booking',
                    style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppointmentBooking(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.widgets),
                title: Text('Services', style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Services(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings', style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),

                  ),
                ); },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text('About Us', style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutUs(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title:
                    Text('Contact Us', style: TextStyle(color: Colors.black)),
                onTap: () {
                  // Handle Contact Us option
                },
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Reminder', style: TextStyle(color: Colors.black)),
                onTap: () {
                  // Handle Reminder option
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 80),
            constraints: BoxConstraints.expand(),
            color: Color(0xFFFFFFFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xFFffffff),
                    padding: EdgeInsets.only(bottom: 3),
                    width: double.infinity,
                    height: double.infinity,
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFebf3ff),
                          ),
                          padding: EdgeInsets.only(top: 11, bottom: 40),
                          margin:
                              EdgeInsets.only(bottom: 20, left: 65, right: 49),
                          width: 271,
                          height: 490,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 35, left: 68),
                                  child: Text(
                                    'Dipak Khatri',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          bottom: 40, left: 115, right: 115),
                                      height: 17,
                                      width: double.infinity,
                                      child: Image.asset(
                                        'assets/images/call.png',
                                        //fit: BoxFit.fill,
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 41, left: 46),
                                  child: Text(
                                    '+91 9998948528',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    color: Color(0x030e0e0e),
                                    padding: EdgeInsets.only(left: 4, right: 4),
                                    margin: EdgeInsets.only(
                                        bottom: 20, left: 112, right: 112),
                                    width: double.infinity,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                                margin: EdgeInsets.only(top: 1),
                                                height: 25,
                                                width: double.infinity,
                                                child: Image.asset(
                                                  'assets/images/location.png',
                                                  //fit: BoxFit.fill,
                                                )),
                                          ),
                                        ]),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      bottom: 36, left: 83, right: 53),
                                  width: double.infinity,
                                  child: Text(
                                    'Income tax, Ahemdabad',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: Container(
                                    //color: Color(0xFF0e40c1),
                                    padding: EdgeInsets.only(left: 2, right: 2),
                                    margin: EdgeInsets.only(
                                        bottom: 37, left: 112, right: 112),
                                    width: double.infinity,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Container(
                                                margin: EdgeInsets.only(top: 4),
                                                height: 22,
                                                width: double.infinity,
                                                child: Image.asset(
                                                  'assets/images/mail.png',
                                                  //fit: BoxFit.fill,
                                                )),
                                          ),
                                        ]),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 40),
                                  child: Text(
                                    'dipak17@gmail.com',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ]),
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
                                  builder: (context) => ContactUs1(),
                                ),
                              );
                            },
                            child: Text('Fill Details',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18)),
                          ),
                        ),
                      ],
                    )),
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
