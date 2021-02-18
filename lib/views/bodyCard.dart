import 'package:flutter/material.dart';

class BodyCard extends StatefulWidget {
  BodyCard({this.body});
  String body = '';
  @override
  _BodyCardState createState() => _BodyCardState();
}

class _BodyCardState extends State<BodyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  widget.body,
                  style: TextStyle(fontSize: 20, color: Colors.purple),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
