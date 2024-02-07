import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
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
  Future<int> postCount(String category) async {
    int result = 0;
    var document = await FirebaseFirestore.instance.collection('Status').get();
    for (var i = 0; i < document.docs.length; i++) {
      if (document.docs[i]["category"] == category) {
        result++;
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forum Page"),
      ),
      body: ListView(
        children: [
          forumRow(
            context,
            "General women's health",
            postCount("General women's health"),
          ),
          forumRow(
            context,
            "Gynaecology",
            postCount("Gynaecology"),
          ),
          forumRow(
            context,
            "Trans Woman Journey",
            postCount("Trans Woman Journey"),
          ),
          forumRow(
            context,
            "Hair Loss",
            postCount("Hair Loss"),
          ),
          forumRow(
            context,
            "Pregnancy",
            postCount("Pregnancy"),
          ),
          forumRow(
            context,
            "Menopause",
            postCount("Menopause"),
          ),
          forumRow(
            context,
            "Contraception",
            postCount("Contraception"),
          ),
          forumRow(
            context,
            "Vagina and vulva health",
            postCount("Vagina and vulva health"),
          ),
          forumRow(
            context,
            "Period",
            postCount("Period"),
          ),
          forumRow(
            context,
            "Womb and ovary health",
            postCount("Womb and ovary health"),
          ),
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

Widget forumRow(BuildContext context, String title, Future<int> postCount) {
  return FutureBuilder<int>(
    future: postCount,
    builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        // Future is still loading
        return CircularProgressIndicator(); // You can replace this with a loading indicator
      } else if (snapshot.hasError) {
        // Future threw an error
        return Text('Error: ${snapshot.error}');
      } else {
        // Future completed successfully
        int? count = snapshot.data;
        return _buildForumRow(context, title, count!);
      }
    },
  );
}

Widget _buildForumRow(BuildContext context, String title, int count) {
  double baseWidth = 430;
  double fem = MediaQuery.of(context).size.width / baseWidth;
  double ffem = fem * 0.97;

  return Padding(
    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    child: GestureDetector(
      onTap: () => Navigator.push(
        context,
        CupertinoPageRoute(builder: (context) => ForumPage(title: title)),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[300],
        ),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                  0 * fem, 0 * fem, 12.88 * fem, 6.74 * fem),
              width: 23.25 * fem,
              height: 23.26 * fem,
              child: Icon(Icons.message),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 5 * fem, 0 * fem, 17 * fem),
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
              children: [Text('$count'), const Text("posts")],
            ),
          ],
        ),
      ),
    ),
  );
}
