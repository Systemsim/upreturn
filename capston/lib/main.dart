import 'package:flutter/material.dart';
import 'package:capston/pages/start.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get colorTheme => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Startpage(),
    );
  }
}
