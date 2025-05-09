import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/core_compoent/custom_appbar.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String url;
  final String title;
  final bool bigFont;

  const WebViewContainer(
      {required this.url, required this.title, this.bigFont = false, Key? key})
      : super(key: key);

  @override
  createState() => _WebViewContainerState();
}

class _WebViewContainerState extends State<WebViewContainer> {
  late final String _url;
  late final String _title;
  late final WebViewController _controller;
  int loader = 0;

  @override
  void initState() {
    _url = widget.url;
    _title = widget.title;

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            debugPrint('WebView is loading (progress : $progress%)');
            setState(() {
              loader = progress;
            });
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith(_url)) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(_url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(
            titleText: widget.title,
            withBack: true,
          ),
          body: loader == 100
              ? WebViewWidget(
                  controller: _controller,
                )
              : buildLoader()),
    );
  }

  Widget buildLoader() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularProgressIndicator(color: AppColors.secondary),
        SizedBox(height: 50.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Loading... $loader%", style: context.f12400),
          ],
        ),
      ],
    );
  }
}
