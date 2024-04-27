import 'package:w_health/wearOS_module/wear_intro.dart';
import 'package:w_health/wearOS_module/wear_login.dart';
import '../main.dart';
import 'package:flutter/material.dart';

class wear_splash extends StatefulWidget {
  const wear_splash({super.key});

  @override
  wear_splashState createState() => wear_splashState();
}

class wear_splashState extends State<wear_splash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: initScreen == 0 || initScreen == null ? "onboard" : "home",
      routes: {
        "onboard": (context) => const Intro_Wear(),
        "home": (context) => wear_login(),
      },
    );
  }
}
