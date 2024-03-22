import 'package:flutter/material.dart';
import 'package:capston/pages/login.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF191d46),
                  ),
                  padding: EdgeInsets.only( top: 80, bottom: 0),
                  width: double.infinity,
                  child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            margin: EdgeInsets.only( bottom: 60, top: 50, left: 90),
                            child: Text(
                              'Up\nReturn',
                              style: TextStyle(
                                color: Color(0xFFebf3ff),
                                fontSize: 140,
                                height: 0.50,
                                fontFamily: 'Jomhuria',
                              ),
                            ),
                          ),
                          /*Container(
                            margin: EdgeInsets.only( bottom: 0, top: 0, left: 100),
                            child: Text(
                              'Return',
                              style: TextStyle(
                                color: Color(0xFFffffff),
                                fontSize: 90,
                                fontFamily: 'Jomhuria',
                              ),
                            ),
                          ),*/
                          Container(
                              margin: EdgeInsets.only( bottom: 130),
                              height: 300,
                              width: double.infinity,
                              child: Image.asset('assets/images/start.png')
                          ),
                          /*Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: Color(0xFFc45e15),
                            ),*/
                            /*padding: EdgeInsets.only( top: 29, bottom: 5, left: 68, right: 53),
                            margin: EdgeInsets.only( left: 165, right: 16),
                            transform: Matrix4.translationValues(0, -70, 0),
                            width: 197,
                            height: 80,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'start',
                                    style: TextStyle(
                                      color: Color(0xFFffffff),
                                      fontSize: 30,
                                    ),
                                  ),
                                ]
                            ),*/
                            SizedBox(height: 20),
                            SizedBox(width: double.infinity,
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child:Container(
                              width: 190,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(150, 70),
                                  backgroundColor: Color.fromRGBO(197, 95, 21, 35),
                                  elevation: 20,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Login(), // Replace YourNextPage with the name of your desired page
                                    ),
                                  );
                                },
                                child: Text(
                                  'Start',
                                  style: TextStyle(
                                    color: Colors.white,
                                   // fontWeight: FontWeight.bold,
                                    fontFamily: 'Jomhuria',
                                    height: 1.2,
                                    fontSize: 70,
                                  ),
                                ),
                              ),
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