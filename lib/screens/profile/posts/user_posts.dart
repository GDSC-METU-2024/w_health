import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:w_health/model/forum_post_model.dart';
import 'package:w_health/services/forum_service.dart';

class UserPostsPage extends StatefulWidget {
  const UserPostsPage({Key? key}) : super(key: key);

  @override
  State<UserPostsPage> createState() => _UserPostsPageState();
}

class _UserPostsPageState extends State<UserPostsPage> {
  final ForumService _forumService = ForumService();
  final user = FirebaseAuth.instance.currentUser!;
  final FirebaseFirestore db = FirebaseFirestore.instance;
  String username = "";

  void initState() {
    super.initState();
    FirebaseDocument();
  }

  FirebaseDocument() async {
    var document = await db.collection('Person').doc(user.uid).get();
    Map<String, dynamic>? value = document.data();
    if (this.mounted) {
      setState(() {
        String a = value!['name'];
        username = "$a";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
        elevation: 0,
        title: const Text("My Posts"),
        backgroundColor: Color.fromRGBO(255, 196, 221, 1),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          StreamBuilder(
            stream: _forumService.getStatus(),
            builder: (context, snapshot) {
              return !snapshot.hasData
                  ? const CircularProgressIndicator()
                  : ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var item_count = 0;
                        DocumentSnapshot myForumPost =
                            snapshot.data!.docs[index];
                        Future<void> _showChoiceDialog(BuildContext) {
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("Delete Post"),
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                content: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () => _forumService
                                          .removeStatus(myForumPost.id)
                                          .then((value) =>
                                              Navigator.pop(context)),
                                      child: const Text(
                                        "Yes",
                                        style:
                                            TextStyle(color: Color(0xffe97d47)),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    InkWell(
                                      onTap: () => Navigator.pop(context),
                                      child: const Text(
                                        "No",
                                        style: TextStyle(
                                          color: Color(0xffe97d47),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }

                        if (myForumPost['user'] == username) {
                          item_count += 1;
                          return ForumPost(
                            user: myForumPost['user'],
                            verified: (myForumPost['verified']?? false),
                            message: myForumPost['status'],
                            time: myForumPost['createdAt'],
                            postId: myForumPost.id,
                            likes:
                                List<String>.from(myForumPost['likes'] ?? []),
                          );
                        }
                        if (index == snapshot.data!.docs.length - 1 &&
                            item_count == 0) {
                          return Center(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Text('End of posts.'),
                                const SizedBox(
                                  height: 15.0,
                                )
                              ],
                            ),
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    );
            },
          )
        ],
      ),
    );
  }
}
