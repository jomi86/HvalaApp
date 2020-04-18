import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/url_resources/need_page_urls.dart';
import 'package:Hvala/utils/item_actions.dart';
import 'package:flutter/material.dart';

class PageNeed extends StatefulWidget {
  @override
  _PageNeedState createState() => _PageNeedState();
}

class _PageNeedState extends State<PageNeed> {
  final List<Map> needUrlsJsonList = need_page_urls;
  List<SimpleListItem> urls;
  List<SimpleListItem> urlsAll;

  @override
  void initState() {
    super.initState();
    urls = needUrlsJsonList
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
