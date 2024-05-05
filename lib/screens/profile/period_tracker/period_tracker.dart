import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TrackerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Period Cycle Tracker",
          style: GoogleFonts.getFont(
            'DM Sans',
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF6F6F6),
            borderRadius: BorderRadius.circular(40),
          ),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(27, 25, 27, 75),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0.5, 0, 0.5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 12.9, 50),
                                  child: Text(
                                    'Saturday',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22,
                                      color: Color(0xFF3A276A),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1.5, 0, 1.5),
                                  child: Text(
                                    'February 4th, 2023',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 30,
                            height: 30,
                            child: SvgPicture.asset(
                              'assets/vectors/bell_10_x2.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(0, 25, 0, 15),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 18),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFF3A276A),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              34.2, 10, 34.2, 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'S',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.3,
                                                  height: 1,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF86D8DC),
                                                ),
                                              ),
                                              Text(
                                                'M',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.3,
                                                  height: 1,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                              Text(
                                                'T',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.3,
                                                  height: 1,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                              Text(
                                                'W',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.3,
                                                  height: 1,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                              Text(
                                                'T',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.3,
                                                  height: 1,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                              Text(
                                                'F',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.3,
                                                  height: 1,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFFFFFFFF),
                                                ),
                                              ),
                                              Text(
                                                'S',
                                                style: GoogleFonts.getFont(
                                                  'DM Sans',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.3,
                                                  height: 1,
                                                  letterSpacing: -0.4,
                                                  color: Color(0xFF86D8DC),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13, 16, 13, 9),
                                                      child: Text(
                                                        '01',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color:
                                                              Color(0xFF7047A3),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13,
                                                              15.8,
                                                              13,
                                                              9.2),
                                                      child: Text(
                                                        '02',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color:
                                                              Color(0xFF7047A3),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              12.3,
                                                              15.9,
                                                              12.2,
                                                              9.1),
                                                      child: Text(
                                                        '03',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color:
                                                              Color(0xFF7047A3),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFF6F6F6),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            22.5),
                                                  ),
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            13, 16, 13, 9),
                                                    child: Text(
                                                      '04',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'DM Sans',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 20.3,
                                                        height: 1,
                                                        color:
                                                            Color(0xFF7047A3),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9,
                                                                15.9,
                                                                9.2,
                                                                9.1),
                                                        child: Text(
                                                          '05',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                8.5,
                                                                15.9,
                                                                9.4,
                                                                9.1),
                                                        child: Text(
                                                          '06',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                8.7,
                                                                16,
                                                                11.4,
                                                                9),
                                                        child: Text(
                                                          '07',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9.9,
                                                                16,
                                                                8.4,
                                                                9),
                                                        child: Text(
                                                          '08',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9.4,
                                                                15.8,
                                                                8.5,
                                                                9.2),
                                                        child: Text(
                                                          '09',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                12.3,
                                                                15.9,
                                                                12.2,
                                                                9.1),
                                                        child: Text(
                                                          '10',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              16.9,
                                                              16,
                                                              15.2,
                                                              9),
                                                      child: Text(
                                                        '11',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color:
                                                              Color(0xFF7047A3),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9,
                                                                15.9,
                                                                9.2,
                                                                9.1),
                                                        child: Text(
                                                          '12',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                8.5,
                                                                15.9,
                                                                9.4,
                                                                9.1),
                                                        child: Text(
                                                          '13',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                8.7,
                                                                16,
                                                                11.4,
                                                                9),
                                                        child: Text(
                                                          '14',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9.9,
                                                                16,
                                                                8.4,
                                                                9),
                                                        child: Text(
                                                          '15',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9.4,
                                                                15.8,
                                                                8.5,
                                                                9.2),
                                                        child: Text(
                                                          '16',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                12.3,
                                                                15.9,
                                                                12.2,
                                                                9.1),
                                                        child: Text(
                                                          '17',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.red,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              15, 16, 15.2, 9),
                                                      child: Text(
                                                        '18',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9,
                                                                15.9,
                                                                9.2,
                                                                9.1),
                                                        child: Text(
                                                          '19',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                8.5,
                                                                15.9,
                                                                9.4,
                                                                9.1),
                                                        child: Text(
                                                          '20',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                8.7,
                                                                16,
                                                                11.4,
                                                                9),
                                                        child: Text(
                                                          '21',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.red,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9.9,
                                                                16,
                                                                8.4,
                                                                9),
                                                        child: Text(
                                                          '22',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                9.4,
                                                                15.8,
                                                                8.5,
                                                                9.2),
                                                        child: Text(
                                                          '23',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(22.5),
                                                      ),
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                12.3,
                                                                15.9,
                                                                12.2,
                                                                9.1),
                                                        child: Text(
                                                          '24',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'DM Sans',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            fontSize: 20.3,
                                                            height: 1,
                                                            color: Color(
                                                                0xFF7047A3),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 16, 13, 12),
                                                      child: Text(
                                                        '25',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color:
                                                              Color(0xFF7047A3),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13, 15, 13, 10),
                                                      child: Text(
                                                        '26',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color:
                                                              Color(0xFF7047A3),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13, 15, 13, 9.1),
                                                      child: Text(
                                                        '27',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color:
                                                              Color(0xFF7047A3),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF6F6F6),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13, 16, 13, 9),
                                                      child: Text(
                                                        '28',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'DM Sans',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 20.3,
                                                          height: 1,
                                                          color:
                                                              Color(0xFF7047A3),
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
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 5, 25),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 5,
                            sigmaY: 5,
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xFF000000)),
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFFFFFFF),
                            ),
                            child: Container(
                              padding:
                                  EdgeInsets.fromLTRB(100, 18.5, 100, 18.5),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xFF3A276A),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Add a new event',
                                    style: GoogleFonts.getFont(
                                      'DM Sans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20.3,
                                      color: Color(0xFF3A276A),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 80,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF3A276A),
                    border: Border(
                      bottom: BorderSide(
                        color: Color(0xFFFFFFFF),
                        width: 1,
                      ),
                    ),
                  ),
                  child: SizedBox(
                    width: 430,
                    height: 120,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 22, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Text(
                              'Your next period will start on the',
                              style: GoogleFonts.getFont(
                                'DM Sans',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                height: 1,
                                letterSpacing: -0.4,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(14.2, 11, 14.2, 11),
                              child: Text(
                                '18th of this month',
                                style: GoogleFonts.getFont(
                                  'DM Sans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20.3,
                                  height: 1,
                                  letterSpacing: -0.4,
                                  color: Color(0xFF3A276A),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
