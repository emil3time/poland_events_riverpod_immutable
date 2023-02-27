import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:webview_flutter/webview_flutter.dart';

class BuyTicketPage extends ConsumerStatefulWidget {
  final Uri ticketUrl;

  const BuyTicketPage({
    super.key,
    required this.ticketUrl,
  });

  @override
  ConsumerState<BuyTicketPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends ConsumerState<BuyTicketPage> {
  // Platform specific configuration from WebView documentation
  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('cancel'),
      ),
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: widget.ticketUrl.toString(),
          onWebViewCreated: (controller) {
            controller.clearCache();
          },
        ),
      ),
    );
  }
}
