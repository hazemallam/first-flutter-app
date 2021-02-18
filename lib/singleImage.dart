import 'package:flutter/material.dart';

class SingleImgae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('single Image'),
        ),
        body: Image.asset(
          'assets/55.jpg',
          height: 700,
        ));
  }
}
