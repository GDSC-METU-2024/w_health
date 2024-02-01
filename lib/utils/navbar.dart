import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:w_health/chatbot/geminiAI.dart';
import 'package:w_health/chatbot/newUI.dart';
import 'package:w_health/homePage.dart';
import 'package:w_health/screens/home/blog/blog.dart';
import 'package:w_health/screens/home/maps/doctorMap.dart';
import 'package:w_health/screens/profile/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens = [
    MapUIcustom(),
    AINewUI(),
    HomePage(),
    BlogScreen(),
    ProfilePage(),
  ];
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: const Color(0xFFFFC4DD),
        backgroundColor: Colors.transparent,
        color: const Color(0xFFC1C7D0),
        index: _selectedIndex,
        items: const [
          Icon(
            FontAwesomeIcons.stethoscope,
            size: 25,
          ),
          Icon(
            FontAwesomeIcons.brain,
            size: 25,
          ),
          Icon(
            FontAwesomeIcons.userGroup,
            size: 25,
          ),
          Icon(
            FontAwesomeIcons.bookOpen,
            size: 25,
          ),
          Icon(
            FontAwesomeIcons.userLarge,
            size: 25,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Screens[_selectedIndex],
    );
  }
}
