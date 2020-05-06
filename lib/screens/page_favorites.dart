import 'package:Hvala/custom_widgets/row_button_actions_simple.dart';
import 'package:Hvala/custom_widgets/row_button_expanded.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/theme/HTextStyles.dart';
import 'package:Hvala/utils/favorite_helper.dart';
import 'package:Hvala/utils/item_actions.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  List<SimpleListItem> items = [];

  @override
  void initState() {
    super.initState();
    getAllFavorites().then((favorites) {
      this.items = favorites.array;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Omiljeno", style: HTextStyle.appTitle(context)),
        ),
        backgroundColor: HColors.backgroundColor(),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 32.0, 16.0, 16.0),
          child: SingleChildScrollView(
              child: Column(
                  children: new List.generate(
                      items.length,
                      (i) => items[i].description != null
                          ? ExpandedRowButton(
                              item: items[i],
                              onPressedAction: () {
                                simpleItemAction(items[i]);
                              })
                          : SimpleActionsRowButton(
                              item: items[i],
                              onPressedAction: () {
                                simpleItemAction(items[i]);
                              })))),
        )));
  }
}
