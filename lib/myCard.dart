import 'package:firstDayApp/singleImage.dart';
import 'package:flutter/material.dart';

class myCard extends StatefulWidget {
  String img;
  myCard({this.img});
  @override
  _myCardState createState() => _myCardState();
}

class _myCardState extends State<myCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SingleImgae()));
      },
      child: Container(
        height: 350,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Introducing Flutter',
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                  Image(
                    image: AssetImage(widget.img),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Icon(Icons.favorite),
                              Text(' Like'),
                            ],
                          ),
                        ),
                        Icon(Icons.comment),
                        Text(' Comment')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
