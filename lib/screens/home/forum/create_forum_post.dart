import 'dart:async';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:w_health/utils/CustomSnackBarContent.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../services/forum_service.dart';

class CreatePost extends StatefulWidget {
  CreatePost({Key? key}) : super(key: key);

  @override
  State<CreatePost> createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  final user = FirebaseAuth.instance.currentUser!;
  final FirebaseFirestore db = FirebaseFirestore.instance;
  String name = "";
  final ForumService _reportService = ForumService();
  final postController = TextEditingController();
  String? selectedCategory;
  var item_count = 0;
  List<String> categoryList = <String>[
    "Ankara",
    "İzmir",
    "İstanbul",
    "Antalya",
    "City E",
    "City F",
    "City G",
    "City H",
  ];

  FirebaseDocument() async {
    var document = await db.collection('Person').doc(user.uid).get();
    Map<String, dynamic>? value = document.data();
    if (this.mounted) {
      setState(() {
        name = value!['name'];
      });
    }
  }

  void postReport() {
    if (selectedCategory == null) {
      showErrorMessage("Please select a category.");
    } else {
      _reportService
          .addStatus(
        postController.text,
        "$name",
        selectedCategory!,
        DateTime.now(),
      )
          .then((value) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: CustomSnackBarContent(
            errorText: "Your post has been shared.",
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ));
        Navigator.pop(context);
      });
    }
  }

  void showErrorMessage(String message) {
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

  @override
  Widget build(BuildContext context) {
    FirebaseDocument();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: const Color(0xFFFFC4DD),
        ),
        backgroundColor: Colors.transparent,
        title: Text(
          "Create Forum Post",
          style: GoogleFonts.prozaLibre(
            color: const Color(0xFFFFC4DD),
            fontSize: 20,
            fontWeight: FontWeight.w600,
            height: 1.355,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            buildTextField(postController, "Type your question here.", false),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 5, 30, 5),
              child: DropdownButton<String>(
                hint: Text(
                  "Select category",
                ),
                isExpanded: true,
                value: selectedCategory,
                items: categoryList.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                    ),
                  );
                }).toList(),
                onChanged: (_) {
                  FocusScope.of(context).requestFocus(FocusNode());
                  FocusScope.of(context).requestFocus(FocusNode());
                  setState(() {
                    selectedCategory = _!;
                    item_count = 0;
                  });
                },
              ),
            ),
            buildButton(postReport, "Post Question")
          ],
        ),
      ),
    );
  }

  Padding buildTextField(final controller, String hintText, bool obscureText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        minLines: 1,
        maxLines: 7,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500]),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }

  Padding buildButton(final Function()? onTap, String buttonText) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 20.0,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 175.0,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
              color: const Color(0xFFFFC4DD),
              borderRadius: BorderRadius.circular(12.0)),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.save,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  buttonText,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
