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
        title: 'Choose your item',
        description:
        'Easily find your grocery items and you will get delivery in wide range',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/lady1.jpeg'),
    SkOnboardingModel(
        title: 'Pick Up or Delivery',
        description:
        'We make ordering fast, simple and free-no matter if you order online or cash',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/lady2.jpeg'),
    SkOnboardingModel(
        title: 'Pay quick and easy',
        description: 'Pay for order using credit or debit card',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'assets/lady3.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: SKOnboardingScreen(
        bgColor: Colors.white,
        themeColor: const Color(0xFFf74269),
        pages: pages,
        skipClicked: (value) {
          print("Skip");
          onPressed: () {
            Navigator.push(
            context, MaterialPageRoute(builder: (context) => hamburger(),
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




//
//class PageViewModel {
//}


//class homepage extends StatefulWidget {
//  @override
//  _homepageState createState() => _homepageState();
//}
//
//class _homepageState extends State<homepage> {
//
//  List<SliderModel> slides = new List<SliderModel>();
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    slides = getSlides();
//  }
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        body: PageView.builder(
//            itemCount: slides.length,
//            itemBuilder: context, index)
//        {
//        return SliderTile()
//        }};
//    );
//  }
//}
//
//class SliderTile extends StatelessWidget {
//
//  String imageAssetPath, title, desc;
//  SliderTile ({this.imageAssetPath, this.title, this.desc});
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Column(
//        children: [
//          Image.asset(imageAssetPath),
//          SizedBox(height: 20,),
//          Text(title),
//          SizedBox(height: 12,),
//          Text(desc),
//        ],
//      ),
//    );
//  }
//}










//class homepage extends StatefulWidget {
//  @override
//  _homepageState createState() {
//    return _homepageState();
//  }
//}
//
//class _homepageState extends State<homepage> {
//  final _questions = const [
//    {
//      'questionText' : 'Q1. Who created FLUTTER?',
//      'answers' : [
//        {'text' : 'Facebook', 'score' : -2 },
//        {'text' : 'Adobe', 'score' : -2 },
//        {'text' : 'Google', 'score' : 10 },
//        {'text' : 'Microsoft', 'score' : -2 },
//      ]
//    },
//
//    {
//      'question' : 'Q2. What is Flutter?',
//      'answers' : [
//        {'text' : 'Android Development Kit', 'score' : -2},
//        {'text' : 'IOS Development Kit', 'score' : -2},
//        {'text' : 'Web Development Kit', 'score' : -2},
//        {'text' : 'SDK to build beautiful IOS, Android, Web & Desktop Native Apps', 'score' : 10},
//      ]
//    },
//
//    {
//      'questions' : 'Q3. Which programing language is used by Flutter',
//      'answers' : [
//        {'text': 'Ruby', 'score': -2},
//        {'text': 'Dart', 'score' : 10},
//        {'text': 'C++', 'score': -2},
//        {'text': 'Kotlin', 'score': -2}
//      ]
//    }
//
//
//  ];
//
//  var _questionIndex = 0;
//  var _totalScore = 0;
//
//  void _answerQuestion(int score) {
//    _totalScore += score;
//
//    setState(() {
//      _questionIndex = _questionIndex + 1;
//    });
//    print(_questionIndex);
//
//    if (_questionIndex < _questions.length) {
//      print('We have more questions!');
//    } else {
//      print('No more questions!');
//    }
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      home : Scaffold(
//        appBar: AppBar(
//          title: Text('Question PAge'),
//        ),
//        body: Padding(
//          padding: EdgeInsets.all(20.0),
//        child: _questionIndex < _question.length ? Quiz(
//        answerQuestion: _answerQuestion,
//          questionIndex: _questionIndex,
//          questions: _questions,
//        )
//            : Result(_totalScore, _resetQuiz),
//        ),
//      ),
//          debugShowCheckedModeBanner: false,
//    );
//  }
//}

//State<StatefulWidget> createState() {
//  return _homepageState();
//}