import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Comment extends StatelessWidget {
  final String text;
  final String user;
  final String time;
  final String star;
  const Comment({super.key, required this.text, required this.user, required this.time, required this.star});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //commnet
          Text(text),
          //user, data
          Row(

            children: [
              Text(user),
              SizedBox(width: 15,),
              Text(time),
              Spacer(),
              Text("($star)"),
              RatingBar.builder(
                initialRating: double.parse(star),
                minRating: 1,
                itemSize: MediaQuery.of(context).size.width * 0.06,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 0.3),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                ignoreGestures: true,
                onRatingUpdate: (rating) {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
