import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(title),
    ));
  }
}
