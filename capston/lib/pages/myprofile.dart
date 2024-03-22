import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});


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
                              padding: EdgeInsets.only( top: 2, bottom: 7, left: 19, right: 19),
                              margin: EdgeInsets.only( bottom: 39),
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
                                        margin: EdgeInsets.only( top:51,bottom: 5,left: 19,right: 19),
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
                                    Container(
                                      margin: EdgeInsets.only( left: 125,bottom: 3),
                                      child: Text(
                                        'My Profile',
                                        style: TextStyle(
                                          color: Color(0xFFffffff),
                                          fontSize: 64,
                                          fontFamily: 'JockeyOne',
                                          // fontWeight: FontWeight.bold
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                          IntrinsicHeight(
                            child: Container(
                              margin: EdgeInsets.only( bottom: 42, left: 38, right: 38),
                              width: double.infinity,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    IntrinsicHeight(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Color(0x407d869e),
                                        ),
                                        padding: EdgeInsets.only( top: 14),
                                        width: 100,
                                        height: 90,
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                    margin: EdgeInsets.only( bottom: 5, left: 25, right: 25),
                                                    height: 100,
                                                    width: 100,
                                                    child: Image.asset(
                                                      'assets/images/user.png',
                                                    )
                                                ),
                                              ),
                                            ]
                                        ),
                                      ),
                                    ),
                                    IntrinsicHeight(
                                      child: Text(
                                        'Simran khatri',
                                        style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 30,
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
                              padding: EdgeInsets.symmetric(vertical: 13),
                              margin: EdgeInsets.symmetric(horizontal: 92),
                              width: double.infinity,
                              child: Column(
                                  children: [
                                    Text(
                                      'Edit profile',
                                      style: TextStyle(
                                        color: Color(0xFFffffff),
                                        fontSize: 25,
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