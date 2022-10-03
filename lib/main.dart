import 'package:flutter/material.dart';
import 'package:task_list/layout/base_theme.dart';
import 'package:task_list/pages/home_page.dart';
import 'package:task_list/pages/posts/show_post_page.dart';

void main() {
  runApp(
    MaterialApp(
      // home: const HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Notícias',
      theme: ThemeData(
        dividerTheme: const DividerThemeData(
          color: BaseTheme.primaryColor,
          endIndent: 10,
          indent: 10,
          thickness: 2,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/post': (context) => const ShowPostPage(),
      },
    ),
  );
}
