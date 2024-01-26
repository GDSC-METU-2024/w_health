import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:w_health/utils/utils.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // signupLFd (8:111)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xfff6f7f9),
          borderRadius: BorderRadius.circular(40 * fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupdmv52u9 (XtZ2UC1AVGVzmivvoDMV5)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 24 * fem),
              width: double.infinity,
              height: 570 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // ellipse18wWK (8:115)
                    left: 32 * fem,
                    top: 87 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 44 * fem,
                        height: 44 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22 * fem),
                            color: Color(0xff079b49),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // iconlylightoutlinearrowrightCx (8:116)
                    left: 46.1290014998 * fem,
                    top: 102.94549719 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 15.21 * fem,
                        height: 12.5 * fem,
                        child: Image.asset(
                          'assets/page-1/images/iconly-light-outline-arrow-right-9b1.png',
                          width: 15.21 * fem,
                          height: 12.5 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // signupg6X (8:117)
                    left: 65 * fem,
                    top: 153 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 84 * fem,
                        height: 33 * fem,
                        child: Text(
                          'Sign up',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 22 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5 * ffem / fem,
                            color: Color(0xff181d2d),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // createanaccountherehGX (8:118)
                    left: 65 * fem,
                    top: 201 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 168 * fem,
                        height: 28 * fem,
                        child: Text(
                          'Create an account here',
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.9462193298 * ffem / fem,
                            color: Color(0xffaaaaaa),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group7080YH9 (8:120)
                    left: 65 * fem,
                    top: 274 * fem,
                    child: Container(
                      width: 294 * fem,
                      height: 224 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouppwwppVZ (XtZRTXhV94ukicyiyPWWP)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 0 * fem),
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 36 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group7076LsD (8:121)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 36 * fem),
                                  width: 293 * fem,
                                  height: 29 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // autogroup4awf4oD (XtZdnWVV47wZpXGMW4aWF)
                                        left: 12 * fem,
                                        top: 0 * fem,
                                        child: Container(
                                          width: 187 * fem,
                                          height: 26 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // iconlylightoutlineprofileN3D (8:184)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    12.12 * fem,
                                                    4.1 * fem),
                                                width: 11.88 * fem,
                                                height: 14.9 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/iconly-light-outline-profile.png',
                                                  width: 11.88 * fem,
                                                  height: 14.9 * fem,
                                                ),
                                              ),
                                              Container(
                                                // line17rj5 (8:125)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    19 * fem,
                                                    0.5 * fem),
                                                width: 0 * fem,
                                                height: 25.5 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/line-17-haj.png',
                                                  width: 0 * fem,
                                                  height: 25.5 * fem,
                                                ),
                                              ),
                                              Container(
                                                // labeln6w (8:122)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    2 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Create an account here',
                                                  style: SafeGoogleFont(
                                                    'Poppins',
                                                    fontSize: 12 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.9462192853 *
                                                        ffem /
                                                        fem,
                                                    color: Color(0xffaaaaaa),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // line7rsV (8:124)
                                        left: 7 * fem,
                                        top: 29 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 286 * fem,
                                            height: 0 * fem,
                                            child: Image.asset(
                                              'assets/page-1/images/line-7-hRV.png',
                                              width: 286 * fem,
                                              height: 0 * fem,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // group70789bh (8:139)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 36 * fem),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroupveuks1u (XtaCGaNA24AxqBWPhvEUK)
                                        margin: EdgeInsets.fromLTRB(11.2 * fem,
                                            0 * fem, 0 * fem, 3.5 * fem),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // autogroupxzfhn8s (XtaKS36ZUxszLUZnVxZFh)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  12.2 * fem,
                                                  3.5 * fem),
                                              width: 12.6 * fem,
                                              height: 18 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/auto-group-xzfh.png',
                                                width: 12.6 * fem,
                                                height: 18 * fem,
                                              ),
                                            ),
                                            Container(
                                              // line17fiT (8:143)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  19 * fem,
                                                  0 * fem),
                                              width: 0 * fem,
                                              height: 25.5 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/line-17-q1M.png',
                                                width: 0 * fem,
                                                height: 25.5 * fem,
                                              ),
                                            ),
                                            Container(
                                              // labelnYB (8:140)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  3.5 * fem),
                                              child: Text(
                                                'Mobile Number',
                                                style: SafeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5 * ffem / fem,
                                                  letterSpacing:
                                                      -0.200000003 * fem,
                                                  color: Color(0xffc1c7d0),
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
                                  // group7077t5R (8:126)
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // autogroupe1bz2SX (XtZuXZG7nPxhrBRqLe1bZ)
                                        margin: EdgeInsets.fromLTRB(9.75 * fem,
                                            0 * fem, 0 * fem, 3.5 * fem),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // iconlylightoutlinemessagexb5 (8:128)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  10.13 * fem,
                                                  3.87 * fem),
                                              width: 16.12 * fem,
                                              height: 14.63 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/iconly-light-outline-message-DCX.png',
                                                width: 16.12 * fem,
                                                height: 14.63 * fem,
                                              ),
                                            ),
                                            Container(
                                              // line17dBR (8:138)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  19 * fem,
                                                  0 * fem),
                                              width: 0 * fem,
                                              height: 25.5 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/line-17-yUo.png',
                                                width: 0 * fem,
                                                height: 25.5 * fem,
                                              ),
                                            ),
                                            Container(
                                              // labelY3V (8:127)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  3.5 * fem),
                                              child: Text(
                                                'Email address',
                                                style: SafeGoogleFont(
                                                  'Poppins',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.5 * ffem / fem,
                                                  letterSpacing:
                                                      -0.200000003 * fem,
                                                  color: Color(0xffc1c7d0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // line7qoH (8:137)
                                        margin: EdgeInsets.fromLTRB(
                                            7 * fem, 0 * fem, 0 * fem, 0 * fem),
                                        width: 286 * fem,
                                        height: 0 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/line-7-bhM.png',
                                          width: 286 * fem,
                                          height: 0 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group7079mB9 (8:144)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroup6s3rVsq (Xtb7psTd5e7UHznza6s3R)
                                  margin: EdgeInsets.fromLTRB(
                                      11 * fem, 0 * fem, 7 * fem, 3.5 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // lockE4j (8:149)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10.84 * fem, 5.37 * fem),
                                        width: 15.16 * fem,
                                        height: 18.13 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/lock-kDh.png',
                                          width: 15.16 * fem,
                                          height: 18.13 * fem,
                                        ),
                                      ),
                                      Container(
                                        // line17Krs (8:148)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 19 * fem, 0 * fem),
                                        width: 0 * fem,
                                        height: 25.5 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/line-17-hBh.png',
                                          width: 0 * fem,
                                          height: 25.5 * fem,
                                        ),
                                      ),
                                      Container(
                                        // labelFEj (8:145)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 156 * fem, 3.5 * fem),
                                        child: Text(
                                          'Password',
                                          style: SafeGoogleFont(
                                            'Poppins',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.5 * ffem / fem,
                                            letterSpacing: -0.200000003 * fem,
                                            color: Color(0xffc1c7d0),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // show9L7 (8:155)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 1.01 * fem),
                                        width: 18 * fem,
                                        height: 14.49 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/show-rCB.png',
                                          width: 18 * fem,
                                          height: 14.49 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // line7Ftw (8:147)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: 294 * fem,
                                  height: 0 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/line-7-oMM.png',
                                    width: 294 * fem,
                                    height: 0 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse19BGo (8:211)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 596.5 * fem,
                        height: 252.76 * fem,
                        child: Image.asset(
                          'assets/page-1/images/ellipse-19.png',
                          width: 596.5 * fem,
                          height: 252.76 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // ellipse20tBD (8:217)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          86.5 * fem, 41 * fem, 86.5 * fem, 41 * fem),
                      width: 637 * fem,
                      height: 316.82 * fem,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/page-1/images/ellipse-20-1Es.png',
                          ),
                        ),
                      ),
                      child: Container(
                        // group7072xwm (I8:217;23:57)
                        width: 369.83 * fem,
                        height: 23.33 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // time73y (I8:217;23:58)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 270.5 * fem, 0.33 * fem),
                              child: Text(
                                '9:41',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.5 * ffem / fem,
                                  letterSpacing: -0.3000000119 * fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              // cellularconnectionQYs (I8:217;23:59)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 7 * fem, 0.67 * fem),
                              width: 17 * fem,
                              height: 10.67 * fem,
                              child: Image.asset(
                                'assets/page-1/images/cellular-connection-bd5.png',
                                width: 17 * fem,
                                height: 10.67 * fem,
                              ),
                            ),
                            Container(
                              // wifivGK (I8:217;23:64)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 6.67 * fem, 0.33 * fem),
                              width: 15.33 * fem,
                              height: 11 * fem,
                              child: Image.asset(
                                'assets/page-1/images/wifi-jkf.png',
                                width: 15.33 * fem,
                                height: 11 * fem,
                              ),
                            ),
                            Container(
                              // battery363 (I8:217;23:68)
                              width: 24.33 * fem,
                              height: 11.33 * fem,
                              child: Image.asset(
                                'assets/page-1/images/battery-nRZ.png',
                                width: 24.33 * fem,
                                height: 11.33 * fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // bysigningupyouagreewithourterm (8:119)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 0 * fem),
              child: Text(
                'By signing up you agree with our Terms of Use\n',
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 12 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.9462192853 * ffem / fem,
                  color: Color(0xff324a59),
                ),
              ),
            ),
            Container(
              // autogrouptevrFT1 (Xtc7oCs8TqERdusXGteVR)
              padding:
                  EdgeInsets.fromLTRB(43 * fem, 34 * fem, 28 * fem, 61 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // buttonMkw (8:113)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 3 * fem, 87 * fem),
                    width: 354 * fem,
                    height: 60 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff079b49),
                      borderRadius: BorderRadius.circular(99 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x4c95adfe),
                          offset: Offset(0 * fem, 10 * fem),
                          blurRadius: 11 * fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Sign UP',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroup2h2tbQP (XtbQ4uPxZcEAoKv1g2h2T)
                    margin: EdgeInsets.fromLTRB(
                        13 * fem, 0 * fem, 29 * fem, 14 * fem),
                    width: double.infinity,
                    height: 45 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // line6KLP (8:215)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 14 * fem, 1 * fem),
                          width: 124 * fem,
                          height: 2 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff079b49),
                          ),
                        ),
                        Container(
                          // autogroupnxubr5R (XtbceNmorWJm94gQqNxUB)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 8 * fem, 0 * fem),
                          width: 46 * fem,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/page-1/images/ellipse-1.png',
                              ),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'OR',
                              style: SafeGoogleFont(
                                'Roboto',
                                fontSize: 15.6616315842 * ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.1725 * ffem / fem,
                                color: Color(0xff079b49),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // line5hrj (8:214)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          width: 123 * fem,
                          height: 2 * fem,
                          decoration: BoxDecoration(
                            color: Color(0xff079b49),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupesr3pAf (Xtbk9AHM9skAJ93Voesr3)
                    width: double.infinity,
                    height: 79 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // buttonZP9 (8:208)
                          left: 3 * fem,
                          top: 12 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(119.53 * fem, 16 * fem,
                                78.47 * fem, 7.97 * fem),
                            width: 354 * fem,
                            height: 55 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                              borderRadius:
                                  BorderRadius.circular(91.3783035278 * fem),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffc1c7d0),
                                  offset: Offset(0 * fem, 2 * fem),
                                  blurRadius: 10.0000009537 * fem,
                                ),
                              ],
                            ),
                            child: Container(
                              // autogroup9xsvcsD (XtbvoXBftd8798ofT9xsV)
                              padding: EdgeInsets.fromLTRB(
                                  30.47 * fem, 0 * fem, 10.53 * fem, 0 * fem),
                              width: double.infinity,
                              height: double.infinity,
                              child: Text(
                                'Login with Gmail',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.946219308 * ffem / fem,
                                  color: Color(0xff001833),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // googleremovebgpreview26XV (8:218)
                          left: 37 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 79 * fem,
                              height: 79 * fem,
                              child: Image.asset(
                                'assets/page-1/images/google-removebg-preview-2.png',
                                fit: BoxFit.cover,
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
          ],
        ),
      ),
    );
  }
}
