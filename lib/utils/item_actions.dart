import 'package:Hvala/models/model_simple_list_item.dart';

import 'make_phone_call.dart';
import 'open_browser.dart';

simpleItemAction(SimpleListItem item) {
  if (item.type == SimpleListItemType.url) {
    makePhoneCall(item.url);
  } else {
    launchInBrowser(item.url);
  }
}
