import 'package:Hvala/theme/HTextStyles.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Omiljeno", style: HTextStyle.appTitle(context)),
        ),
        body: Container());
  }
}
