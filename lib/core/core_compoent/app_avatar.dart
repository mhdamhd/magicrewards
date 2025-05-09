import 'package:flutter/material.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/paths/images_paths.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';

class AppAvatar extends StatelessWidget {
  final int? index;
  final double? radius;

  const AppAvatar({Key? key, this.index, this.radius}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int avatarIndex = index ?? CacheStorageServices().avatar;
    return Hero(
      tag: AppConstants.avatarTag(avatarIndex),
      child: CircleAvatar(
        radius: radius,
        backgroundImage: AssetImage(ImagesPaths.avatarsPng[avatarIndex]),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
