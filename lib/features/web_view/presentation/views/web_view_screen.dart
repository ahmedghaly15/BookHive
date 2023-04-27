import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../constants.dart';

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
      //============== Navigating To The Web Screen Of This News ==============
      body: WebView(
        initialUrl: url,
        // javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
