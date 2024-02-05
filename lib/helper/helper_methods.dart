import 'package:cloud_firestore/cloud_firestore.dart';

String formatData(Timestamp timestamp) {
  DateTime time = timestamp.toDate();
  String year = time.year.toString();
  String month = time.month.toString();
  String day = time.day.toString();
  String formattedData = '$day/$month/$year';
  return formattedData;
}
