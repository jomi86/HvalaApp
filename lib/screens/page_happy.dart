import 'package:Hvala/constants/app_content_constants.dart';
import 'package:Hvala/custom_widgets/row_button_expanded.dart';
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
                    ExpandedRowButton(
                      title: 'Priče sa dušom'.toUpperCase(),
                      subtitle: 'Priče sa dušom',
                      onPressedAction: () =>
                          launchInBrowser(PRICE_SA_DUSOM_URl),
                    ),
                    ExpandedRowButton(
                      title: 'Good News Network'.toUpperCase(),
                      subtitle: 'Srećne vesti - Good News Network',
                      onPressedAction: () =>
                          launchInBrowser(GOOD_NEWS_NETWORK_URL),
                    ),
                    ExpandedRowButton(
                      title: 'Happy broadcast'.toUpperCase(),
                      subtitle: 'Srećne vesti - Happy broadcast',
                      onPressedAction: () =>
                          launchInBrowser(HAPPY_BROADCAST_URL),
                    )
                  ],
                )))));
  }
}
