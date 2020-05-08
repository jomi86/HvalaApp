import 'dart:convert';

import 'package:Hvala/constants/shared_prefs_constants.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

addToFavorites(SimpleListItem item) {
  _getFavorites().then((items) {
    if (!items.contains(item)) {
      items.add(item);
    }
    _saveFavorites(items);
  });
}

removeFromFavorites(SimpleListItem item) {
  _getFavorites().then((items) {
    items.remove(item);
    _saveFavorites(items);
  });
}

Future<bool> isInFavorites(SimpleListItem item) {
  return _getFavorites().then((items) {
    return items.contains(item);
  });
}

Future<List<SimpleListItem>> getAllFavorites() {
  return _getFavorites();
}

Future<List<SimpleListItem>> _getFavorites() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  List<SimpleListItem> allItems = [];
  if (_prefs.containsKey(FAVORITES_SHARED_PREFS_KEY)) {
    List<dynamic> a = json.decode(_prefs.getString(FAVORITES_SHARED_PREFS_KEY));
    for (var obj in a) {
      SimpleListItem item = SimpleListItem.fromJson(obj);
      allItems.add(item);
    }
  }
  return allItems;
}

_saveFavorites(List<SimpleListItem> all) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.remove(FAVORITES_SHARED_PREFS_KEY);
  _prefs.setString(FAVORITES_SHARED_PREFS_KEY, json.encode(all));
}
