import 'package:flutter/material.dart';

class ForumComment extends StatelessWidget {
  final String comment;
  final String user;
  final String time;
  const ForumComment(
      {Key? key, required this.comment, required this.user, required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Text(comment),
          Row(
            children: [
              Text(
                user,
                style: const TextStyle(color: Colors.grey),
              ),
              const Text(
                " | ",
                style: const TextStyle(color: Colors.grey),
              ),
              Text(
                time,
                style: const TextStyle(color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
