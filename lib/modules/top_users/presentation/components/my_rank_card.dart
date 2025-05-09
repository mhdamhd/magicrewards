import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:magic_rewards/core/constants/app_gradient.dart';
import 'package:magic_rewards/core/core_compoent/app_avatar.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/modules/top_users/domain/entities/top_users_entity.dart';

class MyRankCard extends StatelessWidget {
  final UserRankEntity userRank;

  const MyRankCard({Key? key, required this.userRank}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: AppGradients.blue2Gradient,
          border: GradientBoxBorder(
            gradient: AppGradients.white1Gradient,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                AppAvatar(radius: 30.w),
                Text(userRank.wallet, style: context.f14600),
              ],
            ),
            buildInfoColumn(context,
                title: "Points", value: userRank.points.toString()),
            buildInfoColumn(context, title: "USD", value: userRank.amount),
            buildInfoColumn(context,
                title: "Position", value: userRank.rank.toString()),
          ],
        ));
  }

  Column buildInfoColumn(BuildContext context,
      {required String title, required String value}) {
    return Column(
      children: [
        Text(title, style: context.f14600),
        Text(value, style: context.f14400),
      ],
    );
  }
}
