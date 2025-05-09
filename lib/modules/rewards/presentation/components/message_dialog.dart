import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/constants/app_gradient.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/paths/images_paths.dart';

class MessageDialog extends StatelessWidget {
  final String message;
  final bool happy;

  const MessageDialog({Key? key, required this.message, this.happy = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2)).then((value) => context.pop());
    return Dialog(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: AppGradients.dialogGradient,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(top: 100.w),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 60.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                        child: Text(message,
                            style: context.f20700,
                            textAlign: TextAlign.center)),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Image.asset(
                  happy ? ImagesPaths.happyPng : ImagesPaths.sadPng,
                  height: 250.w)),
        ],
      ),
    );
  }
}
