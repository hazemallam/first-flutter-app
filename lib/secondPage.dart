import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text('1', style: TextStyle(color: Colors.red, fontSize: 40)),
            ),
             Center(
            child: Text('2', style: TextStyle(color: Colors.red, fontSize: 40)),
            ),
             Center(
            child: Text('3', style: TextStyle(color: Colors.red, fontSize: 40)),
            ),
        ],
      ),
    );
  }
}