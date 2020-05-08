import 'package:Hvala/constants/screen_routes.dart';
import 'package:Hvala/custom_widgets/row_button_simple.dart';
import 'package:Hvala/models/model_page_arguments.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/theme/HTextStyles.dart';
import 'package:Hvala/url_resources/call_page_urls.dart';
import 'package:Hvala/url_resources/ekologija_page_urls.dart';
import 'package:Hvala/url_resources/happy_page_urls.dart';
import 'package:Hvala/url_resources/help_page_urls.dart';
import 'package:Hvala/url_resources/learn_page_urls.dart';
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
        title: Text("Hvala", style: HTextStyle.appTitle(context)),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite_border),
        elevation: 2.0,
        backgroundColor: HColors.actionButtonColor(),
        onPressed: () => Navigator.pushNamed(context, SCREEN_FAVORITES),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SimpleRowButton(
              title: 'Doniraj'.toUpperCase(),
              onPressedAction: () =>
                  Navigator.pushNamed(context, SCREEN_DONATE),
            ),
            SimpleRowButton(
              title: 'Pomozi'.toUpperCase(),
              onPressedAction: () => openPageWithResources(context,
                  SCREEN_GENERIC_LIST, PageArguments("Pomozi", help_page_urls)),
            ),
            SimpleRowButton(
              title: 'Nauči'.toUpperCase(),
              onPressedAction: () => openPageWithResources(context,
                  SCREEN_GENERIC_LIST, PageArguments("Nauči", learn_page_urls)),
            ),
            SimpleRowButton(
              title: 'Pomozi malim proizvodzačima'.toUpperCase(),
              onPressedAction: () => openPageWithResources(
                  context,
                  SCREEN_GENERIC_LIST,
                  PageArguments("Mali proizvodjači", serbia_food_page_urls)),
            ),
            SimpleRowButton(
              title: 'Važni brojevi'.toUpperCase(),
              onPressedAction: () => openPageWithResources(
                  context,
                  SCREEN_GENERIC_LIST,
                  PageArguments("Važni brojevi", call_page_urls)),
            ),
            SimpleRowButton(
              title: 'Ekologija'.toUpperCase(),
              onPressedAction: () => openPageWithResources(
                  context,
                  SCREEN_GENERIC_LIST,
                  PageArguments("Ekologija", eco_page_urls)),
            ),
            SimpleRowButton(
              title: 'Saznaj nešto lepo danas'.toUpperCase(),
              onPressedAction: () => openPageWithResources(
                  context,
                  SCREEN_GENERIC_LIST,
                  PageArguments("Lepe vesti", happy_page_urls)),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      )),
    );
  }
}
