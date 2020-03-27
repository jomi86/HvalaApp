import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  CallScreen({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
