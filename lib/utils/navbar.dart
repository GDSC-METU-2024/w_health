import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:w_health/homePage.dart';
import 'package:w_health/screens/home/blog/blog.dart';
import 'package:w_health/screens/home/maps/doctorMap.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List Screens = [
    MapUIcustom(),
    HomePage(),
    HomePage(),
    BlogScreen(),
    MapUIcustom(),
  ];
  int _selectedIndex = 1;
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
            Icons.people,
            size: 30,
          ),
          Icon(
            Icons.location_on,
            size: 30,
          ),
          Icon(
            Icons.home,
            size: 30,
          ),
          Icon(
            Icons.newspaper,
            size: 30,
          ),
          Icon(
            Icons.person,
            size: 30,
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
