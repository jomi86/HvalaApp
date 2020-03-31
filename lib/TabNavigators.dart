import 'package:flutter/material.dart';
import 'package:hvala/DonateScreen.dart';

import 'BottomNavigation.dart';
import 'CallScreen.dart';
import 'HelpScreen.dart';
import 'NeedScreen.dart';

class TabNavigatorRoutes {
  static const String donate = 'donate';
  static const String help = 'help';
  static const String need = 'need';
  static const String call = 'call';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context) {
    return {
      TabNavigatorRoutes.donate: (context) => DonateScreen(
            title: tabName[tabItem],
          ),
      TabNavigatorRoutes.help: (context) => HelpScreen(
            title: tabName[tabItem],
          ),
      TabNavigatorRoutes.need: (context) => NeedScreen(
            title: tabName[tabItem],
          ),
      TabNavigatorRoutes.call: (context) => CallScreen(
            title: "sdasdas",
          ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.donate,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }
}
