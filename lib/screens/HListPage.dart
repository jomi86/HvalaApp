import 'package:Hvala/custom_widgets/row_button_expanded.dart';
import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/utils/item_actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HListPage extends StatefulWidget {
//  final String resourceUrl = ModalRoute.of(context).settings.arguments;
  final List<Map<String, String>> resourceUrl;

  const HListPage({Key key, this.resourceUrl}) : super(key: key);

  @override
  _HListPageState createState() => _HListPageState(resourceUrl);
}

class _HListPageState extends State<HListPage> {
  final List<Map<String, String>> resourceUrl;
  List<SimpleListItem> urls;
  List<SimpleListItem> urlsAll;

  _HListPageState(this.resourceUrl);

  @override
  void initState() {
    super.initState();
    urls = resourceUrl.map((data) => SimpleListItem.fromJson(data)).toList();
    urlsAll = List.of(urls);
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
                      (i) => urls[i].description != null
                          ? ExpandedRowButton(
                              title: urls[i].name,
                              subtitle: urls[i].description,
                              onPressedAction: () {
                                simpleItemAction(urls[i]);
                              })
                          : SimpleRowButton(
                              title: urls[i].name,
                              onPressedAction: () {
                                simpleItemAction(urls[i]);
                              })))),
        )));
  }
}
