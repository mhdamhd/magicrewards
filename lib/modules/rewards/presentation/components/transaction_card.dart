import 'package:flutter/material.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/core_compoent/app_container.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/utils/app_date_formatter.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/transactions_entity.dart';

class TransactionCard extends StatelessWidget {
  final TransactionEntity transaction;

  const TransactionCard({Key? key, required this.transaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                buildInfo(context,
                    title: S.of(context).name, value: transaction.name),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildInfo(context,
                    title: S.of(context).points, value: transaction.points),
                buildInfo(context,
                    title: S.of(context).date,
                    value: DataFormatter().formatDatedMMMHms(transaction.date)),
                // buildInfo(context,
                //     title: S.of(context).amount, value: transaction.name),
              ],
            ),
          ],
        ));
  }

  Widget buildInfo(BuildContext context,
      {required String title, required String value}) {
    return Flexible(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: context.f14400?.copyWith(color: AppColors.yellow)),
          Text(value, style: context.f16600?.copyWith(color: AppColors.white1)),
        ],
      ),
    );
  }
}
