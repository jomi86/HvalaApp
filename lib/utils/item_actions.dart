import 'package:Hvala/models/model_page_arguments.dart';
import 'package:Hvala/models/model_simple_list_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'make_phone_call.dart';
import 'open_browser.dart';

simpleItemAction(SimpleListItem item) {
  if (item.type == SimpleListItemType.phone) {
    makePhoneCall(item.url);
  } else {
    launchInBrowser(item.url);
  }
}

openPage(BuildContext context, String page) {
  Navigator.pushNamed(context, page);
}

openPageWithResources(
    BuildContext context, String page, PageArguments arguments) {
  Navigator.pushNamed(context, page, arguments: arguments);
//  Navigator.pushReplacement(
//    context,
//    MaterialPageRoute(
//      fullscreenDialog: true,
//      builder: (context) => HListPage(resourceUrl: resourceUrl),
//    ),
//  );
}
