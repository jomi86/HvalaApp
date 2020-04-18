import 'package:Hvala/screens/page_call.dart';
import 'package:Hvala/screens/page_donate.dart';
import 'package:Hvala/screens/page_help.dart';
import 'package:Hvala/theme/HColors.dart';
import 'package:Hvala/theme/HTextStyles.dart';
import 'package:flutter/material.dart';

import 'page_learn.dart';

class ScreenApp extends StatefulWidget {
  @override
  _ScreenAppState createState() => _ScreenAppState();
}

class _ScreenAppState extends State<ScreenApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _setSelectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _getSelectedIndex() {
    return _selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hvala", style: HTextStyle.appTitle(context)),
      ),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            IndexedStack(
              children: <Widget>[
                PageDonate(),
                PageHelp(),
                PageCall(),
                PageLearn()
              ],
              index: _selectedIndex,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TabBarButton(
                index: 0,
                selectedIndex: _getSelectedIndex,
                setSelectedIndex: _setSelectedIndex,
                iconData: Icons.card_giftcard,
                text: 'Doniraj'.toUpperCase(),
              ),
              TabBarButton(
                index: 1,
                selectedIndex: _getSelectedIndex,
                setSelectedIndex: _setSelectedIndex,
                iconData: Icons.enhanced_encryption,
                text: 'Pomozi'.toUpperCase(),
              ),
//              TabBarButton(
//                index: 2,
//                selectedIndex: _getSelectedIndex,
//                setSelectedIndex: _setSelectedIndex,
//                iconData: Icons.add_shopping_cart,
//                text: 'Treba mi'.toUpperCase(),
//              ),
              TabBarButton(
                index: 2,
                selectedIndex: _getSelectedIndex,
                setSelectedIndex: _setSelectedIndex,
                iconData: Icons.add_call,
                text: 'Pozovi'.toUpperCase(),
              ),
              TabBarButton(
                index: 3,
                selectedIndex: _getSelectedIndex,
                setSelectedIndex: _setSelectedIndex,
                iconData: Icons.add_shopping_cart,
                text: 'Nauči'.toUpperCase(),
              ),
//              TabBarButton(
//                index: 3,
//                selectedIndex: _getSelectedIndex,
//                setSelectedIndex: _setSelectedIndex,
//                iconData: Icons.queue_music,
//                text: 'Ja'.toUpperCase(),
//              ),
            ],
          ),
        ),
        //to add a space between the FAB and BottomAppBar
        shape: CircularNotchedRectangle(),
        //color of the BottomAppBar
        color: Colors.white,
      ),
    );
  }
}

class TabBarButton extends StatelessWidget {
  final ValueGetter<int> selectedIndex;
  final ValueSetter<int> setSelectedIndex;
  final IconData iconData;
  final String text;
  final int index;

  const TabBarButton({
    Key key,
    this.index,
    this.selectedIndex,
    this.setSelectedIndex,
    this.iconData,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => {setSelectedIndex(index)},
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(iconData,
                size: 25,
                color: selectedIndex() == index
                    ? HColors.primaryColor()
                    : HColors.lightPrimaryColor()),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text(text,
                  style: selectedIndex() == index
                      ? HTextStyle.tabBarSelected(context)
                      : HTextStyle.tabBarRegular(context)),
            ),
          ],
        ),
      ),
    );
  }
}
