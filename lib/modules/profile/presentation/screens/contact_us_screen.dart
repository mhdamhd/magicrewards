import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/core_compoent/app_logo.dart';
import 'package:magic_rewards/core/core_compoent/app_scaffold.dart';
import 'package:magic_rewards/core/core_compoent/custom_appbar.dart';
import 'package:magic_rewards/core/core_compoent/show_toast.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/generated/l10n.dart';

class ContactUsScreen extends StatelessWidget {
  final String email = "support@magic-rewards.com";

  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(titleText: S.of(context).contactUs, withBack: true),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "You can contact us via this email: ",
            style: context.f16600,
          ),
          const SizedBox(height: 20),
          TextButton(
              onPressed: () async {
                await Clipboard.setData(ClipboardData(text: email));
                showToast(message: S.current.textCopiedToClipboard);
              },
              child: Text(
                email,
                style: context.f18600?.copyWith(color: AppColors.yellow),
              )),
          const Spacer(),
          const AppLogo(),
          const SizedBox(height: 10),
          Text(
            "Magic Rewards",
            style: context.f18600,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
