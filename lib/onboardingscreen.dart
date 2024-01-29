import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:w_health/screens/login/loginPage.dart';
import 'dart:ui';
import 'package:w_health/utils/utils.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SizedBox(
          width: double.infinity,
          child: TextButton(
            // introd1d (42:245)
            onPressed: () {},
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: Container(
              width: double.infinity,
              height: 1000 * fem,
              child: Container(
                // group70839kf (26:1807)
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40 * fem),
                ),
                child: Container(
                  // introgVh (10:1613)
                  padding: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 0 * fem, 66.5 * fem),
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xff078282)),
                    color: Color(0xfff5f7f8),
                    borderRadius: BorderRadius.circular(40 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupvenfBST (M8hDn6Vmxnx6u4RPDXvENF)
                        padding: EdgeInsets.fromLTRB(
                            62 * fem, 206 * fem, 53.5 * fem, 6.5 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group7L7 (10:1443)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 7.91 * fem, 93.28 * fem),
                              width: 304.59 * fem,
                              height: 256.72 * fem,
                              child: Image.asset(
                                'assets/page-1/images/group.png',
                                width: 304.59 * fem,
                                height: 256.72 * fem,
                              ),
                            ),
                            Container(
                              // autogroupz72jAZH (M8hDfBXdQhtSenxobNZ72j)
                              margin: EdgeInsets.fromLTRB(
                                  14.5 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: 298 * fem,
                              height: 59.5 * fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // welcometVH (10:1438)
                                    left: 15 * fem,
                                    top: 0 * fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 250 * fem,
                                        height: 30 * fem,
                                        child: Text(
                                          'WELCOME TO W-HEALTH\n',
                                          textAlign: TextAlign.center,
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 14.8107795715 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 2.0068749796 * ffem / fem,
                                            letterSpacing: 2.7399942207 * fem,
                                            color: Color(0xff079d49),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // connectwithwomenXo9 (10:1616)
                                    left: -20 * fem,
                                    top: 27.5 * fem,
                                    child: Center(
                                      child: Align(
                                        child: SizedBox(
                                          width: 320 * fem,
                                          height: 100 * fem,
                                          child: Text(
                                            'CONNECT WITH WOMEN',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Poppins',
                                              fontSize: 24 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3225 * ffem / fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // group1831B71 (10:1436)
                        padding:
                            EdgeInsets.fromLTRB(87.08 * fem, 0, 87.08 * fem, 0),
                        width: double.infinity,
                        height: 100 * fem,
                        child: Center(
                          // shareyourexperiencesaskquestio (10:1618)
                          child: SizedBox(
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: 400 * fem,
                              ),
                              child: Text(
                                'Share your experiences, ask questions and find support from a community of woman who understand',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: -0.200000003 * fem,
                                  color: Color(0xff324a59),
                                  decorationColor: Color(0xff324a59),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => LoginPage())),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffffc4dd),
                          ),
                          width: double.infinity,
                          height: 50 * fem,
                          child: const Center(
                            child: Text(
                              "GET STARTED",
                              style: TextStyle(
                                  letterSpacing: 2, color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
