import 'package:dio/dio.dart';
import 'package:firstDayApp/models/post.dart';

class PostService {
  final String url = 'https://jsonplaceholder.typicode.com/posts';
  Future<List<Post>> getPosts() async {
   List<Post> posts = List();
    Response response;
    Dio dio = Dio();
    response = await dio.get(url);
    var data = response.data;
    // print(data);
    data.forEach((post) {
      posts.add(Post.fromJson(post));
    });
    return posts;
  }
}
