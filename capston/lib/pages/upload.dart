import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';

void main() {
  runApp(UploadPdf());
}

class UploadPdf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UploadDocumentScreen(),
      debugShowCheckedModeBanner: false, // Set debug to false
    );
  }
}

class UploadDocumentScreen extends StatefulWidget {
  @override
  _UploadDocumentScreenState createState() => _UploadDocumentScreenState();
}

class _UploadDocumentScreenState extends State<UploadDocumentScreen> {
  TextEditingController nameController = TextEditingController();
  String? selectedFile;
  double uploadProgress = 0.0;

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  'Upload File',
                  style: TextStyle(
                    fontSize: 55,
                    fontFamily: 'JockeyOne',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            iconTheme: IconThemeData(color: Colors.white,size: 35), // Drawer icon color
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF191d46), // Blue hex color for drawer header
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
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Reminder'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 10), // Add spacing after the app bar
          Expanded(
            child: Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.width *
                    0.8, // Set square box size
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.upload,
                      size: 100,
                    ), // Added icon color
                    // SizedBox(height: 5),
                    Text('Drag & Drop',
                        style: TextStyle(
                          fontSize: 40,
                        )), // Added text color
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Add spacing before the Upload Document button
          Container(
            margin: EdgeInsets.only(bottom: 150),
          child: ElevatedButton(

            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(
                    builder: (context, setState) {
                      return AlertDialog(
                        title: Text('Upload Document'),
                        content: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'User Name:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  hintText: 'Enter your name',
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Choose File:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ElevatedButton(
                                onPressed: () async {
                                  // Open file picker
                                  final result =
                                      await FilePicker.platform.pickFiles();
                                  if (result != null) {
                                    setState(() {
                                      selectedFile = result.files.isNotEmpty
                                          ? result.files.first.name
                                          : selectedFile;
                                    });
                                  }
                                },
                                // SizedBox(height: 10),
                                child: Text(
                                  'Choose File',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                selectedFile ?? 'No file selected',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Upload Progress:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Stack(
                                children: [
                                  LinearProgressIndicator(
                                    value: uploadProgress,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.blue,
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${(uploadProgress * 100).toStringAsFixed(0)}%',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () async {
                              // Perform form submission
                              String userName = nameController.text;
                              if (userName.isNotEmpty && selectedFile != null) {
                                // Simulate file upload
                                for (int i = 0; i <= 100; i += 10) {
                                  await Future.delayed(
                                    Duration(milliseconds: 500),
                                  );
                                  setState(() {
                                    uploadProgress = i / 100;
                                  });
                                }

                                // Close the dialog
                                Navigator.of(context).pop();

                                // Show success message
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Upload successful'),
                                  ),
                                );
                              } else {
                                // Show error message if any field is empty
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('Please fill all details.'),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
              );
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)),
              backgroundColor: Colors.blue,
           ),
            child: Text(
              'Upload Document',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
