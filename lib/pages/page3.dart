import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int counter = 0;
  double radius = 10.0;
  String imagepath = "assets/image.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/green.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
