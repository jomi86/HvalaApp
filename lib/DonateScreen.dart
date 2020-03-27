import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  DonateScreen({this.title});
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
