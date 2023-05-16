import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int counter = 0;
  double radius = 10.0;
  String imagepath = "assets/image.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/purple.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
