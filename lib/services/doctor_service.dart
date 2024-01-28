import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:w_health/model/doctor_model.dart';

class ReportDoctorService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Report_Doctor> addStatus(
      String City,
      String Description,
      String Gender,
      String Name,
      String Specialty,
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
      Name: Name,
      Specialty: Specialty,
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