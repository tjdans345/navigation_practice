import 'package:flutter/material.dart';

class MainLayOut extends StatelessWidget {

  final String title;
  final List<Widget> children;

  const MainLayOut(
      { required this.title,
        required this.children,
        Key? key
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(title)
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        ),
      ),
    );
  }
}
