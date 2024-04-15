import 'package:cloud_firestore/cloud_firestore.dart';

class Report {
  String postId;
  String status;
  String user;
  bool verified;
  String? userToken;
  String category;
  List<String> likes;
  DateTime createdAt;

  Report(
      {required this.postId,
      required this.status,
      required this.user,
      required this.verified,
      required this.userToken,
      required this.category,
      required this.likes,
      required this.createdAt, });

  factory Report.fromSnapshot(DocumentSnapshot snapshot) {
    return Report(
      postId: snapshot.id,
      status: snapshot["status"],
      user: snapshot["user"],
      verified: snapshot["verified"],
      userToken: snapshot["userToken"],
      category: snapshot["category"],
      createdAt: snapshot["createdAt"],
      likes: snapshot["likes"],
    );
  }
}
