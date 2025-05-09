import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../constants/apis_urls.dart';
import '../constants/app_colors.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage(
      {super.key,
      required this.url,
      this.borderRadius,
      this.maxByte,
      this.height,
      this.width});

  final String url;
  final int? maxByte;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(0),
      child: SizedBox(
        height: height ?? double.infinity,
        width: width ?? double.infinity,
        child: ExtendedImage.network(
          ApisUrls.baseImagesUrl(url),
          fit: BoxFit.fitHeight,
          cache: true,
          maxBytes: maxByte ?? 100000,
          loadStateChanged: (state) {
            switch (state.extendedImageLoadState) {
              case LoadState.loading:
                return Shimmer.fromColors(
                    baseColor: AppColors.grey1,
                    highlightColor: AppColors.grey2,
                    child: Container(
                      color: AppColors.grey2,
                    ));
              case LoadState.failed:
                return const Icon(Icons.report_gmailerrorred);
              default:
                return null;
            }
          },
        ),
      ),
    );
  }
}
