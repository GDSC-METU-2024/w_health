import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:w_health/screens/login/authPage.dart';
import 'package:w_health/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? initScreen = 0;
/*
Future<void> main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  //await EasyLocalization.ensureInitialized();
  //SharedPreferences preferences = await SharedPreferences.getInstance();
  //initScreen = await preferences.getInt("initScreen");
  //await preferences.setInt("initScreen", 100);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt("initScreen");
  await preferences.setInt("initScreen", 100);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const AuthPage(),
    );
  }
}
