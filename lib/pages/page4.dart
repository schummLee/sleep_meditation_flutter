import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  int counter = 0;
  double radius = 10.0;
  String imagepath = "assets/image.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/grey_blue.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
