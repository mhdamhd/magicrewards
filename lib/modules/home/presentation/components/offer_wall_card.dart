import 'package:flutter/material.dart';
import 'package:magic_rewards/core/constants/app_colors.dart';
import 'package:magic_rewards/core/core_compoent/app_container.dart';
import 'package:magic_rewards/core/core_compoent/app_network_image.dart';
import 'package:magic_rewards/core/core_compoent/show_toast.dart';
import 'package:magic_rewards/core/extensions/theme_extensions/text_theme_extension.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';
import 'package:magic_rewards/modules/home/domin/entities/home_entity.dart';
import 'package:url_launcher/url_launcher.dart';

class OfferWallCard extends StatelessWidget {
  final OfferWallEntity offerWall;
  final int index;

  const OfferWallCard({Key? key, required this.offerWall, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool firstRow = index % 2 == 0;
    return AppContainer(
        margin: EdgeInsetsDirectional.only(
            start: firstRow ? 20 : 10, end: firstRow ? 10 : 20, bottom: 10),
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
          onPressed: _onPressed,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: AppNetworkImage(
                    url: offerWall.thumbnail ?? '', height: 100),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                child: Text(
                  offerWall.title,
                  style: context.f16600,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ));
  }

  Future<void> _onPressed() async {
    String url = offerWall.url
            .replaceAll('{user_id}', CacheStorageServices().username) ??
        '';

    ///todo: implement firebase analytics
    // await FirebaseAnalytics.instance.logEvent(name: 'offer', parameters: {'username' : appController.userManager.username, 'offer' : offer.offerTitle ?? ''});
    try {
      if (!await launchUrl(Uri.parse(url),
          mode: LaunchMode.externalApplication)) {}
    } catch (ex) {
      showToast(message: ex.toString());
    }
  }
}
