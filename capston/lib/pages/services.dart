import 'package:flutter/material.dart';
import 'package:capston/pages/aboutus.dart';
import 'package:capston/pages/appointment.dart';
import 'package:capston/pages/calculate.dart';
import 'package:capston/pages/contactus.dart';
import 'package:capston/pages/contactus1.dart';
import 'package:capston/pages/settings.dart';
import 'package:capston/pages/upload.dart';

void main() {
  runApp(Services());
}

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ServicesScreen(),
    );
  }
}

class ServicesScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  // List of service items
  final List<Service> services = [
    Service(
      title: 'Accounting and Book Keeping',
      information:


      '1. Understand Client Needs.\n'
          '2. Staffing Flexibility.\n'
          '3. Better Risk Management.\n'
          '4. Focus on core activities.\n'
          '5. Cut costs and save BIG!\n'
          '6. Give your business a competitive edge.\n\n\n'
          'What is Accounting and Book Keeping.?\n\n'
          '- Bookkeeping is the systematic recording and organizing of a business financial transactions.\n- It involves recording purchases, sales, receipts, and payments, classifying them into different categories, balancing accounts, and generating financial statements.\n- Its essential for financial management, tax compliance, and decision-making.'
      ,
    ),
    Service(
      title: 'Upload and Download Documents',
      information:
      'Our Company provide upload and download feature in this application as it is easy to transfer documents and also whenever you want any document you can also download it.\n\n\n'
          'What is Upload And Download Documents.?\n\n'
          '-The process of transferring web pages, photos, and files to a web server is known as uploading.\n-The process of acquiring online pages, pictures, and data from a web server is known as downloading.',
    ),
    Service(
      title: 'Gst Calculator',
      information:
      'The Goods and Services Tax (GST) calculator helps you calculate GST for your sales and purchases.\n\n'
          'Our application also has a feature of calcuting gst ou only have to enter amount and select the percentage of gst you want to calculate it will calculate it easily.\n\n '
          'It is designed to replace multiple layers of indirect taxes like sales tax and excise duty, streamlining the taxation process and reducing tax cascading or double taxation.',
    ),
    Service(
      title: 'Corporate Tax And Individual Tax Return',
      information:
      'our firm provide service of Corporate Tax And Individual Tax Return.\n\n'
          'Corporate tax is a tax imposed on the net profit of a corporation that are taxed at the corporate level in a particular jurisdiction.\n\nIndividual tax returns are the tax returns filed by individual taxpayers to report their income, expenses, and other tax-related information to the government.',
    ),
    Service(
      title: 'Financial Reporting Services',
      information:
      'Financial reporting services involve preparing and presenting financial statements and related disclosures for internal and external users.\n\nThese services ensure that financial information is accurate, relevant, and timely.\n\n'
          'These services help businesses accurately communicate their financial performance and position to stakeholders, such as investors, creditors, regulators, and management.',
    ),
    Service(
      title: 'Year and Account Preparations',
      information:
      'Year-end accounting preparations involve closing out financial accounts, reconciling balances, and preparing financial statements for the end of the fiscal year.\n\nThese preparations are essential for accurately reporting financial performance and complying with regulatory requirements.\n\n'
          'YEAR END ACCOUNTS PREPARATION SERVICES INCLUDES:\n\n'
          '1.Balance Sheet\n'
          '2.Profit and Loss Accounts\n'
          '3.Notes to the Accounts\n'
          '4.Director’s Report\n'
          '5.Tax Returns',
    ),
    Service(
      title: 'Data Entry',
      information:
      'Data entry involves inputting, updating, and maintaining data in computer systems or databases.\n\nIt is a fundamental task in various industries, including finance, healthcare, and retail.\n\n'
          'DATA ENTRY SERVICES COMPRISE OF:\n\n'
          'Online Data Entry	Offline Data Entry	Offshore Data Entry\n\n'
          'Survey Data Entry	Handwritten Data Entry	Excel Data Entry\n\n'
          'XML Data Entry	Medical Claim Data Entry	Insurance Claim Data Entry\n\n'
          'Remote Desktop Entry	Business Data Entry	PDF to Excel Data Entry\n\n'
          'And Many More....',
    ),
    // Add more services here...
  ];

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
        child:AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(50)
              )
          ),
          backgroundColor: Color(0xFF191d46),
          title: Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(top:3, bottom: 0, right: 16.0),
              child: Text(
                'Services',
                style: TextStyle(
                  fontSize: 60,
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
              onTap: () {},
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
            // Add drawer items here...
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical:25.0),
          child: ListView.builder(
            itemCount: services.length,
            itemBuilder: (context, index) {
              return Padding(padding:const EdgeInsets.symmetric(vertical:15.0),
                  child:ServiceItem(
                    service: services[index],

                  )
              );
            },
          ),
        ),
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final Service service;

  const ServiceItem({
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ServiceDetailPage(
              service: service,
            ),
          ),
        );
      },
      child: Card(
        color: Color(0xFFebf3ff),
        elevation: 4,
        shadowColor: Colors.black,
        child: ListTile(
          title: Text(service.title),
        ),
      ),
    );
  }
}

class ServiceDetailPage extends StatelessWidget {
  final Service service;

  const ServiceDetailPage({
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFebf3ff),
          title: Text(
            service.title,
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Detailed Information:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                service.title == 'Accounting and Book Keeping'
                    ? RichText(
                  text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'WHY BOOKKEEPING SERVICES WITH DIPAK KHATRI ?\n\n',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: service.information),
                    ],
                  ),
                )
                    : Text(service.information),
              ],
            )
        )
    );
  }
}

class Service {
  final String title;
  final String information;

  Service({
    required this.title,
    required this.information,
  });
}