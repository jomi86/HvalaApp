import 'package:flutter/material.dart';
import 'package:hvala/constants/app_content_constants.dart';
import 'package:hvala/custom_widgets/row_button_simple.dart';
import 'package:hvala/utils/make_phone_call.dart';
import 'package:hvala/utils/open_browser.dart';

class PageCall extends StatelessWidget {
  _openCovid19InfoPage() {
    launchInBrowser(COVID19_INFO_PAGE);
  }

  _callCovid19InfoCenter() {
    makePhoneCall(COVID19_INFO_PHONE);
  }

  _callAmbulance() {
    makePhoneCall(AMBULANCE_PHONE);
  }

  _callPolice() {
    makePhoneCall(POLICE_PHONE);
  }

  _callFireDepartment() {
    makePhoneCall(FIRE_DEPARTMENT_PHONE);
  }

  _callHelpOnTheRoad() {
    makePhoneCall(HELP_ON_THE_ROAD_PHONE);
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
                        title: 'Covid19 info stranica',
                        onPressedAction: () {
                          _openCovid19InfoPage();
                        }),
                    SimpleRowButton(
                        title: 'Covid19 info linija',
                        onPressedAction: () {
                          _callCovid19InfoCenter();
                        }),
                    SimpleRowButton(
                      title: 'Hitna Pomoć',
                      onPressedAction: () {
                        _callAmbulance();
                      },
                    ),
                    SimpleRowButton(
                        title: 'Policija',
                        onPressedAction: () {
                          _callPolice();
                        }),
                    SimpleRowButton(
                        title: 'Vatrogasci',
                        onPressedAction: () {
                          _callFireDepartment();
                        }),
                    SimpleRowButton(
                        title: 'Pomoć na putu',
                        onPressedAction: () {
                          _callHelpOnTheRoad();
                        })
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
