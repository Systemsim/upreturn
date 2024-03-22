import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/contactus.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(AppointmentBooking());
}

class AppointmentBooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF8A2BE2), // Hex color for app bar
      ),
      debugShowCheckedModeBanner: false, // Set debug false
      home: AppointmentScreen(),
    );
  }
}

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  TextEditingController nameController = TextEditingController();
  String selectedName = '';
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100), // Set the height of the app bar to 100
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(35),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16, bottom: 8),
                  child: Text(
                    'Appointment',
                    style: TextStyle(
                      fontSize: 55,
                      fontFamily: 'JockeyOne',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Color(
            0xFF191d46,
          ), // Hex color for app bar
          iconTheme: IconThemeData(color: Colors.white,size: 35), // Set navigation drawer icon color to white
        ),
      ),
      drawer: Drawer(
        child: ListView(
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
              onTap: () {},
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter your name:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nameController,
              onChanged: (value) {
                setState(() {
                  selectedName = value;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your full-name',
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 365)), // Allow picking dates within the next year
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            primaryColor: Colors.blue, // Color for calendar header
                            colorScheme: ColorScheme.light(primary: Colors.blue), // Color for calendar days
                            dialogBackgroundColor: Colors.white, // Background color for calendar dialog
                          ),
                          child: child!,
                        );
                      },
                    );

                    if (pickedDate != null) {
                      setState(() {
                        selectedDate = pickedDate;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 26, 129, 214)),
                  child: Text(selectedDate != null
                      ? 'Selected Date: ${selectedDate!.toString().substring(0, 10)}'
                      : 'Select Date', style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () async {
                    final TimeOfDay? pickedTime = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                      builder: (BuildContext context, Widget? child) {
                        return Theme(
                          data: ThemeData.light().copyWith(
                            primaryColor: Colors.blue, // Color for time picker header
                            colorScheme: ColorScheme.light(primary: Colors.blue), // Color for time picker elements
                            dialogBackgroundColor: Colors.white, // Background color for time picker dialog
                          ),
                          child: child!,
                        );
                      },
                    );

                    if (pickedTime != null) {
                      setState(() {
                        selectedTime = pickedTime;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 26, 129, 214)),
                  child: Text(selectedTime != null
                      ? 'Selected Time: ${selectedTime!.hour}:${selectedTime!.minute}'
                      : 'Select Time', style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (selectedName.isNotEmpty && selectedDate != null && selectedTime != null) {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Your Appointment Details :'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Icon(Icons.person),
                            title: Text('Name: $selectedName'),
                          ),
                          ListTile(
                            leading: Icon(Icons.calendar_today),
                            title: Text(
                                'Date: ${selectedDate!.toString().substring(0, 10)}'),
                          ),
                          ListTile(
                            leading: Icon(Icons.access_time),
                            title: Text(
                                'Time: ${selectedTime!.hour}:${selectedTime!.minute}'),
                          ),
                        ],
                      ),
                      backgroundColor: Color(0xFFebf3ff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      elevation: 4,
                      contentPadding: EdgeInsets.all(20),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK', style: TextStyle(color: Colors.blue)),
                        ),
                      ],
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please fill all details.'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 26, 129, 214)),
              child: Text('Book Appointment',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
