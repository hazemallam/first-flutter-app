
import 'package:firstDayApp/views/bodyCard.dart';
import 'package:flutter/material.dart';

class PostBody extends StatefulWidget {
  PostBody({this.body});
  String body = '';
  @override
  _PostBodyState createState() => _PostBodyState();
}

class _PostBodyState extends State<PostBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POST BODY',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Container(
        child: BodyCard(body: widget.body),
      ),
    );
  }
}
