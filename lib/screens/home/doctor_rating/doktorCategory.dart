import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:w_health/model/doctor_card_model.dart';
import 'package:w_health/model/doctor_mini_model.dart';
import 'package:w_health/services/doctor_service.dart';

class DoctorCategory extends StatefulWidget {
  final String category;
  const DoctorCategory({super.key, required this.category});

  @override
  State<DoctorCategory> createState() => _DoctorCategoryState();
}

class _DoctorCategoryState extends State<DoctorCategory> {
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

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Color.fromRGBO(255, 196, 221, 1),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {           },
          ),
        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            const SizedBox(height: 12),
            Padding(
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
            ),
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
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot myReport =
                            snapshot.data!.docs[index];

                            //if (myReport['City'] == "Ankara" && myReport['Gender'] == "Male") {
                            if(myReport["Specialty"] == widget.category){
                              if(myReport['City'] ==  selectedCity && myReport['Gender'] == selectedGender){
                                item_count += 1;
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: DoctorCard(myReport: myReport),
                                );
                              }
                            }

                            //return SizedBox(height: 5,);
                          },
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
