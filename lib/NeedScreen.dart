import 'package:flutter/material.dart';

class NeedScreen extends StatelessWidget {
  NeedScreen({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          title,
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
