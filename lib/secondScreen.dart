import 'package:firstDayApp/myCard.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  String img = 'assets/55.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return myCard(
            img: img,
          );
        },
      ),
    );
  }
}
