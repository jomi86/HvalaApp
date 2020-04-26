import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:Hvala/screens/HListPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'make_phone_call.dart';
import 'open_browser.dart';

simpleItemAction(SimpleListItem item) {
  if (item.type == SimpleListItemType.url) {
    makePhoneCall(item.url);
  } else {
    launchInBrowser(item.url);
  }
}

openPage(BuildContext context, String page) {
  Navigator.pushNamed(context, page);
}

openPageWithResources(
    BuildContext context, String page, List<Map<String, String>> resourceUrl) {
//  Navigator.pushNamed(context, page, arguments: resourceUrl);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => HListPage(resourceUrl: resourceUrl),
    ),
  );
}
