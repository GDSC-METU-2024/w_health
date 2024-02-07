import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:w_health/utils/doctor_utils/doctor_comment_model.dart';
import 'package:w_health/utils/doctor_utils/doctor_model.dart';

class showAllComments extends StatefulWidget {
  const showAllComments({super.key, required this.doctor, required this.id});
  final Report_Doctor doctor;
  final String id;

  @override
  State<showAllComments> createState() => _showAllCommentsState();
}

class _showAllCommentsState extends State<showAllComments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Comments about ${widget.doctor.Name}")
        ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection('Doctors')
                      .doc(widget.id)
                      .collection("Comments")
                      .orderBy("CommentTime", descending: true)
                      .snapshots(),
                  builder: (context, snapshot) {
                    // show loading
                    if (!snapshot.hasData) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    return ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: snapshot.data!.docs.map((doc) {
                        final commentData =
                        doc.data() as Map<String, dynamic>;

                        return Comment(
                          text: commentData["CommentText"],
                          user: commentData["CommentedBy"],
                          time: formDate(commentData["CommentTime"]),
                          star: commentData["CommentRating"],
                        );
                      }).toList(),
                    );
                  }),
            )
          ],
        ),
      )
    );
  }
  String formDate(Timestamp time) {
    DateTime dateTime = time.toDate();
    String year = dateTime.year.toString();
    String month = dateTime.month.toString();
    String day = dateTime.day.toString();
    String formdate = day + "/" + month + "/" + year;
    return formdate;
  }
}

