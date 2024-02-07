import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:w_health/screens/home/doctor_rating/doctorDetail.dart';


class DoctorMini extends StatefulWidget {
  final DocumentSnapshot myReport;
  const DoctorMini({super.key, required this.myReport});

  @override
  State<DoctorMini> createState() => _DoctorMiniState();
}

class _DoctorMiniState extends State<DoctorMini> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27 ,
      width: MediaQuery.of(context).size.width *0.35,
      child: GestureDetector(
        onTap: () {
          // Handle the tap gesture here
          print(widget.myReport.id);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DoctorDetail(id: widget.myReport.id),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          margin: const EdgeInsets.fromLTRB(
              3, 0, 3, 9),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  widget.myReport['Image'],
                  height: MediaQuery.of(context).size.width *0.35 - 8,
                  width: MediaQuery.of(context).size.width *0.35 - 8,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                widget.myReport['Name'],
                style: const TextStyle(
                  fontWeight:
                  FontWeight.w700,
                )
              ),
              Text(
                widget.myReport['Specialty'],
                style: const TextStyle(
                    fontWeight:
                    FontWeight.w300,
                    fontSize: 12),
              ),
              RatingBar.builder(
                initialRating: double.parse(widget.myReport['Total_Rating']),
                itemSize: 13,
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
                ignoreGestures: true
              ),


            ],
          ),
        ),
      ),
    );
  }
}
