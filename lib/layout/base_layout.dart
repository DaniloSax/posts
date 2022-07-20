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
      appBar: AppBar(backgroundColor: Colors.blue),
      body: widget.content,
    );
  }
}
