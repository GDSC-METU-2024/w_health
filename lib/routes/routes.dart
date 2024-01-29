import 'package:get/get.dart';
import 'package:w_health/homePage.dart';

import '../utils/navbar.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: () => const BottomNavBar()),
    GetPage(name: home, page: () => const HomePage()),
  ];

  static String navbar = "/";
  static String home = "/home";

  static getNavBar() => navbar;
  static getHome() => home;
}
