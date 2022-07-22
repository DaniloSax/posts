import 'package:flutter/material.dart';
import 'package:task_list/layout/base_layout.dart';
import 'package:task_list/models/post_model.dart';
import 'package:task_list/repositories/post_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PostRepository repository = PostRepository();
  final colorDefault = const Color.fromARGB(255, 211, 215, 250);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
        content: FutureBuilder(
      future: repository.index(),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView.separated(
          separatorBuilder: (context, index) => const Divider(),
          itemCount: snapshot.data!.length,
          itemBuilder: ((context, index) {
            final List<Post> posts = snapshot.data ?? [];
            final Post post = posts[index];

            return ListTile(
              title: Text(post.title),
              hoverColor: colorDefault,
              focusColor: colorDefault,
              leading: const Icon(Icons.article_outlined),
              onTap: () {},
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    color: Colors.red,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    color: Colors.blue,
                  ),
                ],
              ),
            );
          }),
        );
      },
    ));
  }
}
