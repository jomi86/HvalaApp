import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hvala/constants/app_content_constants.dart';
import 'package:hvala/custom_widgets/row_button_simple.dart';
import 'package:hvala/utils/open_browser.dart';

class PageLearn extends StatelessWidget {
  _learnFirstAid() {
    launchInBrowser(LEARN_FIRST_AID_PAGE);
  }

  _learnHandLanguage() {}

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
                        title: 'Prva pomoć',
                        onPressedAction: () {
                          _learnFirstAid();
                        }),
                    SimpleRowButton(
                        title: 'Jezik rukama',
                        onPressedAction: () {
                          _learnHandLanguage();
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
