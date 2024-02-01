import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:w_health/chatbot/chatBot.dart';
import 'package:w_health/utils/utils.dart';

class AINewUI extends StatefulWidget {
  const AINewUI({Key? key}) : super(key: key);
  @override
  State<AINewUI> createState() => _AINewUIState();
}

class _AINewUIState extends State<AINewUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x44000000),
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
                top: 100,
                right: 0,
                child: Container(
                  height: 300,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(200),
                      topLeft: Radius.circular(200),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromRGBO(254, 196, 221, 0.5),
                        Color.fromRGBO(192, 159, 248, 0.5),
                      ],
                    ),
                  ),
                )),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 60.0, sigmaY: 60.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 30.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'How may I help you today?',
                        textAlign: TextAlign.left,
                        style: SafeGoogleFont(
                          'Poppins',
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                          height: 1.25,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    GestureDetector(
                      onTap: () {
                        // Your onTap logic here
                        print('Container tapped!');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatBot(
                                    page: 0,
                                  )),
                        );
                      },
                      child: Container(
                        height: 104,
                        margin: EdgeInsets.only(left: 16, top: 5, right: 16),
                        width: 183,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(192, 159, 248, 0.9),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 11, right: 11, top: 11),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      'assets/chatbot/images/Conversation1.png', // Replace with your image URL
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 11, right: 11, top: 11),
                              child: Text(
                                'Chat with Bot!',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.25,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Your onTap logic here
                        print('Container tapped!');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatBot(
                                    page: 1,
                                  )),
                        );
                      },
                      child: Container(
                        height: 104,
                        margin: EdgeInsets.only(left: 16, top: 10, right: 16),
                        width: 183,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(254, 196, 221, 0.9),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 11, right: 11, top: 11),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    padding: EdgeInsets.all(5.0),
                                    child: Image.asset(
                                      'assets/chatbot/images/Picture1.png', // Replace with your image URL
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    width: 40.0,
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black.withOpacity(0.2),
                                    ),
                                    child: Icon(
                                      Icons.arrow_forward,
                                      size: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 11, right: 11, top: 11),
                              child: Text(
                                'Search by Image!',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  height: 1.25,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "History",
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              height: 1.25,
                              color: Colors.white.withOpacity(0.8),
                            ),
                          ),
                          Text(
                            "see all",
                            style: SafeGoogleFont(
                              'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              height: 1.25,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          )
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: 68,
                          margin: EdgeInsets.only(left: 16, top: 10, right: 16),
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(254, 196, 221, 0.9)
                                .withOpacity(0),
                            border: Border.all(
                              color: Colors.grey.shade900,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(254, 196, 221, 0.9),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/chatbot/images/Picture1.png', // Replace with your image URL
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "My period cycles are no longer regular...",
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Colors.grey.withOpacity(0.6),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 68,
                          margin: EdgeInsets.only(left: 16, top: 10, right: 16),
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(254, 196, 221, 0.9)
                                .withOpacity(0),
                            border: Border.all(
                              color: Colors.grey.shade900,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(192, 159, 248, 0.9),
                                  ),
                                  padding: EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/chatbot/images/Conversation1.png', // Replace with your image URL
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "image123?",
                                  style: SafeGoogleFont(
                                    'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                    height: 1.25,
                                    color: Colors.white.withOpacity(0.8),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.black.withOpacity(0.2),
                                  ),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: Colors.grey.withOpacity(0.6),
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
