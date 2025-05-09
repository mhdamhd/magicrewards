import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/constants/app_gradient.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/paths/images_paths.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BalanceCard extends StatelessWidget {
  final double balance;
  final double minPayout;
  final double percent;

  const BalanceCard(
      {Key? key,
      required this.balance,
      required this.percent,
      required this.minPayout})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool canRedeem = percent == 1.0;
    return Container(
      decoration: BoxDecoration(
          color: canRedeem ? AppColors.green : null,
          gradient: canRedeem ? null : AppGradients.yellow2Gradient,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(ImagesPaths.coinPng, width: 20.w),
              const SizedBox(width: 5),
              Text(balance.toString(),
                  style: context.f14600?.copyWith(color: AppColors.black1))
            ],
          ),
          const SizedBox(height: 20),
          if (!canRedeem) ...[
            Row(
              children: [
                Text(S.of(context).minimumPayout,
                    style: context.f10500?.copyWith(color: Colors.black)),
                const Spacer(),
                Image.asset(ImagesPaths.coinPng, width: 15.w),
                const SizedBox(width: 5),
                Text(
                  minPayout.toString(),
                  style: context.f10600?.copyWith(color: AppColors.black1),
                )
              ],
            ),
            const SizedBox(height: 5),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 1000,
              lineHeight: 5.0.w,
              percent: percent,
              linearStrokeCap: LinearStrokeCap.butt,
              backgroundColor: AppColors.black1.withOpacity(0.25),
              progressColor: AppColors.yellow,
              padding: EdgeInsets.zero,
            ),
          ],
          if (canRedeem) ...[
            Text(S.of(context).youCanRedeem,
                style: context.f16600?.copyWith(color: AppColors.black1)),
          ],
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
