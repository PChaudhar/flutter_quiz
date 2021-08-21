import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/home.dart';
import 'dart:async';

import 'package:flutter_quiz_app/splash.dart';

import 'home.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      title: "Quiz App",
      home: splashscreen(),

    );
  }
}
