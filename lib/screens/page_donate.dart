import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hvala/custom_widgets/row_button_simple.dart';

class PageDonate extends StatelessWidget {
  _donateMoney() {}

  _donateFood() {}

  _donateClothes() {}

  _donateOther() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(16, 85, 16, 24),
          child: Column(children: <Widget>[
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SimpleRowButton(
                        title: 'Humaniatrne organizacije',
                        onPressedAction: () {
                          _donateMoney();
                        }),
                    SimpleRowButton(
                        title: 'Hrana',
                        onPressedAction: () {
                          _donateFood();
                        }),
                    SimpleRowButton(
                        title: 'Garderoba',
                        onPressedAction: () {
                          _donateClothes();
                        }),
                    SimpleRowButton(
                        title: 'Drugo',
                        onPressedAction: () {
                          _donateOther();
                        }),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
