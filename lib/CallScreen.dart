import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  CallScreen({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final callScreenTitles = [
      'KORONA VIRUS',
      'HITNA POMOĆ',
      'POLICIJA',
      'VATROGASCI',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ssss',
        ),
      ),
      body: ListView.builder(
        itemCount: callScreenTitles.length,
        itemBuilder: (context, index) {
          return Card(
            //                           <-- Card widget
            child: ListTile(
              title: Text(
                callScreenTitles[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18.0,
                    letterSpacing: 2.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
              onTap: () {
                print(callScreenTitles[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
