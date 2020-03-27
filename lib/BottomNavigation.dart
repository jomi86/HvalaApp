import 'package:flutter/material.dart';

enum TabItem { donate, help, need, call }

Map<TabItem, String> tabName = {
  TabItem.donate: 'Donate',
  TabItem.help: 'Help',
  TabItem.need: 'Need',
  TabItem.call: 'Call',
};

Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.donate: Colors.red,
  TabItem.help: Colors.red,
  TabItem.need: Colors.red,
  TabItem.call: Colors.red,
};

Map<TabItem, IconData> activeTabIcon = {
  TabItem.donate: Icons.card_giftcard,
  TabItem.help: Icons.enhanced_encryption,
  TabItem.need: Icons.add_shopping_cart,
  TabItem.call: Icons.add_call,
};

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        _buildItem(tabItem: TabItem.donate),
        _buildItem(tabItem: TabItem.help),
        _buildItem(tabItem: TabItem.need),
        _buildItem(tabItem: TabItem.call),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
    );
  }

  BottomNavigationBarItem _buildItem({TabItem tabItem}) {
    String text = tabName[tabItem];
    return BottomNavigationBarItem(
      icon: Icon(
        _iconTabMatching(item: tabItem),
        color: _colorTabMatching(item: tabItem),
      ),
      title: Text(
        text,
        style: TextStyle(
          color: _colorTabMatching(item: tabItem),
        ),
      ),
    );
  }

  Color _colorTabMatching({TabItem item}) {
    return currentTab == item ? activeTabColor[item] : Colors.grey;
  }

  IconData _iconTabMatching({TabItem item}) {
    return activeTabIcon[item];
  }
}
