import 'package:flutter/material.dart';

class Download extends StatelessWidget {
  const Download({super.key});


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
                  padding: EdgeInsets.only( bottom: 16),
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
                              padding: EdgeInsets.only( top: 42, bottom: 7),
                              margin: EdgeInsets.only( bottom: 32),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 5, left: 32, right: 32),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 5, left: 32, right: 32),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 7, left: 32, right: 32),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only( left: 120),
                                      child: Text(
                                        'Download PDF',
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFebf3ff),
                              ),
                              padding: EdgeInsets.only( top: 21, bottom: 36, left: 9, right: 9),
                              margin: EdgeInsets.only( bottom: 33, left: 6, right: 6),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        margin: EdgeInsets.only( bottom: 45),
                                        width: double.infinity,
                                        child: Row(
                                            children: [
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: EdgeInsets.only( right: 30),
                                                  child: Text(
                                                    '#',
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              IntrinsicHeight(
                                                child: Text(
                                                  'File ',
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 22,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  child: SizedBox(),
                                                ),
                                              ),
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: EdgeInsets.only( right: 40),
                                                  child: Text(
                                                    'View',
                                                    style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 22,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              IntrinsicHeight(
                                                child: Text(
                                                  'Download',
                                                  style: TextStyle(
                                                    color: Color(0xFF000000),
                                                    fontSize: 22,
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only( bottom: 46),
                                      child: Text(
                                        '1    return.pdf           View      Download',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only( bottom: 48),
                                      child: Text(
                                        '2    bill.pdf                View      Download',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 22,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      '3    tax.pdf                View      Download',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 22,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                              height: 311,
                              width: double.infinity,
                              child: Image.network(
                                'https://i.imgur.com/1tMFzp8.png',
                                fit: BoxFit.fill,
                              )
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