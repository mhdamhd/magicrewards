import 'package:flutter/material.dart';
import 'package:magic_rewards/core/constants/apis_urls.dart';
import 'package:magic_rewards/core/core_compoent/webview_container.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebViewContainer(
        title: "Privacy Policy", bigFont: true, url: ApisUrls.privacyPolicy);
  }
}
