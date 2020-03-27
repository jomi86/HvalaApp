import 'package:flutter/material.dart';

import 'BottomNavigation.dart';
import 'TabNavigators.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  TabItem _currentTab = TabItem.donate;
  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.donate: GlobalKey<NavigatorState>(),
    TabItem.help: GlobalKey<NavigatorState>(),
    TabItem.need: GlobalKey<NavigatorState>(),
    TabItem.call: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != TabItem.donate) {
            // select 'main' tab
            _selectTab(TabItem.donate);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.donate),
          _buildOffstageNavigator(TabItem.help),
          _buildOffstageNavigator(TabItem.need),
          _buildOffstageNavigator(TabItem.call),
        ]),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
