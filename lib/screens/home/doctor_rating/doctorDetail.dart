/*import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:w_health/services/doctor_service.dart';

class DoctorDetail extends StatelessWidget {
  DoctorDetail({super.key, required this.id});

  final String id;
  Future<void> fetchDataFromId(String documentId) async {
    var collection = FirebaseFirestore.instance.collection('Doctors');
    var docSnapshot = await collection.doc('$id').get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      var value = data?['Name'];
      print(value);// <-- The value you want to retrieve.

    }
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

import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:w_health/model/doctor_model.dart';

class DoctorDetail extends StatefulWidget {
  DoctorDetail({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  _DoctorDetailState createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  late Future<void> dataFuture;
  late String name="Doctor";
  late Report_Doctor _doctor;

  @override
  void initState() {
    super.initState();
    dataFuture = fetchDataFromId(widget.id);
  }

  Future<void> fetchDataFromId(String documentId) async {
    var collection = FirebaseFirestore.instance.collection('Doctors');
    var docSnapshot = await collection.doc(documentId).get();
    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      _doctor = Report_Doctor.fromSnapshot(docSnapshot);
      print(_doctor.Name); // <-- The value you want to retrieve.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: SingleChildScrollView(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Image.network(
        _doctor.Image,
        height: 200.0, // Adjust the height as needed
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _doctor.Name,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            RatingBar.builder( //Rating bar
              initialRating: double.parse(_doctor.Total_Rating),
              itemSize: 20,
              minRating: 1,
              direction: Axis.horizontal,
              wrapAlignment: WrapAlignment.end,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            Text(
              'Rating: ${_doctor.Total_Rating}',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              _doctor.Description,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Implement your action here (e.g., add to cart).
                print('Product added to cart!');
              },
              child: Text('Add Comment'),
            ),
          ],
        ),
      ),]
    ),)
    );
  }
}
*/

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:w_health/model/doctor_model.dart';

class DoctorDetail extends StatelessWidget {
  DoctorDetail({Key? key, required this.id}) : super(key: key);

  final String id;

  Future<Report_Doctor> fetchDataFromId(String documentId) async {
    var collection = FirebaseFirestore.instance.collection('Doctors');
    var docSnapshot = await collection.doc(documentId).get();
    if (docSnapshot.exists) {
      return Report_Doctor.fromSnapshot(docSnapshot);
    } else {
      throw Exception('Doctor not found');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Report_Doctor>(
      future: fetchDataFromId(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Loading...'),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Error'),
            ),
            body: Center(
              child: Text('Error: ${snapshot.error}'),
            ),
          );
        } else {
          Report_Doctor doctor = snapshot.data!;
          return _DoctorDetailContent(doctor: doctor, id: id);
        }
      },
    );
  }
}

class _DoctorDetailContent extends StatelessWidget {
  _DoctorDetailContent({Key? key, required this.doctor, required this.id}) : super(key: key);

  final Report_Doctor doctor;
  final String id;
  late double newRating = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(doctor.Name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              doctor.Image,
              height: 200.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor.Name,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  RatingBar.builder(
                    initialRating: double.parse(doctor.Total_Rating),
                    itemSize: 20,
                    minRating: 1,
                    direction: Axis.horizontal,
                    wrapAlignment: WrapAlignment.end,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text(
                    'Rating: ${(double.parse((double.parse(doctor.Total_Rating) * 100).toStringAsFixed(0)) / 100).toStringAsFixed(2)} (${doctor.User_Rated})',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    doctor.Description,
                    style: TextStyle(fontSize: 16.0),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement your action here (e.g., add to cart).
                      print('Rating updated');
                      ratingCalculation(id,newRating,doctor);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorDetail(id: id),
                        ),
                      );
                    },
                    child: Text('Add Comment'),
                  ),
                  RatingBar.builder(
                  initialRating: newRating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    newRating = rating;
                    print(rating);
                  },
                ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ratingCalculation(String documentId, double rating, Report_Doctor doctor
      ) async {
    double newTotRating = double.parse(doctor.Total_Rating)*doctor.User_Rated + rating;
    doctor.User_Rated++;
    newTotRating /= doctor.User_Rated;
    doctor.Total_Rating = newTotRating.toString();
    DocumentReference documentReference =
    FirebaseFirestore.instance.collection('Doctors').doc(documentId);
    documentReference.update({
      "City": doctor.City,
      "Description": doctor.Description,
      "Gender": doctor.Gender,
      "Image": doctor.Image,
      "Location": doctor.Location,
      "Name": doctor.Name,
      "Specialty": doctor.Specialty,
      "Total_Rating": doctor.Total_Rating,
      "User_Rated": doctor.User_Rated,
    });
  }
}

