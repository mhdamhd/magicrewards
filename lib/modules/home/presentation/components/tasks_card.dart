import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/paths/images_paths.dart';
import 'package:magic_rewards/modules/tasks/presentation/routes/tasks_route.dart';

class TasksCard extends StatelessWidget {
  const TasksCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
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
          onPressed: () {
            context.push(TasksRoute.name);
          },
          child: Image.asset(ImagesPaths.tasksPng)),
    );
  }
}
