import 'package:flutter/material.dart';

class Ap3 extends StatelessWidget {
  const Ap3({super.key});


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
                  padding: EdgeInsets.only( bottom: 100),
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
                              padding: EdgeInsets.only( top: 41, bottom: 16, left: 24, right: 24),
                              margin: EdgeInsets.only( bottom: 66),
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
                                                  margin: EdgeInsets.only( right: 46),
                                                  width: 27,
                                                  child: SizedBox(),
                                                ),
                                              ),
                                              IntrinsicHeight(
                                                child: Container(
                                                  margin: EdgeInsets.only( left: 45),
                                                  child: Text(
                                                    'Appointment',
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
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFebf3ff),
                              ),
                              padding: EdgeInsets.only( top: 33, bottom: 52),
                              margin: EdgeInsets.symmetric(horizontal: 54),
                              width: double.infinity,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only( bottom: 41, left: 13, right: 13),
                                      width: double.infinity,
                                      child: Text(
                                        'Your Appointment Consultation : ',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    IntrinsicHeight(
                                      child: Container(
                                        margin: EdgeInsets.only( bottom: 34, left: 17, right: 17),
                                        width: double.infinity,
                                        child: Row(
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only( right: 29),
                                                  width: 18,
                                                  height: 18,
                                                  child: Image.asset(
                                                    'assets/images/profile.png',
                                                    fit: BoxFit.fill,
                                                  )
                                              ),
                                              Expanded(
                                                child: IntrinsicHeight(
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: Text(
                                                      'Mansi Soni ',
                                                      style: TextStyle(
                                                        color: Color(0xFF000000),
                                                        fontSize: 16,
                                                      ),
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
                                        margin: EdgeInsets.only( bottom: 31, left: 18, right: 18),
                                        width: double.infinity,
                                        child: Row(
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only( right: 27),
                                                  width: 20,
                                                  height: 20,
                                                  child: Image.asset(
                                                    'assets/images/calendar.png',
                                                    fit: BoxFit.fill,
                                                  )
                                              ),
                                              Expanded(
                                                child: IntrinsicHeight(
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: Text(
                                                      '8-12-2023',
                                                      style: TextStyle(
                                                        color: Color(0xFF000000),
                                                        fontSize: 16,
                                                      ),
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
                                        margin: EdgeInsets.only( bottom: 34, left: 17, right: 17),
                                        width: double.infinity,
                                        child: Row(
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only( right: 29),
                                                  width: 20,
                                                  height: 20,
                                                  child: Image.asset(
                                                    'assets/images/clock.png',
                                                    fit: BoxFit.fill,
                                                  )
                                              ),
                                              Expanded(
                                                child: IntrinsicHeight(
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: Text(
                                                      '9:00 AM',
                                                      style: TextStyle(
                                                        color: Color(0xFF000000),
                                                        fontSize: 16,
                                                      ),
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
                                        margin: EdgeInsets.only( bottom: 34, left: 17, right: 17),
                                        width: double.infinity,
                                        child: Row(
                                            children: [
                                              Container(
                                                  margin: EdgeInsets.only( right: 29),
                                                  width: 20,
                                                  height: 20,
                                                  child: Image.asset(
                                                    'assets/images/calendar1.png',
                                                    fit: BoxFit.fill,
                                                  )
                                              ),
                                              Expanded(
                                                child: IntrinsicHeight(
                                                  child: Container(
                                                    width: double.infinity,
                                                    child: Text(
                                                      'Friday',
                                                      style: TextStyle(
                                                        color: Color(0xFF000000),
                                                        fontSize: 16,
                                                      ),
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
                                          borderRadius: BorderRadius.circular(20),
                                          color: Color(0xFF2079ff),
                                        ),
                                        padding: EdgeInsets.symmetric(vertical: 7),
                                        margin: EdgeInsets.only( top: 30, left: 70, right: 17),
                                        width: 170,
                                        child: Column(
                                            children: [
                                              Text(
                                                'Okay',
                                                style: TextStyle(
                                                  color: Color(0xFFffffff),
                                                  fontSize: 20,
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

                                  ]
                              ),
                            ),
                          ),

                      )

            ],
          ),
        ),
      ),

    );
  }
}
