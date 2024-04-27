import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_health/screens/profile/posts/user_posts.dart';
import 'package:w_health/utils/utils.dart';
import 'package:w_health/wearOS_module/wear_medicine/wear_MedicinePage.dart';

class Wear_Profile extends StatefulWidget {
  const Wear_Profile({super.key});

  @override
  State<Wear_Profile> createState() => _Wear_ProfileState();
}

class _Wear_ProfileState extends State<Wear_Profile> {
  final user = FirebaseAuth.instance.currentUser!;
  final FirebaseFirestore db = FirebaseFirestore.instance;
  String username = "";
  bool verified = false;

  void firebaseDocument() async {
    var document = await db.collection('Person').doc(user.uid).get();
    Map<String, dynamic>? value = document.data();
    if (this.mounted) {
      setState(() {
        String a = value!['name'];
        username = a;
        verified = value['verified'] ?? false;
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
          style: TextStyle(fontSize: 10),
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
                style: TextStyle(
                  color: lilia,
                  fontSize: 10,
                ),
              ),
            ),
            const SizedBox(width: 15),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Text(
                "No",
                style: TextStyle(
                  color: lilia,
                  fontSize: 10,
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
                  Align(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: 150 * fem,
                          height: 150 * fem,
                          child: Image.asset(
                            'assets/page-1/images/avatar07.png',
                            width: 150 * fem,
                            height: 150 * fem,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              username,
                              style: TextStyle(
                                fontFamily: "Raleway",
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(verified
                                ? Icons.verified
                                : Icons.verified_outlined),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
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
                        Icon(
                          Icons.all_inbox,
                          size: 15,
                        ),
                        Text(
                          "Posts",
                          style: TextStyle(fontSize: 12),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => WearMedicinePage())),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.medical_services_outlined,
                          size: 15,
                        ),
                        Text(
                          "Medicines",
                          style: TextStyle(fontSize: 12),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.person,
                        size: 15,
                      ),
                      Text(
                        "Personal Info",
                        style: TextStyle(fontSize: 10),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /* GestureDetector(
                    onTap: () => Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => AddDevice())),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.watch),
                        Text("Add Wearable Device"),
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
                  ), */
                  GestureDetector(
                    onTap: popUp,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.logout,
                          size: 15,
                        ),
                        Text(
                          "Log out",
                          style: TextStyle(fontSize: 10),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
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
