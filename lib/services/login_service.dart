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
      } else if (e.code == "invalid-credential") {
        showErrorMessage(context,
            "This e-mail is registered with gmail, try logging in with gmail.");
      } else {
        showErrorMessage(context, "The fields are empty.");
      }
    }
  }

  Future<User?> createPerson(String name, String email, String password) async {
    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    await _firestore.collection("Person").doc(user.user?.uid).set({
      'name': name,
      'email': email,
    });
    return user.user;
  }

  static void showErrorMessage(context, String message) {
    showCupertinoDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: const Color(0xffffc4dd),
          title: Text(
            message,
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          content: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "OK",
                    style: TextStyle(color: Colors.white),
                  )),
            ],
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
