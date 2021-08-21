import 'package:flutter/material.dart';

class hamburger extends StatefulWidget {
  @override
  _hamburgerState createState() => _hamburgerState();
}

class _hamburgerState extends State<hamburger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
    appBar:AppBar(
      title: Text("Drawer menu"),
    );
      drawer: Drawer();
  }
}
