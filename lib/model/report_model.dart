import 'package:cloud_firestore/cloud_firestore.dart';

class Report {
  String id;
  String status;
  String user;
  String category;
  DateTime createdAt;

  Report(
      {required this.id,
      required this.status,
      required this.user,
      required this.category,
      required this.createdAt});

  factory Report.fromSnapshot(DocumentSnapshot snapshot) {
    return Report(
        id: snapshot.id,
        status: snapshot["status"],
        user: snapshot["user"],
        category: snapshot["category"],
        createdAt: snapshot["createdAt"]);
  }
}
