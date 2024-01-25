import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../utils.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        child: Container(
          // signinDSs (8:281)
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff6f7f9),
            borderRadius: BorderRadius.circular(40 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroup21yfvMH (XtdoLEgRpFcD5qRZS21YF)
                width: double.infinity,
                height: 369.82 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // signinF8f (8:282)
                      left: 54 * fem,
                      top: 212 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 75 * fem,
                          height: 33 * fem,
                          child: Text(
                            'Sign in',
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
                      // ellipse21hmM (8:319)
                      left: 23 * fem,
                      top: 92 * fem,
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
                      // iconlylightoutlinearrowrightzk (8:320)
                      left: 37.1289404647 * fem,
                      top: 107.9455277075 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 15.21 * fem,
                          height: 12.5 * fem,
                          child: Image.asset(
                            'assets/page-1/images/iconly-light-outline-arrow-right.png',
                            width: 15.21 * fem,
                            height: 12.5 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse21tL3 (8:332)
                      left: 0 * fem,
                      top: -15 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 596.5 * fem,
                          height: 252.76 * fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-21.png',
                            width: 596.5 * fem,
                            height: 252.76 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse21bVM (8:333)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 637 * fem,
                          height: 316.82 * fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-21-3zj.png',
                            width: 637 * fem,
                            height: 316.82 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupvhnbFbq (XteeDzt1BPKVRiSTpvHnb)
                padding: EdgeInsets.fromLTRB(
                    37 * fem, 43.18 * fem, 33 * fem, 70 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group7071AD1 (8:286)
                      margin: EdgeInsets.fromLTRB(
                          19 * fem, 0 * fem, 46 * fem, 24 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupjcaotPu (XtfSxA2CcXHM31yN5JCAo)
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 36 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroup956bpHZ (XtfKd2uEEPD8hqG8C956B)
                                  margin: EdgeInsets.fromLTRB(
                                      9.75 * fem, 0 * fem, 0 * fem, 3.5 * fem),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // iconlylightoutlinemessagewsy (8:288)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10.13 * fem, 3.87 * fem),
                                        width: 16.12 * fem,
                                        height: 14.63 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/iconly-light-outline-message.png',
                                          width: 16.12 * fem,
                                          height: 14.63 * fem,
                                        ),
                                      ),
                                      Container(
                                        // line17SJw (8:298)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 19 * fem, 0 * fem),
                                        width: 0 * fem,
                                        height: 25.5 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/line-17-zR9.png',
                                          width: 0 * fem,
                                          height: 25.5 * fem,
                                        ),
                                      ),
                                      Container(
                                        // labelYMy (8:287)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 3.5 * fem),
                                        child: Text(
                                          'Email address',
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
                                    ],
                                  ),
                                ),
                                Container(
                                  // line7FGP (8:297)
                                  margin: EdgeInsets.fromLTRB(
                                      7 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: 286 * fem,
                                  height: 0 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/line-7.png',
                                    width: 286 * fem,
                                    height: 0 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group487aJf (8:299)
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroupfbyxifm (XtfnmvKjpwkZHzd5aFBYX)
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 7 * fem, 3.5 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // lock3T9 (8:304)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 10.84 * fem, 5.37 * fem),
                                        width: 15.16 * fem,
                                        height: 18.13 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/lock.png',
                                          width: 15.16 * fem,
                                          height: 18.13 * fem,
                                        ),
                                      ),
                                      Container(
                                        // line179m5 (8:303)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 19 * fem, 0 * fem),
                                        width: 0 * fem,
                                        height: 25.5 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/line-17.png',
                                          width: 0 * fem,
                                          height: 25.5 * fem,
                                        ),
                                      ),
                                      Container(
                                        // labeltCs (8:300)
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
                                        // showyk7 (8:310)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 1.01 * fem),
                                        width: 18 * fem,
                                        height: 14.49 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/show.png',
                                          width: 18 * fem,
                                          height: 14.49 * fem,
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
                    Container(
                      // forgotpasswordGz7 (8:285)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 12 * fem, 62 * fem),
                      child: Text(
                        'Forgot Password?',
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5 * ffem / fem,
                          letterSpacing: -0.200000003 * fem,
                          decoration: TextDecoration.underline,
                          color: Color(0xff324a59),
                          decorationColor: Color(0xff324a59),
                        ),
                      ),
                    ),
                    Container(
                      // buttonz9R (8:321)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 46 * fem),
                      width: double.infinity,
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
                          'Sign in',
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
                      // autogroup8fsbDH5 (Xte4QdtnscAbovyev8FSb)
                      margin: EdgeInsets.fromLTRB(
                          18 * fem, 0 * fem, 21 * fem, 14 * fem),
                      width: double.infinity,
                      height: 45 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // line8vhH (8:326)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 11 * fem, 0 * fem, 0 * fem),
                            width: 124 * fem,
                            height: 2 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xff079b49),
                            ),
                          ),
                          SizedBox(
                            width: 13 * fem,
                          ),
                          Container(
                            // autogroupnausq3Z (XteB9wen3STfFVuRzNaUs)
                            width: 46 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/page-1/images/ellipse-20.png',
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
                          SizedBox(
                            width: 13 * fem,
                          ),
                          Container(
                            // line7cCj (8:325)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 10.78 * fem, 0 * fem, 0 * fem),
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
                      // autogroup9ilbXqV (XteHEbrVYMHyPWDpi9iLB)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 18 * fem),
                      width: double.infinity,
                      height: 79 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // buttonefD (8:327)
                            left: 0 * fem,
                            top: 12 * fem,
                            child: Container(
                              width: 358 * fem,
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
                              child: Center(
                                child: Text(
                                  'Login with Gmail',
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.9462193807 * ffem / fem,
                                    color: Color(0xff001833),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // googleremovebgpreview1Hy5 (8:349)
                            left: 34 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 79 * fem,
                                height: 79 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/google-removebg-preview-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupnt2sbis (XtePERrvaeSh7ZiHtNT2s)
                      padding: EdgeInsets.fromLTRB(
                          92 * fem, 6 * fem, 107 * fem, 6 * fem),
                      width: double.infinity,
                      height: 55 * fem,
                      child: RichText(
                        text: TextSpan(
                          style: SafeGoogleFont(
                            'Poppins',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.9462193298 * ffem / fem,
                            color: Color(0xffaaaaaa),
                          ),
                          children: [
                            TextSpan(
                              text: 'New member? ',
                            ),
                            TextSpan(
                              text: 'Sign up',
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.9462193298 * ffem / fem,
                                color: Color(0xff079b49),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
