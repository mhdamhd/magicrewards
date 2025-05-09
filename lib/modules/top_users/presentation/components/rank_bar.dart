import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/core_compoent/app_animated_container.dart';
import 'package:magic_rewards/core/core_compoent/app_avatar.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/modules/top_users/domain/entities/top_users_entity.dart';

class RankBar extends StatelessWidget {
  final UserRankEntity userRank;
  final double maxPoints;

  const RankBar({Key? key, required this.userRank, required this.maxPoints})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double maxHeight = 300.w;
    final double height = (userRank.points * maxHeight) / maxPoints;
    final Color color = switch (userRank.rank) {
      1 => AppColors.orange,
      2 => AppColors.yellow,
      3 => AppColors.white2,
      _ => AppColors.orange
    };
    return Flexible(
      child: Column(
        children: [
          AppAnimatedContainer(
            height: 0.0,
            initHeight: height,
            width: 70.w,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          AppAvatar(index: userRank.rank, radius: 40.w),
          Text(userRank.wallet, style: context.f16600),
          // Text(userRank.points.toString(), style: context.f10400),
          Text(userRank.amount, style: context.f14400),
          const SizedBox(height: 10),
          AppAnimatedContainer(
            height: height,
            initHeight: 0.0,
            width: 70.w,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
