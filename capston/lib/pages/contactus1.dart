import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(const ContactUs1());
}

class ContactUs1 extends StatelessWidget {
  const ContactUs1({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white,size: 35),
          title: Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'JockeyOne',
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true, // Center align the title
        ),


        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                    color: Color(0xFF191d46)
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
                title: Text('GST Calculator', style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calc(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.file_upload),
                title: Text('Upload PDF', style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UploadPdf(),

                  ),
                );},
              ),
              ListTile(
                leading: Icon(Icons.file_download),
                title: Text('Download PDF', style: TextStyle(color: Colors.black)),
                onTap: () {
                  // Handle Download PDF option
                },
              ),
              ListTile(
                leading: Icon(Icons.event),
                title: Text('Appointment Booking', style: TextStyle(color: Colors.black)),
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
                );},
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
                leading: Icon(Icons.contact_phone),
                title: Text('Contact Us', style: TextStyle(color: Colors.black)),
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactUs1(),

                  ),
                );},
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
        body: Container(
          margin: EdgeInsets.only(bottom: 0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF191d46), Color.fromARGB(255, 157, 196, 215)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 45, 20, 10),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'First Name',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder( borderSide: BorderSide.none,),
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder( borderSide: BorderSide.none,),
                        prefixIcon: Icon(Icons.person, color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder( borderSide: BorderSide.none,),
                        prefixIcon: Icon(Icons.email, color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder( borderSide: BorderSide.none,),
                        prefixIcon: Icon(Icons.phone, color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Text(
                      'Select Subject?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Row(
                      children: [
                        StatefulCheckbox(
                          onChanged: (bool? value) {
                            // Handle checkbox value change
                          },
                          text: 'General inquiry',
                        ),
                        const SizedBox(width: 20),
                        StatefulCheckbox(
                          onChanged: (bool? value) {
                            // Handle checkbox value change
                          },
                          text: 'Advice',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      minLines: 5,
                      maxLines: null,
                      decoration: InputDecoration(
                        labelText: 'Write your message...',
                        labelStyle: TextStyle(color: Colors.black),
                        border: OutlineInputBorder( borderSide: BorderSide.none,),
                        prefixIcon: Icon(Icons.message, color: Colors.black),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle sending message
                      },

                      child: const Text('Send Message',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      ),

                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class StatefulCheckbox extends StatefulWidget {
  final ValueChanged<bool?>? onChanged;
  final String text;

  const StatefulCheckbox({
    Key? key,
    required this.onChanged,
    required this.text,
  }) : super(key: key);

  @override
  _StatefulCheckboxState createState() => _StatefulCheckboxState();
}

class _StatefulCheckboxState extends State<StatefulCheckbox> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _value,
          onChanged: (bool? value) {
            setState(() {
              _value = value ?? false;
            });
            widget.onChanged?.call(value);
          },
        ),
        Text(widget.text, style: const TextStyle(color: Colors.white)),
      ],
    );
  }
}


