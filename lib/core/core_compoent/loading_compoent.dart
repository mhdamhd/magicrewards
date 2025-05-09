/// The [LoadingComponent] class is a reusable widget that displays a loading indicator at the center of the screen.
/// It is typically used to indicate that content is being loaded or processed.

import 'package:flutter/material.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';

// TODO: customize Loading component view

class LoadingComponent extends StatelessWidget {
  const LoadingComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(color: AppColors.secondary));
  }
}
