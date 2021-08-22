import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_quiz_app/home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: onboarding(),
  ));
}

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed( const Duration( seconds: 4),
            () => Navigator.push(context, MaterialPageRoute(builder: (context) => onboarding()),

        ));


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Center(
        child: Text('Welcome to play QUIZ !',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24
          ),
        ),
      ),
//      children : <Widget> [
//        Image.asset(
//
//    ),
//      ],
    );
  }
}
