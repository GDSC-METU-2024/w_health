import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:w_health/utils/doctor_utils/doctor_model.dart';

class ReportDoctorService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Report_Doctor> addStatus(
      String City,
      String Description,
      String Gender,
      String Image,
      GeoPoint Location,
      String Name,
      String Specialty,
      String Total_Rating,
      int User_Rated,
      ) async {
    var ref = _firestore.collection("Doctors");


    var documentRef = await ref.add({
      'City': City,
      'Description': Description,
      "Gender": Gender,
      'Name': Name,
      'Specialty': Specialty,
    });

    return Report_Doctor(
      City: City,
      Description: Description,
      Gender: Gender,
      Image: Image,
      Location: Location,
      Name: Name,
      Specialty: Specialty,
      Total_Rating: Total_Rating,
      User_Rated: User_Rated
    );
  }

  //status göstermek için
  Stream<QuerySnapshot> getStatus() {
    var ref = _firestore
        .collection("Doctors")
        .snapshots();

    return ref;
  }

  //status silmek için
  Future<void> removeStatus(String docId) {
    var ref = _firestore.collection("Doctors").doc(docId).delete();

    return ref;
  }
}