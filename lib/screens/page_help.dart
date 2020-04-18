import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/url_resources/help_page_urls.dart';
import 'package:Hvala/utils/open_browser.dart';
import 'package:flutter/material.dart';

class PageHelp extends StatefulWidget {
  @override
  _PageHelpState createState() => _PageHelpState();
}

class _PageHelpState extends State<PageHelp> {
  final List<Map> helpUrlsJsonList = help_page_urls;
  List<SimpleListItem> urls;
  List<SimpleListItem> urlsAll;

  void _onPressedAction(SimpleListItem item) {
    launchInBrowser(item.url);
  }

  @override
  void initState() {
    super.initState();
    urls = helpUrlsJsonList
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
                            _onPressedAction(urls[i]);
                          })))),
        )));
  }
}
