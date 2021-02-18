import 'package:firstDayApp/views/postBodyScreen.dart';
import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {
  PostCard({this.title, this.body});
  String title = '';
  String body = '';
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PostBody(
                      body: widget.body,
                    )));
      },
      child: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  // Center(
                  //   child: Text(
                  //     'Introducing Flutter',
                  //     style: TextStyle(fontSize: 30),
                  //   ),
                  // ),
                  Text(
                    widget.title ,
                    style: TextStyle(fontSize: 20, color: Colors.purple),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(5.0),
                  //   child: Row(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.all(5.0),
                  //         child: Row(
                  //           children: [
                  //             Icon(Icons.favorite),
                  //             Text(' Like'),
                  //           ],
                  //         ),
                  //       ),
                  //       Icon(Icons.comment),
                  //       Text(' Comment')
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
