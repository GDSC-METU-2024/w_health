import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_health/screens/profile/IDverify/id_scan.dart';
import 'package:w_health/utils/utils.dart';

class IDIntro extends StatefulWidget {
  const IDIntro({super.key});

  @override
  State<IDIntro> createState() => _IDIntroState();
}

class _IDIntroState extends State<IDIntro> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
        elevation: 0,
        title: const Text(""),
        backgroundColor: Color.fromRGBO(255, 196, 221, 1),
      ),
      backgroundColor: Color.fromRGBO(255, 196, 221, 1),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
              child: SizedBox(
            width: 250 * fem,
            height: 250 * fem,
            child: Image.asset(
              'assets/id/idcard.png',
              width: 150 * fem,
              height: 150 * fem,
            ),
          )),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)
                  ),
                  color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(height: 15.0),
                  Container(
                    height: 3,
                    width: 50,
                    color: Colors.grey.shade400,
                  ),
                  SizedBox(height: 15.0),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'ID Verification',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        height: 1.25,
                        color: Color.fromRGBO(38, 21, 21, 1.0),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25,right:25),
                        child: Column(
                          children: [
                            SizedBox(height: 20,),
                            Text(
                              "Verifying your identity adds credibility to your profile. \n Other users are more likely to trust the information you share, whether it's personal experiences in forums or recommendations for healthcare professionals.",
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 1.25,
                                color: Colors.black.withOpacity(0.8),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GestureDetector(
                      child:
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(192, 159, 248, 0.9),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        width: 220*fem,
                        child: Padding(
                          padding: const EdgeInsets.all(11),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Verify Now!',
                                style: SafeGoogleFont(
                                  'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  height: 1.25,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                              ),
                              SizedBox(width: 15,),
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                child: Image.asset("assets/id/recog.png"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: ()=> Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => IDScan())),
                    ),
                  ),
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
