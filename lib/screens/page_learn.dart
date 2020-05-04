import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/url_resources/learn_page_urls.dart';
import 'package:Hvala/utils/item_actions.dart';
import 'package:Hvala/utils/open_browser.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageLearn extends StatefulWidget {
  @override
  _PageLearnState createState() => _PageLearnState();
}

class _PageLearnState extends State<PageLearn> {
  final List<Map> learnUrlsJsonList = learn_page_urls;
  List<SimpleListItem> urls;
  List<SimpleListItem> urlsAll;

  @override
  void initState() {
    super.initState();
    urls = learnUrlsJsonList
        .map((countryData) => SimpleListItem.fromJson(countryData))
        .toList();
    urlsAll = List.of(urls);
  }

  void _onPressedAction(SimpleListItem item) {
    launchInBrowser(item.url);
  }

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
