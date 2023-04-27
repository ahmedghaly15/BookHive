import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '/constants.dart';

class WebViewScreen extends StatelessWidget {
  final String url;
  const WebViewScreen({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => navigateBack(context),
        ),
      ),
      body: WebView(
        initialUrl: url,
        // javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
