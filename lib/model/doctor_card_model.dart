import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:w_health/screens/home/doctor_rating/doctorDetail.dart';


class DoctorCard extends StatefulWidget {
  final DocumentSnapshot myReport;
  const DoctorCard({super.key, required this.myReport});

  @override
  State<DoctorCard> createState() => _DoctorCardState();
}

class _DoctorCardState extends State<DoctorCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          color: Colors.grey[300],
          borderRadius: const BorderRadius.all(
            Radius.circular(25),
          ),
        ),
        margin: const EdgeInsets.fromLTRB(
            3, 0, 3, 9),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment:
                MainAxisAlignment
                    .spaceBetween,
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.network(
                          widget.myReport['Image'],
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        widget.myReport['Name'],
                        style: const TextStyle(
                          fontWeight:
                          FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                  Text(
                    widget.myReport['Specialty'],
                    style: const TextStyle(
                        fontWeight:
                        FontWeight.w700,
                        fontSize: 12),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Text(
                widget.myReport['Description'],
                maxLines: 2,
                style: GoogleFonts.nunitoSans(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.3625,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () async{
                      String pnum = widget.myReport['Phone'];
                      final _call="tel:$pnum";
                      if (await (canLaunch(_call))) {
                        await launch(_call);
                      }
                    },
                    icon: Icon(Icons.call),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () async{
                      String pnum = widget.myReport['Phone'];
                      final _sms="sms:$pnum";
                      if (await (canLaunch(_sms))) {
                        await launch(_sms);
                      }
                    },
                    icon: Icon(Icons.sms),
                  ),
                  const SizedBox(width: 10),
                  IconButton(
                    onPressed: () async {
                      GeoPoint _point =
                      widget.myReport['Location'];
                      final _map =
                          'https://www.google.com/maps/search/?api=1&query=${_point.latitude},${_point.longitude}';
                      if (await (canLaunch(_map))) {
                        await launch(_map);
                      }
                    },
                    icon: Icon(Icons.location_on),
                  ),
                  const SizedBox(width: 10),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
