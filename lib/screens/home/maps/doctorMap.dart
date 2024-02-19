import 'package:custom_info_window/custom_info_window.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:w_health/screens/home/doctor_rating/doctorDetail.dart';

class MapUIcustom extends StatefulWidget {
  @override
  State<MapUIcustom> createState() => _MapUIStatecustom();
}

class _MapUIStatecustom extends State<MapUIcustom> {
  CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();

  final LatLng _latLng = LatLng(39.9333651, 32.859741);
  final double _zoom = 15.0;
  int i_mar = 0;
  bool mapToggle = false;
  var currentLocation;

  @override
  void dispose() {
    _customInfoWindowController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    Geolocator.getCurrentPosition().then((currloc) {
      setState(() {
        currentLocation = currloc;
        mapToggle = true;
        populateClients();
        i_mar = _markers.length;
      });
    });
  }

  Set<Marker> _markers = {};
  Set<Marker> _markerss = {};
  List<LatLng> _latLang = <LatLng>[
    LatLng(38.4237, 27.1428),
    LatLng(41.0082, 28.9784)
  ];

  populateClients() async {
    //clients=[];
    await Firebase.initializeApp();
    FirebaseFirestore.instance.collection("Doctors").get().then((docs) {
      if (docs.docs.isNotEmpty) {
        for (int i = 0; i < docs.docs.length; ++i) {
          //clients.add(docs.docs[i].data);
          loadData(docs.docs[i].data, i, docs.docs[i].id);
        }
      }
    });
  }

  loadData(fireBase, i, id) {
    _markers.add(
      Marker(
        markerId: MarkerId("$i"),
        position: LatLng(
            fireBase()['Location'].latitude, fireBase()['Location'].longitude),
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(fireBase()['Image']),
                            fit: BoxFit.fitWidth,
                            filterQuality: FilterQuality.high),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        color: Color.fromARGB(255, 255, 197, 146)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: Text(
                            fireBase()['Name'],
                            maxLines: 2,
                            overflow: TextOverflow.fade,
                            softWrap: false,
                          ),
                        ),
                        const Spacer(),
                        //Text(fireBase()['Total_Rating'])
                        RatingBar.builder(
                          //Rating bar
                          initialRating:
                              double.parse(fireBase()['Total_Rating']),
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
                      ],
                    ),
                  ),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 10, right: 10),
                      child: Text(
                        fireBase()['Description'],
                        maxLines: 2,
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, right: 15, bottom: 10),
                      child: GestureDetector(
                          onTap: () {
                            // Go to doctor page
                            print('Text Clicked!');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DoctorDetail(id: id),
                              ),
                            );
                          },
                          child: const Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Explore more!',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ))),
                ],
              ),
            ),
            LatLng(fireBase()['Location'].latitude,
                fireBase()['Location'].longitude),
          );
        },
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    populateClients();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          //LocaleKeys.maps_title.tr(),
          "Doctor Locations",
        ),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
            onMapCreated: (GoogleMapController controller) async {
              _customInfoWindowController.googleMapController = controller;
            },
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(39.9333651, 32.859741),
              zoom: 5,
            ),
          ),
          CustomInfoWindow(
            controller: _customInfoWindowController,
            height: 225,
            width: 300,
            offset: 35,
          ),
        ],
      ),
    );
  }
}
