import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/report_model.dart';

class ForumService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Report> addStatus(
    String status,
    String user,
    bool verified,
    String category,
    List<String> likes,
    DateTime createdAt,
  ) async {
    var ref = _firestore.collection("Status");
    String? token = await FirebaseMessaging.instance.getToken();

    var documentRef = await ref.add({
      'status': status,
      'user': user,
      'verified': verified,
      'userToken': token,
      'category': category,
      'createdAt': createdAt,
      'likes': likes,
    });

    return Report(
      postId: documentRef.id,
      status: status,
      user: user,
      verified: verified,
      userToken: token,
      category: category,
      createdAt: createdAt,
      likes: likes,
    );
  }

  //status göstermek için
  Stream<QuerySnapshot> getStatus() {
    var ref = _firestore
        .collection("Status")
        .orderBy('createdAt', descending: true)
        .snapshots();

    return ref;
  }

  //status silmek için
  Future<void> removeStatus(String docId) {
    var ref = _firestore.collection("Status").doc(docId).delete();
    return ref;
  }
}
