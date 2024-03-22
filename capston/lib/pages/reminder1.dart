import 'package:flutter/material.dart';

class Reminder1 extends StatelessWidget {
  const Reminder1({super.key});


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
                  color: Color(0xFFffffff),
                  padding: EdgeInsets.only( bottom: 50),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(40),
                                  bottomLeft: Radius.circular(40),
                                ),
                                color: Color(0xFF191d46),
                              ),
                              padding: EdgeInsets.only( top: 39, bottom: 13, right: 25),
                              margin: EdgeInsets.only( bottom: 16),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 5, left: 25),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 5, left: 25),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 4, left: 25),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only( left: 200),
                                      child: Text(
                                        'Reminder',
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontFamily: 'JockeyOne',
                                          fontSize: 48,
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              color: Color(0xFF5e9bff),
                              padding: EdgeInsets.only( top: 98, bottom: 6, left: 35, right: 35),
                              margin: EdgeInsets.only( bottom: 73),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        margin: EdgeInsets.only( bottom: 4),
                                        width: double.infinity,
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: EdgeInsets.only( right: 6),
                                                  child: Text(
                                                    '20',
                                                    style: TextStyle(
                                                      color: Color(0xFFffffff),
                                                      fontSize: 48,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: IntrinsicHeight(
                                                  child: Container(
                                                    margin: EdgeInsets.only( top: 21),
                                                    width: double.infinity,
                                                    child: Text(
                                                      'Dec',
                                                      style: TextStyle(
                                                        color: Color(0xFFffffff),
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Gst Due Date Reminder',
                                      style: TextStyle(
                                        color: Color(0xFFffffff),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              color: Color(0xFFebf3ff),
                              padding: EdgeInsets.only( top: 27, bottom: 16, left: 30, right: 36),
                              margin: EdgeInsets.only( bottom: 17),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Bharat Shah',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 24,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              color: Color(0xFFebf3ff),
                              padding: EdgeInsets.only( top: 27, bottom: 16, left: 28, right: 28),
                              margin: EdgeInsets.only( bottom: 17),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Ashwin Patel',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 24,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              color: Color(0xFFebf3ff),
                              padding: EdgeInsets.only( top: 26, bottom: 26, left: 30, right: 30),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Umesh Pandya ',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 24,
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