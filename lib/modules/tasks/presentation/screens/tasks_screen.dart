import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/core_compoent/app_scaffold.dart';
import 'package:magic_rewards/core/core_compoent/custom_appbar.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/generated/l10n.dart';
import 'package:magic_rewards/modules/tasks/presentation/sections/tasks_orders_section.dart';
import 'package:magic_rewards/modules/tasks/presentation/sections/tasks_section.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AppScaffold(
        appBar: CustomAppBar(
          titleText: S.of(context).tasks,
          height: kToolbarHeight + 40.w,
          bottom: TabBar(
              labelStyle: context.f16600,
              labelColor: AppColors.yellow2,
              unselectedLabelColor: Colors.white,
              indicatorColor: AppColors.yellow2,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
              tabs: [
                Tab(text: S.of(context).tasks),
                Tab(text: S.of(context).tasksOrders),
              ]),
        ),
        body: TabBarView(
          children: [TasksSection(), TasksOrdersSection()],
        ),
      ),
    );
  }
}
