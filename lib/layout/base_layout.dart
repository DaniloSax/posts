import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BaseLayout extends StatefulWidget {
  Widget content = Container();

  BaseLayout({super.key, required this.content});

  @override
  State<BaseLayout> createState() => BaseLayoutState();
}

class BaseLayoutState extends State<BaseLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 10,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.asset(
            'images/logo_2022_v1.png',
          ),
        ),
        toolbarHeight: 100,
        title: Text(
          'Notícias'.toUpperCase(),
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: widget.content,
    );
  }
}
