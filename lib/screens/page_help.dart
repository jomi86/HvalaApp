import 'package:flutter/material.dart';
import 'package:hvala/constants/app_content_constants.dart';
import 'package:hvala/custom_widgets/row_button_simple.dart';
import 'package:hvala/utils/open_browser.dart';

class PageHelp extends StatelessWidget {
  _volunteerAction() {
    launchInBrowser(VOLUNTEER_INFO_PAGE);
  }

  _giveBloodAction() {
    launchInBrowser(GIVE_BLOOD_INFO_PAGE);
  }

  _helpOlderPeople() {
    launchInBrowser(OLDER_PEOPLE_INFO_PAGE);
  }

  _helpVisuallyImpairedPersons() {
    launchInBrowser(VISUALLY_IMPAIRED_INFO_PAGE);
  }

  _helpDeafPeople() {
    launchInBrowser(DEAF_PEOPLE_INFO_PAGE);
  }

  _redCrossAction() {
    launchInBrowser(RED_CROSS_INFO_PAGE);
  }

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
                        title: 'Volontiraj',
                        onPressedAction: () {
                          _volunteerAction();
                        }),
                    SimpleRowButton(
                        title: 'Daj krv',
                        onPressedAction: () {
                          _giveBloodAction();
                        }),
                    SimpleRowButton(
                        title: 'Pomozi starijim licima',
                        onPressedAction: () {
                          _helpOlderPeople();
                        }),
                    SimpleRowButton(
                        title: 'Pomozi slabovidim osobama',
                        onPressedAction: () {
                          _helpVisuallyImpairedPersons();
                        }),
                    SimpleRowButton(
                        title: 'Pomozi nagluvim osobama',
                        onPressedAction: () {
                          _helpDeafPeople();
                        }),
                    SimpleRowButton(
                        title: 'Crveni Krst',
                        onPressedAction: () {
                          _redCrossAction();
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
