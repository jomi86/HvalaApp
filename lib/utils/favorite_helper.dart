import 'package:Hvala/constants/shared_prefs_constants.dart';
import 'package:Hvala/models/model_array_simple_list_item.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:shared_preferences/shared_preferences.dart';

addToFavorites(SimpleListItem item) {
  _getFavorites().then((items) {
    items.array.add(item);
    _saveFavorites(items);
  });
}

removeFromFavorites(SimpleListItem item) {
  _getFavorites().then((items) {
    items.array.remove(item);
    _saveFavorites(items);
  });
}

Future<ArraySimpleListItem> getAllFavorites() {
  return _getFavorites();
}

Future<ArraySimpleListItem> _getFavorites() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  ArraySimpleListItem allItems;
  if (_prefs.containsKey(FAVORITES_SHARED_PREFS_KEY)) {
    allItems = ArraySimpleListItem.fromJsonString(
        _prefs.getString(FAVORITES_SHARED_PREFS_KEY));
  }
  return allItems;
}

_saveFavorites(ArraySimpleListItem all) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.setString(FAVORITES_SHARED_PREFS_KEY, all.toJsonString());
}
