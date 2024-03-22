import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/services.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(Calc());
}

class Calc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GstScreen(),
    );
  }
}

class GstScreen extends StatefulWidget {
  @override
  _GstScreenState createState() => _GstScreenState();
}

class _GstScreenState extends State<GstScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController totalAmountController = TextEditingController();
  TextEditingController gstPercentageController = TextEditingController();
  double gstAmount = 0;
  double totalAmount = 0;

  @override
  void dispose() {
    totalAmountController.dispose();
    gstPercentageController.dispose();
    super.dispose();
  }

  void calculate() {
    setState(() {
      double total = double.tryParse(totalAmountController.text) ?? 0;
      double percentage = double.tryParse(gstPercentageController.text) ?? 0;
      gstAmount = (total * percentage) / 100;
      totalAmount = total + gstAmount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(35),
            ),
          ),
          backgroundColor: Color(0xFF191d46),
          title: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(top:3, bottom: 0, right: 16.0),
              child: Text(
                'Gst Calculator',
                style: TextStyle(
                  fontSize: 60,
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
            ),
            onPressed: () {
              _scaffoldKey.currentState!.openDrawer();
            },
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
              onTap: () {
                Navigator.push(
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
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Total Amount (Without GST)',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    // Icon(Icons.attach_money_rounded, color: Color(0xFF191d46)),
                    SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        controller: totalAmountController,
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                          hintText: 'Enter total amount',
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(IconData(0xf04e1, fontFamily: 'MaterialIcons')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,
                width: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'Select GST Rates',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        gstPercentageController.text = '3';
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFebf3ff)),
                      child: Text('3%',style: TextStyle(
                          color: Colors.black
                      ),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        gstPercentageController.text = '5';
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFebf3ff)),
                      child: Text('5%',style: TextStyle(
                          color: Colors.black
                      ),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        gstPercentageController.text = '12';
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFebf3ff)),
                      child: Text('12%',style: TextStyle(color: Colors.black),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        gstPercentageController.text = '18';
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFebf3ff)),
                      child: Text('18%',style: TextStyle(color: Colors.black),),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        gstPercentageController.text = '28';
                      },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFebf3ff)),
                      child: Text('28%',style: TextStyle(color: Colors.black),),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'GST Percentage',
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: gstPercentageController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    hintText: 'Selected Rates',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(const IconData(0xf035e, fontFamily: 'MaterialIcons',)),
                  ),
                ),
              ),
              SizedBox(height: 20,
                width: 50,),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 34, 95, 186),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7))
                  ),
                  onPressed: calculate,
                  child: Text('Calculate',style: TextStyle(color: Colors.white,
                    fontSize: 25,
                  ),),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GST Amount:',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFebf3ff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '₹ $gstAmount',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Amount (with GST):',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFebf3ff),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        '₹ $totalAmount',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}