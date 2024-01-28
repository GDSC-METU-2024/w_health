import 'package:cloud_firestore/cloud_firestore.dart';

class Report_Doctor {
  String City;
  String Description;
  String Gender;
  String Name;
  String Specialty;

  Report_Doctor(
      {
        required this.City,
        required this.Description,
        required this.Gender,
        required this.Name,
        required this.Specialty,});

  factory Report_Doctor.fromSnapshot(DocumentSnapshot snapshot) {
    return Report_Doctor(
        City: snapshot["City"],
        Description: snapshot["Description"],
        Gender: snapshot["Gender"],
        Name: snapshot["Name"],
        Specialty: snapshot["Specialty"],);
  }
}