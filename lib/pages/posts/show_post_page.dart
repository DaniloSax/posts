import 'package:flutter/material.dart';
import 'package:task_list/layout/base_theme.dart';
import 'package:task_list/layout/base_layout.dart';
import 'package:task_list/pages/posts/screen_argument.dart';

class ShowPostPage extends StatefulWidget {
  const ShowPostPage({super.key});

  @override
  State<ShowPostPage> createState() => _ShowPostPageState();
}

class _ShowPostPageState extends State<ShowPostPage> {
  @override
  Widget build(BuildContext context) {
    // recept arguments of routeNamed
    final args =
        ModalRoute.of(context)!.settings.arguments as ScreenArgumentPost;

    return BaseLayout(
      content: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.circle_outlined,
                    size: 50,
                    color: BaseTheme.secondaryColor,
                  ),
                  Flexible(
                    child: Text(
                      args.post.title,
                      softWrap: true,
                      style: const TextStyle(fontSize: BaseTheme.fontSizeTitle),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              const Divider(height: 40.0),
              Text(
                args.post.body,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: BaseTheme.fontSizeSubTitle),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 3, color: Colors.grey),
                  ),
                ),
                child: Text(
                  'Comentários'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: BaseTheme.fontSizeTitle,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
