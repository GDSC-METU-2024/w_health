import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:w_health/model/doctor_model.dart';
import 'package:w_health/model/doctor_comment_model.dart';

class DoctorDetail extends StatefulWidget {
  DoctorDetail({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  _DoctorDetailState createState() => _DoctorDetailState();
}

class _DoctorDetailState extends State<DoctorDetail> {
  late Future<Report_Doctor> _futureDoctor;

  @override
  void initState() {
    super.initState();
    _futureDoctor = fetchDataFromId(widget.id);
  }

  Future<Report_Doctor> fetchDataFromId(String documentId) async {
    var collection = FirebaseFirestore.instance.collection('Doctors');
    var docSnapshot = await collection.doc(documentId).get();
    if (docSnapshot.exists) {
      return Report_Doctor.fromSnapshot(docSnapshot);
    } else {
      throw Exception('Doctor not found');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Report_Doctor>(
      future: _futureDoctor,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Loading...'),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Error'),
            ),
            body: Center(
              child: Text('Error: ${snapshot.error}'),
            ),
          );
        } else {
          Report_Doctor doctor = snapshot.data!;
          return _DoctorDetailContent(doctor: doctor, id: widget.id);
        }
      },
    );
  }
}

class _DoctorDetailContent extends StatefulWidget {
  _DoctorDetailContent({Key? key, required this.doctor, required this.id})
      : super(key: key);

  final Report_Doctor doctor;
  final String id;

  @override
  __DoctorDetailContentState createState() => __DoctorDetailContentState();
}

class __DoctorDetailContentState extends State<_DoctorDetailContent> {
  final TextEditingController _commentTextController = TextEditingController();
  late double newRating;

  @override
  void initState() {
    super.initState();
    newRating = 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.doctor.Name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              widget.doctor.Image,
              height: 200.0,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.doctor.Name,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  RatingBar.builder(
                    initialRating: double.parse(widget.doctor.Total_Rating),
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
                    ignoreGestures: true,
                  ),
                  Text(
                    'Rating: ${(double.parse((double.parse(widget.doctor.Total_Rating) * 100).toStringAsFixed(0)) / 100).toStringAsFixed(2)} (${widget.doctor.User_Rated})',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.green,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ReadMoreText(
                    widget.doctor.Description,
                    trimLines: 5,
                    colorClickableText: Colors.redAccent,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Show less',
                    moreStyle: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    children: [
                      SizedBox(
                        height: 40, //height of button
                        width: MediaQuery.of(context).size.width *
                            0.3, //width of button
                        child: ElevatedButton(
                          onPressed: () {
                            print('Rating updated');
                            showCommentDialog();
                          },
                          child: Text('Add Comment'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: RatingBar.builder(
                          initialRating: newRating,
                          minRating: 1,
                          itemSize: MediaQuery.of(context).size.width * 0.1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            setState(() {
                              newRating = rating;
                            });
                            showCommentDialog();
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('Doctors')
                          .doc(widget.id)
                          .collection("Comments")
                          .orderBy("CommentTime", descending: true)
                          .snapshots(),
                      builder: (context, snapshot) {
                        // show loading
                        if (!snapshot.hasData) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }

                        return ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: snapshot.data!.docs.map((doc) {
                            final commentData =
                                doc.data() as Map<String, dynamic>;

                            return Comment(
                              text: commentData["CommentText"],
                              user: commentData["CommentedBy"],
                              time: formDate(commentData["CommentTime"]),
                              star: commentData["CommentRating"],
                            );
                          }).toList(),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formDate(Timestamp time) {
    DateTime dateTime = time.toDate();
    String year = dateTime.year.toString();
    String month = dateTime.month.toString();
    String day = dateTime.day.toString();
    String formdate = day + "/" + month + "/" + year;
    return formdate;
  }

  void addComment(String commentText) {
    FirebaseFirestore.instance
        .collection('Doctors')
        .doc(widget.id)
        .collection("Comments")
        .add(
      {
        "CommentText": commentText,
        "CommentedBy": "user",
        "CommentTime": Timestamp.now(),
        "CommentRating": newRating.toString(),
      },
    );
  }

  void showCommentDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Add Comment"),
        content: Column(
          children: [
            RatingBar.builder(
              initialRating: newRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
              itemBuilder: (context, _) => Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                setState(() {
                  newRating = rating;
                });
                print(rating);
              },
            ),
            TextField(
              controller: _commentTextController,
              decoration: InputDecoration(hintText: "Write a comment..."),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              addComment(_commentTextController.text);
              ratingCalculation();
              Navigator.pop(context);
              _commentTextController.clear();
              /*Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorDetail(id: widget.id),
                ),
              );*/
            },
            child: Text("Post"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _commentTextController.clear();
            },
            child: Text("Cancel"),
          ),
        ],
      ),
    );
  }

  void ratingCalculation() async {
    var doctor = widget.doctor;
    double newTotRating =
        double.parse(doctor.Total_Rating) * doctor.User_Rated + newRating;
    doctor.User_Rated++;
    newTotRating /= doctor.User_Rated;
    doctor.Total_Rating = newTotRating.toString();
    DocumentReference documentReference =
        FirebaseFirestore.instance.collection('Doctors').doc(widget.id);
    documentReference.update({
      "City": doctor.City,
      "Description": doctor.Description,
      "Gender": doctor.Gender,
      "Image": doctor.Image,
      "Location": doctor.Location,
      "Name": doctor.Name,
      "Specialty": doctor.Specialty,
      "Total_Rating": doctor.Total_Rating,
      "User_Rated": doctor.User_Rated,
    });
  }
}
