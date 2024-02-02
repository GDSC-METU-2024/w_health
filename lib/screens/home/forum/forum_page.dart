import 'package:flutter/material.dart';

class ForumPage extends StatefulWidget {
  final String title;
  const ForumPage({Key? key, required this.title}) : super(key: key);

  @override
  State<ForumPage> createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forum Page"),
      ),
    );
  }
}
