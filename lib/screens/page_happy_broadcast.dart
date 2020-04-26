import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HappyBroadcastPage extends StatefulWidget {
  @override
  _HappyBroadcastPageState createState() => _HappyBroadcastPageState();
}

class _HappyBroadcastPageState extends State<HappyBroadcastPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: WebView(
          initialUrl: 'https://www.thehappybroadcast.com/',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
        ));
  }
}
