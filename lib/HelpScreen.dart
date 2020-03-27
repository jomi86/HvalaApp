import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
