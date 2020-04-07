import 'package:flutter/material.dart';
import 'package:hvala/custom_widgets/row_button_simple.dart';

class PageNeed extends StatelessWidget {
  _needFood() {}

  _needClothes() {}

  _needOther() {}

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
                        title: 'Hrana',
                        onPressedAction: () {
                          _needFood();
                        }),
                    SimpleRowButton(
                        title: 'Garderoba',
                        onPressedAction: () {
                          _needClothes();
                        }),
                    SimpleRowButton(
                        title: 'Drugo',
                        onPressedAction: () {
                          _needOther();
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
