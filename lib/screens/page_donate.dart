import 'package:Hvala/constants/screen_routes.dart';
import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/url_resources/donate_clothes_page_urls.dart';
import 'package:Hvala/url_resources/donate_food_urls.dart';
import 'package:Hvala/url_resources/donate_money_page_urls.dart';
import 'package:Hvala/utils/item_actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageDonate extends StatefulWidget {
  @override
  _PageDonateState createState() => _PageDonateState();
}

class _PageDonateState extends State<PageDonate> {
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
                        title: 'Doniraj hranu',
                        onPressedAction: () {
                          openPageWithResources(context, SCREEN_GENERIC_LIST,
                              donate_food_page_urls);
                        }),
                    SimpleRowButton(
                        title: 'Doniraj novac',
                        onPressedAction: () {
                          openPageWithResources(context, SCREEN_GENERIC_LIST,
                              donate_money_page_urls);
                        }),
                    SimpleRowButton(
                        title: 'Doniraj garderobu',
                        onPressedAction: () {
                          openPageWithResources(context, SCREEN_GENERIC_LIST,
                              donate_clothes_page_urls);
                        }),
                  ],
                )))));
  }
}
