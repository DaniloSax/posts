import 'package:flutter/material.dart';
import 'package:task_list/layout/base_theme.dart';

// ignore: must_be_immutable
class BaseLayout extends StatefulWidget {
  Widget content = Container();

  BaseLayout({super.key, required this.content});

  @override
  State<BaseLayout> createState() => BaseLayoutState();
}

class BaseLayoutState extends State<BaseLayout> {
  int _selectedIndex = 0;

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
        // floatingActionButtonLocation: FloatingActionButtonLocation(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: BaseTheme.primaryColor,
          child: const Icon(Icons.add),
        )
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: _selectedIndex,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.school),
        //     ),
        //   ],
        // ),
        );
  }
}
