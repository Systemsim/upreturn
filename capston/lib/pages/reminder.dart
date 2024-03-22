import 'package:flutter/material.dart';

class Reminder extends StatelessWidget {
  const Reminder({super.key});


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
                  padding: EdgeInsets.only( bottom: 341),
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
                              padding: EdgeInsets.only( top: 43, bottom: 14, left: 23, right: 23),
                              margin: EdgeInsets.only( bottom: 54),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 5),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 5),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Color(0xFFd9d9d9),
                                      ),
                                      margin: EdgeInsets.only( bottom: 5),
                                      width: 27,
                                      height: 3,
                                      child: SizedBox(),
                                    ),
                                    IntrinsicHeight(
                                      child: Container(
                                        width: double.infinity,
                                        child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              IntrinsicHeight(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(40),
                                                    color: Color(0xFFd9d9d9),
                                                  ),
                                                  margin: EdgeInsets.only( right: 121),
                                                  width: 27,
                                                  child: SizedBox(),
                                                ),
                                              ),
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: EdgeInsets.only( left: 41),
                                                  child: Text(
                                                    'Reminder',
                                                    style: TextStyle(
                                                      color: Color(0xFFffffff),
                                                      fontFamily: 'JockeyOne',
                                                      fontSize: 48,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              margin: EdgeInsets.only( bottom: 46, left: 37, right: 37),
                              width: double.infinity,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        color: Color(0xFF5e9bff),
                                        padding: EdgeInsets.only( top: 57, bottom: 13),
                                        width: 150,
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: EdgeInsets.only( right: 11),
                                                  child: Text(
                                                    '20',
                                                    style: TextStyle(
                                                      color: Color(0xFFffffff),
                                                      fontSize: 48,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: EdgeInsets.only( top: 16),
                                                  child: Text(
                                                    'Dec',
                                                    style: TextStyle(
                                                      color: Color(0xFFffffff),
                                                      fontSize: 20,
                                                    ),
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
                                        padding: EdgeInsets.only( top: 57, bottom: 13, left: 20, right: 25),
                                        width: 150,
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              IntrinsicHeight(
                                                child: Text(
                                                  '30',
                                                  style: TextStyle(
                                                    color: Color(0xFFffffff),
                                                    fontSize: 48,
                                                  ),
                                                ),
                                              ),
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: EdgeInsets.only( top: 16),
                                                  child: Text(
                                                    'Nov',
                                                    style: TextStyle(
                                                      color: Color(0xFFffffff),
                                                      fontSize: 20,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          Container(
                            color: Color(0xFF5e9bff),
                          padding: EdgeInsets.only( top: 51, bottom: 13, left: 20, right: 25),
                            margin: EdgeInsets.symmetric(horizontal: 37),
                            width: 150,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: EdgeInsets.only( bottom: 20, right: 9),
                                      child: Text(
                                        '30',
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontSize: 48,
                                        ),
                                      ),
                                    ),
                                  ),
                                  IntrinsicHeight(
                                    child: Container(
                                      margin: EdgeInsets.only( top: 15),
                                      child: Text(
                                        'Sept',
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]
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