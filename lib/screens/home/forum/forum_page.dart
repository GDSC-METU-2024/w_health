import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../../model/forum_post_model.dart';

class ForumPage extends StatefulWidget {
  final String title;
  const ForumPage({Key? key, required this.title}) : super(key: key);

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("${widget.title} posts"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("Status").snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final post = snapshot.data!.docs[index];
                        if (post['category'] == widget.title) {
                          return ForumPost(
                            message: post['status'],
                            user: post['user'],
                            time: post['createdAt'].toString(),
                          );
                        } else {
                          return SizedBox();
                        }
                      });
                } else {
                  return Container(
                    child: Center(
                      child: Text("No posts available at this category."),
                    ),
                  );
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
