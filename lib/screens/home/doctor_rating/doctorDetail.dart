import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';
import 'package:w_health/screens/home/doctor_rating/showAllComments.dart';
import 'package:w_health/utils/doctor_utils/doctor_comment_model.dart';
import 'package:w_health/utils/doctor_utils/doctor_model.dart';
import 'package:w_health/utils/progressIndicator.dart';

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

  final user = FirebaseAuth.instance.currentUser!;
  final FirebaseFirestore db = FirebaseFirestore.instance;
  String username = "";

  void firebaseDocument() async {
    var document = await db.collection('Person').doc(user.uid).get();
    Map<String, dynamic>? value = document.data();
    if (this.mounted) {
      setState(() {
        String a = value!['name'];
        username = a;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    firebaseDocument();
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
                  Row(
                    children: [
                      const Expanded(
                        flex: 7,
                        child: Column(
                          children: [
                            TRatingProgressIndicator(text: '5', value: 1.0),
                            TRatingProgressIndicator(text: '4', value: 0.8),
                            TRatingProgressIndicator(text: '3', value: 0.6),
                            TRatingProgressIndicator(text: '2', value: 0.4),
                            TRatingProgressIndicator(text: '1', value: 0.2),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Text(
                                '${(double.parse((double.parse(widget.doctor.Total_Rating) * 100).toStringAsFixed(0)) / 100).toStringAsFixed(1)}',
                                style:
                                    Theme.of(context).textTheme.displayLarge),
                            RatingBar.builder(
                              initialRating:
                                  double.parse(widget.doctor.Total_Rating),
                              itemSize: 20,
                              minRating: 1,
                              direction: Axis.horizontal,
                              wrapAlignment: WrapAlignment.end,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  EdgeInsets.symmetric(horizontal: 0.6),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                              ignoreGestures: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 3.0,
                    color: Colors.grey[200],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "About...",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.normal,
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
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 3.0,
                    color: Colors.grey[200],
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                    height: 15,
                  ),
                  Container(
                    height: 3.0,
                    color: Colors.grey[200],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ratings & Reviews (${widget.doctor.User_Rated})",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        GestureDetector(
                            child: Text(
                              "See All",
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 18.0,
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => showAllComments(
                                      doctor: widget.doctor, id: widget.id),
                                ),
                              );
                            })
                      ]),
                  SizedBox(
                    height: 16,
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
                        final List<DocumentSnapshot> comments =
                            snapshot.data!.docs.take(3).toList();
                        return ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          children: comments.map((doc) {
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
        "CommentedBy": username,
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
        content: Container(
          height: 200,
          child: Column(
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
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _commentTextController.clear();
            },
            child: Text("Cancel"),
          ),
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
