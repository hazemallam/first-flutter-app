import 'package:firstDayApp/models/post.dart';
import 'package:firstDayApp/services/postService.dart';
import 'package:firstDayApp/views/postCard.dart';
import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  List<Post> postsList = List();
  @override
  void initState() {
    super.initState();
    getPosts();
  }

  getPosts() async {
    postsList = await PostService().getPosts();
    // print(postsList);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'POSTS',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: postsList.length,
        itemBuilder: (BuildContext context, int index) {
          return PostCard(
            title: postsList[index].title,
            body: postsList[index].body,
          );
        },
      ),
    );
  }
}
