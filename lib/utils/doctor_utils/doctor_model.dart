import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

class Report_Doctor {
  String City;
  String Description;
  String Gender;
  String Image;
  GeoPoint Location;
  String Name;
  String Specialty;
  String Total_Rating;
  int User_Rated;

  Report_Doctor(
      {
        required this.City,
        required this.Description,
        required this.Gender,
        required this.Image,
        required this.Location,
        required this.Name,
        required this.Specialty,
        required this.Total_Rating,
        required this.User_Rated,});

  /*Report_Doctor.fromJson(Map<String, dynamic> json) {
    City = json['City'];
    City = json['City'];
    Gender = json['Gender'];
    Image = json['Image'];
    Location = json['Location'];
    Name = json['Name'];
    Specialty = json['Specialty'];
    Total_Rating = json['Total_Rating'];
    User_Rated = json['User_Rated'];
  }*/

  factory Report_Doctor.fromSnapshot(DocumentSnapshot snapshot) {
    return Report_Doctor(
        City: snapshot["City"],
        Description: snapshot["Description"],
        Gender: snapshot["Gender"],
        Image: snapshot["Image"],
        Location: snapshot["Location"],
        Name: snapshot["Name"],
        Specialty: snapshot["Specialty"],
        Total_Rating: snapshot["Total_Rating"],
        User_Rated: snapshot["User_Rated"],
    );
  }
}