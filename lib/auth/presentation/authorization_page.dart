import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:events/auth/infrastructure/eventbrite_authenticator.dart';
import 'package:events/auth/shared/providers.dart';
import 'package:events/core/routes/app_routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:webview_flutter/webview_flutter.dart';

class AuthorizationPage extends ConsumerStatefulWidget {
  final Uri authorizationUrl;
  final void Function(Uri redirectUrl) onAuthorizationCodeRedirectAttempt;

  const AuthorizationPage({
    super.key,
    required this.authorizationUrl,
    required this.onAuthorizationCodeRedirectAttempt,
  });

  @override
  ConsumerState<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends ConsumerState<AuthorizationPage> {
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
      body: SafeArea(
        child: WebView(
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: widget.authorizationUrl.toString(),
          onWebViewCreated: (controller) {
            controller.clearCache();

            /*   CookieManager().clearCookies(); */
          },
          navigationDelegate: (navReq) {
            if (navReq.url
                .startsWith(EventbriteAuthenticator.redirectUri.toString())) {
              widget.onAuthorizationCodeRedirectAttempt(
                Uri.parse(navReq.url),
              );

              return NavigationDecision.prevent;
            }
            if (navReq.url == EventbriteAuthenticator.eventbriteHome) {
              ref
                  .read(authNotifierProvider.notifier)
                  .signIn((authorizationUri) {
                final completer = Completer<Uri>();
                AutoRouter.of(context).pushAndPopUntil(
                  predicate: (route) => false,
                  AuthorizationRoute(
                    authorizationUrl: authorizationUri,
                    onAuthorizationCodeRedirectAttempt: (redirectedUrl) {
                      if (completer.isCompleted == false) {
                        completer.complete(redirectedUrl);
                      }
                    },
                  ),
                );
                return completer.future;
              });
            }

            return NavigationDecision.navigate;
          },
        ),
      ),
    );
  }
}
