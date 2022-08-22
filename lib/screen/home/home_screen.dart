import 'package:flight_booking_ui/common/constants/colors.dart';
import 'package:flight_booking_ui/screen/home/home.dart';
import 'package:flight_booking_ui/screen/home/profile.dart';
import 'package:flight_booking_ui/screen/home/tabbar-my-trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'explore.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Explore(),
    TabbarMy_Trip(),
    Profile(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kWhite,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.search,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
              MaterialIcons.search,
              color: kBlue,
              size: 30,
            ),
            // backgroundColor: kBlue,
            label: (''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.explore,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
              MaterialIcons.explore,
              color: kBlue,
              size: 30,
            ),
            label: (''),
            // backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.suitcaseRolling,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
              FontAwesomeIcons.suitcaseRolling,
              color: kBlue,
              size: 30,
            ),
            label: (''),
            // backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.person,
              color: Colors.grey,
              size: 30,
            ),
            activeIcon: Icon(
              MaterialIcons.person,
              color: kBlue,
              size: 30,
            ),
            label: (''),
            // backgroundColor: Colors.green,
          ),
        ],
        // currentIndex: tabIndex,
        // onTap: (int index) {
        //   setState(() {
        //     tabIndex = index;
        //   });
        // },
      ),
    );
  }
}
