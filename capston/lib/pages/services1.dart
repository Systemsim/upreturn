import 'package:flutter/material.dart';

class Services1 extends StatelessWidget {
  const Services1({super.key});


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
                  padding: EdgeInsets.only( bottom: 63),
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
                              padding: EdgeInsets.only( top: 52, bottom: 6, left: 24, right: 24),
                              margin: EdgeInsets.only( bottom: 37),
                              width: double.infinity,
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: IntrinsicHeight(
                                        child: Container(
                                          margin: EdgeInsets.only( right: 4),
                                          width: double.infinity,
                                          child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                IntrinsicHeight(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40),
                                                      color: Color(0xFFd9d9d9),
                                                    ),
                                                    margin: EdgeInsets.only( top:21,bottom: 5,left: 19,right: 19),
                                                    width: 25,
                                                    height: 3,
                                                    child: SizedBox(),
                                                  ),
                                                ),
                                                IntrinsicHeight(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40),
                                                      color: Color(0xFFd9d9d9),
                                                    ),
                                                    margin: EdgeInsets.only( bottom: 5,left: 19,right: 19),
                                                    width: 25,
                                                    height: 3,
                                                    child: SizedBox(),
                                                  ),
                                                ),
                                                IntrinsicHeight(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(40),
                                                      color: Color(0xFFd9d9d9),
                                                    ),
                                                    margin: EdgeInsets.only( bottom: 5,left: 19,right: 19),
                                                    width: 25,
                                                    height: 3,
                                                    child: SizedBox(),
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ),
                                    ),
                                    IntrinsicHeight(
                                      child: Container(
                                        margin: EdgeInsets.only( top: 1),
                                        child: Text(
                                          'Services',
                                          style: TextStyle(
                                            color: Color(0xFFffffff),
                                            fontFamily: 'JockeyOne',
                                            fontSize: 64,
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
                              decoration: BoxDecoration(
                                color: Color(0xFFebf3ff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4D000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.only( top: 24, bottom: 93, left: 28, right: 28),
                              margin: EdgeInsets.only( bottom: 68, left: 23, right: 23),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      child: Text(
                                        'Corporate tax and Individual tax returns',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
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
                                color: Color(0xFFebf3ff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4D000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.only( top: 26, bottom: 106, left: 28, right: 28),
                              margin: EdgeInsets.only( bottom: 68, left: 22, right: 22),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Financial reporting services',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFebf3ff),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x4D000000),
                                    blurRadius: 4,
                                    offset: Offset(0, 4),
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.only( top: 22, bottom: 110, left: 27, right: 27),
                              margin: EdgeInsets.symmetric(horizontal: 22),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Year and account preparations',
                                      style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
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