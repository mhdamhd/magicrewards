import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/core_compoent/app_container.dart';
import 'package:magic_rewards/core/core_compoent/app_network_image.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_entity.dart';
import 'package:magic_rewards/modules/tasks/presentation/routes/task_details_route.dart';

class TaskCard extends StatelessWidget {
  final TaskEntity task;

  const TaskCard({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppContainer(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: EdgeInsets.zero,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            elevation: 0,
            onPrimary: AppColors.secondary,
            padding: EdgeInsets.zero,
          ),
          onPressed: () => _onPressed(context),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    AppNetworkImage(
                      url: task.image,
                      height: 100.w,
                      width: 100.w,
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Text(task.title,
                              style: context.f16600
                                  ?.copyWith(color: AppColors.yellow)),
                          const SizedBox(height: 10),
                          Text(task.subTitle,
                              style: context.f12400
                                  ?.copyWith(color: AppColors.lightGrey)),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  decoration: const BoxDecoration(
                      color: AppColors.yellow,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16))),
                  child: Text("+ ${task.price} Points", style: context.f14600),
                )
              ],
            ),
          ),
        ));
  }

  void _onPressed(BuildContext context) {
    context.push(TaskDetailsRoute.name, extra: task);
  }
}
