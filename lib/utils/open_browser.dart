import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchInBrowser(String url) async {
  if (await canLaunch(url)) {
    await launch(url,
        forceSafariVC: false,
        forceWebView: false,
        universalLinksOnly: false,
        statusBarBrightness: Brightness.dark);
  } else {
    throw 'Could not launch $url';
  }
}
