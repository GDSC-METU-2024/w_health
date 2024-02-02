import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:w_health/screens/home/forum/create_forum_post.dart';
import 'package:w_health/screens/home/forum/forum_page.dart';
import 'dart:ui';
import 'utils/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forum Page"),
      ),
      body: ListView(
        children: [
          forumRow(context, "Gynaecology", "34"),
          forumRow(context, "Hair Loss", "62"),
          forumRow(context, "Pregnancy", "112"),
          forumRow(context, "Menopause", "40"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        // Go to CartPage
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
            context, CupertinoPageRoute(builder: (context) => CreatePost())),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

Widget forumRow(BuildContext context, String title, String count) {
  double baseWidth = 430;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;
  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: GestureDetector(
      onTap: () => Navigator.push(context,
          CupertinoPageRoute(builder: (context) => ForumPage(title: title))),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // communicationchat8Vq (51:81)
              margin: EdgeInsets.fromLTRB(
                  0 * fem, 0 * fem, 12.88 * fem, 6.74 * fem),
              width: 23.25 * fem,
              height: 23.26 * fem,
              child: Icon(Icons.message),
            ),
            Container(
              // hairloss3co (51:82)
              margin:
                  EdgeInsets.fromLTRB(0 * fem, 5 * fem, 150 * fem, 17 * fem),
              child: Text(
                title,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.5 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(count), const Text("posts")],
            ),
          ],
        ),
      ),
    ),
  );
}
