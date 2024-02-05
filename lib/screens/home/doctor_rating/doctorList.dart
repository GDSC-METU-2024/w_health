import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:w_health/model/doctor_card_model.dart';
import 'package:w_health/model/doctor_mini_model.dart';
import 'package:w_health/screens/home/doctor_rating/doctorDetail.dart';
import 'package:w_health/screens/home/maps/doctorMap.dart';

import '../../../services/doctor_service.dart';



class DoctorScreen extends StatefulWidget {
  const DoctorScreen({super.key});
  @override
  State<DoctorScreen> createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> {
  final ReportDoctorService _reportService = ReportDoctorService();
  final FirebaseFirestore db = FirebaseFirestore.instance;
  String? selectedCity;
  String? selectedGender;
  var item_count = 0;
  List<String> citiesList = <String>[
    "Ankara",
    "Izmir",
    "Istanbul",
    "Antalya",
    "City E",
    "City F",
    "City G",
    "City H",
  ];

  List<String> genderList = <String>[
    "Female",
    "Male",
  ];

  List<String> categoryList = <String>[
    "General physician",
    "Gynaecologist",
    "Obstetrician",
    "Dermatologist",
    "Orthopedist",
    "Beast care specialist",
    "Dietician"
    "Dentist"
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          elevation: 0,
          backgroundColor: Color.fromRGBO(255, 196, 221, 1),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {           },
            ),
          ],

        ),
        floatingActionButton: FloatingActionButton(
          // Go to CartPage
          backgroundColor: Color(0xffe97d47),
          onPressed: null,
          child: const Icon(
            Icons.add,
            size: 35.0,
          ),
        ),
        body: SingleChildScrollView(
          child:
          Column(
              children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Suggested Doctors",
                      style: GoogleFonts.nunitoSans(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.3625,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*Padding(
              padding: const EdgeInsets.all(12.0),
              child: DropdownButton<String>(
                hint: Text(
                  "which city",
                ),
                isExpanded: true,
                value: selectedCity,
                items: citiesList.map((String value) {
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
                    selectedCity = _!;
                    item_count = 0;

                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: DropdownButton<String>(
                hint: Text(
                  "which gender",
                ),
                isExpanded: true,
                value: selectedGender,
                items: genderList.map((String value) {
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
                    selectedGender = _!;
                    item_count = 0;

                  });
                },
              ),
            ),*/
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: StreamBuilder(
                stream: _reportService.getStatus(),
                builder: (context, snapshot) {
                  return !snapshot.hasData
                      ? const CircularProgressIndicator()
                      :Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.27,
                            child: ListView.builder(
                            //physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: snapshot.data!.docs.length,
                            itemBuilder: (context, index) {
                              DocumentSnapshot myReport =
                              snapshot.data!.docs[index];

                              //if (myReport['City'] == selectedCity && myReport['Gender'] == selectedGender) {
                                item_count += 1;
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: DoctorMini(myReport: myReport),
                                );

                            //return SizedBox(height: 5,);
                                              },
                                            ),
                          ),
                        ],
                      );
                },
              ),
            ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Categories",
                          style: GoogleFonts.nunitoSans(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            height: 1.3625,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 4),
                    ),
                    itemCount: categoryList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: categoryButton(categoryList[index]),
                      );
                    },
                  ),
                )
          ]),
        ));
  }
  Widget categoryButton(String text) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                  )
              )
          ),
        onPressed: () {
          // Handle button click
          print('anannn');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MapUIcustom(),
            ),
          );
        },
        child: Text(text,
          style: GoogleFonts.nunitoSans(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            height: 1.3625,
            color: Color(0xff000000),
          ),
        ),
      ),
    );
  }
}

