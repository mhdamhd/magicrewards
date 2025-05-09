import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/constants/app_gradient.dart';
import 'package:magic_rewards/core/core_compoent/app_button.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/paths/images_paths.dart';
import 'package:magic_rewards/generated/l10n.dart';

class AppDialogs {
  static Future<bool> showConfirmDialog(BuildContext context,
      {required String text, required String confirmText}) async {
    bool result = false;
    await showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            child: Container(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: AppGradients.dialogGradient,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.only(top: 60.w),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 60.w),
                        Text(text,
                            style: context.f20700, textAlign: TextAlign.center),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: AppButton(
                                  type: AppButtonType.solidRed,
                                  text: confirmText,
                                  onPressed: () {
                                    context.pop(true);
                                  }),
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: AppButton(
                                  text: S.of(context).cancel,
                                  onPressed: () {
                                    context.pop();
                                  }),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child:
                          Image.asset(ImagesPaths.confirmPng, height: 200.w)),
                ],
              ),
            ),
          );
        }).then((value) {
      result = value ?? false;
    });
    return result;
  }

// static showTowOptionsDialog({
//   required String content,
//   required List<Function()?>? actionsList,
//   required List<String?>? actionsTexts,
//   List<Color?>? actionsColors,
//   List<Color?>? actionsTextColors,
//   List<bool>? isBordered,
// }) async {
//   assert((actionsList?.length == actionsTexts?.length));
//
//   await Get.defaultDialog(
//       barrierDismissible: true,
//       title: '',
//       content: Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: Text(
//           content,
//           textAlign: TextAlign.center,
//           style:
//               Get.textTheme.headline5!.copyWith(color: AppStyle.appTextColor),
//         ),
//       ),
//       actions: [
//         Padding(
//           padding: const EdgeInsets.only(bottom: 8.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: actionsList?.map((action) {
//                   var index = actionsList.indexOf(action);
//                   return Padding(
//                       padding: const EdgeInsets.only(left: 20.0),
//                       child: AppButton(
//                         onTap: () {
//                           action?.call();
//                         },
//                         isBorder: isBordered?[index] ?? false,
//                         backgroundColor:
//                             actionsColors?[index] ?? AppStyle.appPrimaryColor,
//                         text: Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 26.0),
//                             child: Text(
//                               actionsTexts![index] ?? '',
//                               style: Get.textTheme.headline6!.copyWith(
//                                   color: actionsTextColors?[index] ??
//                                       AppStyle.appWhiteColor),
//                             )),
//                       ));
//                 }).toList() ??
//                 [],
//           ),
//         ),
//       ]);
// }
}
