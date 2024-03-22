import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(FeedBack());
}

class FeedBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    'Feedback',
                    style: TextStyle(
                      fontSize: 55,
                      fontFamily: 'JockeyOne',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              iconTheme: IconThemeData(color: Colors.white, size: 35),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF191d46), // Hex blue color
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
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              margin: EdgeInsets.only(bottom: 45),
              width: MediaQuery.of(context).size.width *
                  0.8, // 80% of the screen width
              height: MediaQuery.of(context).size.height * 0.60,
              decoration: BoxDecoration(
                color: Color(0xFFebf3ff),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: FeedbackScreen(),
            ),
          ),
        ),
      ),
    );
  }
}

class FeedbackScreen extends StatefulWidget {
  @override
  _FeedbackScreenState createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  int _rating = 0;
  bool _isFeedbackSent = false;
  TextEditingController _feedbackController = TextEditingController();

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  void _sendFeedback() {
    if (_feedbackController.text.isNotEmpty && _rating > 0) {
      // Perform sending feedback operation
      // For demonstration purposes, we're just displaying a SnackBar
      setState(() {
        _isFeedbackSent = true;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Feedback successfully sent!'),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please give your feedback.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
          child: Text(
            'Write Feedback:',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          )
          ),
          SizedBox(height: 10.0),
          Container(
            margin: EdgeInsets.only(top: 30,bottom: 25),
          child: TextFormField(
            controller: _feedbackController,
            decoration: InputDecoration(
              hintText: 'Enter your feedback here',
              border: OutlineInputBorder(),
            ),
            maxLines: 4,
          ),
          ),
          SizedBox(height: 20.0),
          Center(
          child: Text(
            'How was your experience?',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 1; i <= 5; i++)
                InkWell(
                  onTap: () => _setRating(i),
                  child: Icon(
                    _rating >= i ? Icons.star : Icons.star_border,
                    size: 40.0,
                    color: Colors.black,
                  ),
                ),
            ],
          ),
          SizedBox(height: 20.0),
          Container(
            margin: EdgeInsets.only(top: 25),
          child: Center(
            child: ElevatedButton(
              onPressed: _sendFeedback,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
              ),
              child: Text(
                'Send Feedback',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
          ),
          SizedBox(height: 20.0),
          Center(
            child:
          _isFeedbackSent
              ? Text(
                  'Feedback successfully sent!',
                  style: TextStyle(color: Colors.green),
                )
              : SizedBox(),
          ),
        ],
      ),
    );
  }
}
