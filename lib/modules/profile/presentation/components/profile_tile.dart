import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/constants/app_gradient.dart';
import 'package:magic_rewards/core/core_compoent/app_container.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/paths/images_paths.dart';

class ProfileTile extends StatelessWidget {
  final String icon;
  final String title;
  final bool red;
  final VoidCallback onTap;

  const ProfileTile(
      {Key? key,
      required this.icon,
      required this.title,
      required this.onTap,
      this.red = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      padding: EdgeInsets.zero,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      gradient: red ? AppGradients.redGradient : null,
      borderGradient: red ? AppGradients.red1Gradient : null,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPrimary: red ? AppColors.red1 : AppColors.secondary,
          padding: EdgeInsets.zero,
        ),
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(width: 10),
              Text(title, style: context.f16600),
              const Spacer(),
              SvgPicture.asset(ImagesPaths.arrowSvg),
            ],
          ),
        ),
      ),
    );
  }
}
