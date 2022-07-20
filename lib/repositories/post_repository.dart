import 'package:dio/dio.dart';
import 'package:task_list/models/post_model.dart';

class PostRepository {
  final Dio dio;
  final String baseURL = "https://jsonplaceholder.typicode.com";

  PostRepository() : dio = Dio();

  Future<List<Post>> index() async {
    List<Post> posts = [];

    var response = await dio.get("$baseURL/posts");

    for (var post in response.data) {
      posts.add(Post.fromJson(post));
    }
    // print("resultado $posts");

    return posts;
  }
}
