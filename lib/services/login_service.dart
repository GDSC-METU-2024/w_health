import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:firebase_auth/firebase_auth.dart";

class FirebaseUserAuthentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //State Management
  Stream<User?> get authState => _auth.authStateChanges();
  User get user => _auth.currentUser!;

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<void> signIn(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email.toString().trim(),
        password: password.toString().trim(),
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        showErrorMessage(
          context,
          "There's no such e-mail registered.",
        );
      } else if (e.code == "wrong-password") {
        showErrorMessage(context, "Wrong Password!");
      } else {
        showErrorMessage(context, "The fields are empty.");
      }
    }
  }

  void createPerson(String name, String email) async {
    await _firestore
        .collection("Person")
        .doc()
        .set({'userName': name, 'email': email});
  }

  static void showErrorMessage(context, String message) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF4E6C50),
          title: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }

  /*static Future sendVerificationEmail() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      await user?.sendEmailVerification();
    } on FirebaseAuthException catch (e) {
      print(e.code);
    }
  }*/
}
