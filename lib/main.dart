// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:Hvala/screens/HListPage.dart';
import 'package:Hvala/screens/page_donate_food.dart';
import 'package:Hvala/theme/HTheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/screen_routes.dart';
import 'screens/page_call.dart';
import 'screens/page_donate.dart';
import 'screens/page_help.dart';
import 'screens/page_learn.dart';
import 'screens/page_need.dart';
import 'screens/screen_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: HTheme.getDefaultTheme(context),
        darkTheme: HTheme.getDefaultTheme(context),
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        initialRoute: SCREEN_APP,
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case SCREEN_APP:
              return MaterialPageRoute(
                builder: (context) => ScreenApp(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_DONATE:
              return MaterialPageRoute(
                builder: (context) => PageDonate(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_HELP:
              return MaterialPageRoute(
                builder: (context) => PageHelp(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_NEED:
              return MaterialPageRoute(
                builder: (context) => PageNeed(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_LEARN:
              return MaterialPageRoute(
                builder: (context) => PageLearn(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_CALL:
              return MaterialPageRoute(
                builder: (context) => PageCall(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_DONATE_FOOD:
              return MaterialPageRoute(
                builder: (context) => PageDonateFood(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_GENERIC_LIST:
              return MaterialPageRoute(
                builder: (context) => HListPage(),
                fullscreenDialog: true,
                settings: settings,
              );
          }
          return null;
        });
  }
}
