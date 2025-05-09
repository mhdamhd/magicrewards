import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';

class AppRichText extends StatelessWidget {
  final String text;
  final String buttonText;
  final VoidCallback onTap;

  const AppRichText(
      {Key? key,
      required this.text,
      required this.buttonText,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: text,
          children: [
            TextSpan(
                text: "  $buttonText",
                style: context.f12700,
                recognizer: TapGestureRecognizer()..onTap = onTap),
          ],
          style: context.f12400?.copyWith(color: AppColors.lightGrey)),
    );
  }
}
