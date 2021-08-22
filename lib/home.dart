import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/painting.dart';
import 'package:sk_onboarding_screen/sk_onboarding_model.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

import 'hamburger.dart';


class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {

  final pages = [
    SkOnboardingModel(
        title: 'Choose your an Option',
        description:
        'Easily read-out your question and you will get into another page',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/lady1.jpeg'),
    SkOnboardingModel(
        title: 'Proceed to another Page',
        description:
        'We make easy, simple application for playing quiz',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/lady2.jpeg'),
    SkOnboardingModel(
        title: 'Play quick and easy',
        description: 'Play for earning scores',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/lady3.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: const Color(0xFFf74269),
        pages: pages,
        skipClicked: (value) {
          print("Skip");
          onPressed: () {
            Navigator.push(
            context, MaterialPageRoute(builder: (context) => homepage(),
));
          };
        getStartedClicked: (value) {
          print("Get Started");
        };
      }
      )
      ));
  }
}