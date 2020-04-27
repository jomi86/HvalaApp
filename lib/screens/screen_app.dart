import 'package:Hvala/constants/screen_routes.dart';
import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/theme/HTextStyles.dart';
import 'package:Hvala/url_resources/covid_page_urls.dart';
import 'package:Hvala/url_resources/mali_proizvodjaci_urls.dart';
import 'package:Hvala/utils/item_actions.dart';
import 'package:flutter/material.dart';

class ScreenApp extends StatefulWidget {
  @override
  _ScreenAppState createState() => _ScreenAppState();
}

class _ScreenAppState extends State<ScreenApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, SCREEN_CALL),
          )
        ],
        title: Text("Hvala", style: HTextStyle.appTitle(context)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call),
        elevation: 2.0,
        onPressed: () => Navigator.pushNamed(context, SCREEN_CALL),
      ),
      body: SafeArea(
          child: Column(
        children: <Widget>[
          SimpleRowButton(
              title: 'Covid-19',
              onPressedAction: () {
                openPageWithResources(
                    context, SCREEN_GENERIC_LIST, covid_page_urls);
              }),
          SimpleRowButton(
            title: 'Doniraj'.toUpperCase(),
            onPressedAction: () => Navigator.pushNamed(context, SCREEN_DONATE),
          ),
          SimpleRowButton(
            title: 'Pomozi'.toUpperCase(),
            onPressedAction: () => Navigator.pushNamed(context, SCREEN_HELP),
          ),
          SimpleRowButton(
            title: 'Nauči'.toUpperCase(),
            onPressedAction: () => Navigator.pushNamed(context, SCREEN_LEARN),
          ),
          SimpleRowButton(
            title: 'Pomozi malim proizvodzačima'.toUpperCase(),
            onPressedAction: () => openPageWithResources(
                context, SCREEN_GENERIC_LIST, serbia_food_page_urls),
          ),
          SimpleRowButton(
            title: 'Saznaj nešto lepo danas :)'.toUpperCase(),
            onPressedAction: () => Navigator.pushNamed(context, SCREEN_HAPPY),
          )
        ],
      )),
    );
  }
}
