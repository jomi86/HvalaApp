// Flutter code sample for BottomNavigationBar

// This example shows a [BottomNavigationBar] as it is used within a [Scaffold]
// widget. The [BottomNavigationBar] has three [BottomNavigationBarItem]
// widgets and the [currentIndex] is set to index 0. The selected item is
// amber. The `_onItemTapped` function changes the selected item's index
// and displays a corresponding message in the center of the [Scaffold].
//
// ![A scaffold with a bottom navigation bar containing three bottom navigation
// bar items. The first one is selected.](https://flutter.github.io/assets-for-api-docs/assets/material/bottom_navigation_bar.png)

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hvala/theme/HTheme.dart';

import 'constants/screen_routes.dart';
import 'screens/page_call.dart';
import 'screens/page_donate.dart';
import 'screens/page_help.dart';
import 'screens/page_learn.dart';
import 'screens/page_need.dart';
import 'screens/screen_app.dart';

void main() => runApp(MyApp(SCREEN_APP));

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  MyApp(this.initialRoute);

  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: HTheme.getDefaultTheme(context),
        initialRoute: initialRoute,
        // ignore: missing_return
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case SCREEN_APP:
              return CupertinoPageRoute(
                builder: (context) => ScreenApp(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_DONATE:
              return CupertinoPageRoute(
                builder: (context) => PageDonate(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_HELP:
              return CupertinoPageRoute(
                builder: (context) => PageHelp(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_NEED:
              return CupertinoPageRoute(
                builder: (context) => PageNeed(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_LEARN:
              return CupertinoPageRoute(
                builder: (context) => PageLearn(),
                fullscreenDialog: true,
                settings: settings,
              );
            case SCREEN_CALL:
              return CupertinoPageRoute(
                builder: (context) => PageCall(),
                fullscreenDialog: true,
                settings: settings,
              );

              return null;
          }
        });
  }
}
