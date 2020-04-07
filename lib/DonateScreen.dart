import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  DonateScreen({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final titles = [
      'MONEY',
      'FOOD',
      'CLOTHES',
      'OTHER',
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text(
            title,
          ),
        ),
        body: Column(
          children: <Widget>[
            MaterialButton(
              onPressed: () => print('sss'),
            )
          ],
        )
//      ListView.builder(
//        itemCount: titles.length,
//        itemBuilder: (context, index) {
//          return Card(
//            //                           <-- Card widget
//            child: ListTile(
//              title: Text(
//                titles[index],
//                textAlign: TextAlign.center,
//                style: TextStyle(
//                    fontSize: 18.0,
//                    letterSpacing: 2.0,
//                    fontStyle: FontStyle.normal,
//                    fontWeight: FontWeight.bold),
//              ),
//              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
//              onTap: () {
//                print(titles[index]);
//              },
//            ),
//          );
//        },
//      ),
        );
  }
}
