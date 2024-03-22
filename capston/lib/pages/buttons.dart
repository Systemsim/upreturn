import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});


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
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                      children: [
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IntrinsicHeight(
                                  child: Container(
                                    width: 360,
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
                                              padding: EdgeInsets.only( top: 51, bottom: 8, left: 90, right: 24),
                                              margin: EdgeInsets.only( bottom: 32),
                                              width: double.infinity,
                                              child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Services',
                                                      style: TextStyle(
                                                        color: Color(0xFFffffff),
                                                        fontSize: 64,
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
                                              margin: EdgeInsets.symmetric(horizontal: 23),
                                              width: double.infinity,
                                              child: SizedBox(),
                                            ),
                                          ),
                                        ]
                                    ),
                                  ),
                                ),
                              ],
                            )
                        ),
                      ]
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