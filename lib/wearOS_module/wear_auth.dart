import 'package:w_health/wearOS_module/wear_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:w_health/wearOS_module/wear_splash.dart';

class Wear_Auth extends StatelessWidget {
  const Wear_Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Wear_Profile();
            } else {
              return wear_splash();
            }
          },
        ),
      ),
    );
  }
}
