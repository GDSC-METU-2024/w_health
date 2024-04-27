import 'package:w_health/wearOS_module/wear_auth.dart';
import "package:flutter/material.dart";

import '../utils/utils.dart';

class Intro_Wear extends StatefulWidget {
  const Intro_Wear({super.key});

  @override
  State<Intro_Wear> createState() => _Intro_WearState();
}

class _Intro_WearState extends State<Intro_Wear> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Welcome to \n W-Health!',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 40 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      letterSpacing: -0.200000003 * fem,
                      color: Color(0xff079d49),
                      decorationColor: Color(0xff324a59),
                    ),
                    //style: GoogleFonts.notoSerif(
                    //    fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5.0,
                    right: 5.0,
                    top: 0,
                    bottom: 0,
                  ),
                  child: Image.asset(
                    'assets/page-1/images/group-skP.png',
                    height: 50,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    'Share your experiences, ask questions and find support from a community of woman who understand.',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Poppins',
                      fontSize: 32 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.5 * ffem / fem,
                      letterSpacing: -0.200000003 * fem,
                      color: Color(0xff324a59),
                      decorationColor: Color(0xff324a59),
                    ),
                    //style: GoogleFonts.notoSerif(
                    //    fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Wear_Auth();
                      },
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Color(0xffffc4dd),
                    ),
                    child: Text(
                      "Get Started",
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.5 * ffem / fem,
                        letterSpacing: -0.200000003 * fem,
                        color: Colors.white,
                        decorationColor: Color(0xff324a59),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
