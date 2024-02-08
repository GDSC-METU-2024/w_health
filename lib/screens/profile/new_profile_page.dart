import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_health/screens/profile/posts/user_posts.dart';
import 'package:w_health/utils/utils.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  final FirebaseFirestore db = FirebaseFirestore.instance;
  String username = "";

  void firebaseDocument() async {
    var document = await db.collection('Person').doc(user.uid).get();
    Map<String, dynamic>? value = document.data();
    if (this.mounted) {
      setState(() {
        String a = value!['name'];
        username = a;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    firebaseDocument();
  }

  signUserOut() async {
    Navigator.pop(context);
    await FirebaseAuth.instance.signOut();
  }

  Future<void> popUp() {
    return showCupertinoDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Do you really want to log out?",
          style: TextStyle(fontSize: 17),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: signUserOut,
              child: Text(
                "Yes",
                style: TextStyle(color: lilia),
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Text(
                "No",
                style: TextStyle(
                  color: lilia,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 430;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // iphone1415promax5qSB (26:1636)
              width: double.infinity,
              height: 350 * fem,
              decoration: BoxDecoration(
                color: Color(0xfff6f7f9),
                borderRadius: BorderRadius.circular(40 * fem),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // rectangle1Ltj (119:190)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'assets/page-1/images/rectangle-1.png',
                          width: 431 * fem,
                          height: 330 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // avatar07MHu (111:300)
                    left: 141 * fem,
                    top: 75 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 150 * fem,
                        height: 150 * fem,
                        child: Image.asset(
                          'assets/page-1/images/avatar07.png',
                          width: 150 * fem,
                          height: 150 * fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 118 * fem,
                    top: 265 * fem,
                    child: Align(
                      child: Text(
                        user.email!,
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140 * fem,
                    top: 240 * fem,
                    child: Align(
                      child: Text(
                        username,
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => UserPostsPage())),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.all_inbox),
                        Text("My Posts"),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite),
                      Text("Favourite Doctors"),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.person),
                      Text("Personal Information"),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.settings),
                      Text("Settings"),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.help),
                      Text("Help Center"),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.privacy_tip),
                      Text("Privacy & Policy"),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: popUp,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 30,
                        ),
                        Icon(Icons.logout),
                        SizedBox(
                          width: 60,
                        ),
                        Text("Log out"),
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
