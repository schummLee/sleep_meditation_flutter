import 'package:flutter/material.dart';
import 'package:sleep_test/screens/my_flutter_app_icons.dart';
import 'package:sleep_test/pages/home_page.dart';
import 'package:sleep_test/pages/page2.dart';
import 'package:sleep_test/pages/page3.dart';
import 'package:sleep_test/pages/page4.dart';
import 'package:sleep_test/pages/common_widget.dart';
import 'package:sleep_test/pages/constant.dart';
import 'package:sleep_test/screens/song_page.dart';
import 'package:sleep_test/views/home.dart';

import 'package:sleep_test/json/songs_json.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  static const double _playerMinHeight = 60.0;

  int _selectedIndex = 0;

  final _screens = [
    Page1(),
    Page2(),
    Page3(),
    Page4(),
  ];

  _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 500,
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: _onTapped,
            selectedFontSize: 10.0,
            unselectedFontSize: 10.0,
            elevation: 10,
            backgroundColor: primaryColor,
            items: const [
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.assignment_turned_in),
                activeIcon: Icon(Icons.home),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.explore_outlined),
                activeIcon: Icon(Icons.explore),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.subscriptions_outlined),
                activeIcon: Icon(Icons.subscriptions),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(Icons.audiotrack),
                activeIcon: Icon(Icons.video_library),
                label: '',
              ),
            ],
          ),
        ));
  }
}
