import 'package:Hvala/constants/app_content_constants.dart';
import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/utils/open_browser.dart';
import 'package:flutter/material.dart';

class HappyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: HColors.backgroundColor(),
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
                child: SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    SimpleRowButton(
                      title: 'Priče sa dušom'.toUpperCase(),
                      onPressedAction: () =>
                          launchInBrowser(PRICE_SA_DUSOM_URl),
                    ),
                    SimpleRowButton(
                      title: 'Srećne vesti - Good News Network'.toUpperCase(),
                      onPressedAction: () =>
                          launchInBrowser(GOOD_NEWS_NETWORK_URL),
                    ),
                    SimpleRowButton(
                      title: 'Srećne vesti - Happy broadcast'.toUpperCase(),
                      onPressedAction: () =>
                          launchInBrowser(HAPPY_BROADCAST_URL),
                    )
                  ],
                )))));
  }
}
