import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/url_resources/donate_page_urls.dart';
import 'package:Hvala/utils/item_actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageDonate extends StatefulWidget {
  @override
  _PageDonateState createState() => _PageDonateState();
}

class _PageDonateState extends State<PageDonate> {
  final List<Map> donateUrlsJsonList = donate_page_urls;
  List<SimpleListItem> urls;
  List<SimpleListItem> urlsAll;

  @override
  void initState() {
    super.initState();
    urls = donateUrlsJsonList
        .map((countryData) => SimpleListItem.fromJson(countryData))
        .toList();
    urlsAll = List.of(urls);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HColors.backgroundColor(),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
          child: SingleChildScrollView(
              child: Column(
                  children: new List.generate(
                      urls.length,
                      (i) => SimpleRowButton(
                          title: urls[i].name,
                          onPressedAction: () {
                            simpleItemAction(urls[i]);
                          })))),
        )));
  }
}
