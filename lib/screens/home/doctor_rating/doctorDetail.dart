import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:w_health/services/doctor_service.dart';

class DoctorDetail extends StatelessWidget {
  DoctorDetail({super.key, required this.id});

  final String id;
  void fetchDataFromId(String documentId) {
    FirebaseFirestore.instance.collection('Doctors').doc(documentId).get().then((value) {
      // Access the data associated with the clicked ID
      var data = value.data();
      print('Data from ID: $data');
    }).catchError((error) {
      print('Error fetching data: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("doctor"),
      ),
      body: ElevatedButton(
        onPressed: () {
          // Callback function when the button is pressed
          print('Button Pressed!');
          fetchDataFromId(id);
        },
        child: Text(id.toString()),
      ),
    );
  }
}
