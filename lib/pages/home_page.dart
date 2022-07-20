import 'package:flutter/cupertino.dart';
import 'package:task_list/layout/base_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      content: Container(),
    );
  }
}
