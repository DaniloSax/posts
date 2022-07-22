import 'package:flutter_test/flutter_test.dart';
import 'package:task_list/models/post_model.dart';
import 'package:task_list/repositories/post_repository.dart';

void main() {
  test('post repository index', () async {
    PostRepository postRepository = PostRepository();

    List<Post> posts = await postRepository.index();

    expect(posts.isNotEmpty, true);
  });
}
