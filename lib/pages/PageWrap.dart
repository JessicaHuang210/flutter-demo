import 'package:flutter/material.dart';

class PageWrap extends StatelessWidget {
  PageWrap({this.title, this.body});
  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: body,
    );
  }
}
