/// In this class, we will define the paths to the images in assets.
/// Do not forget to add the paths to the files that contain the images in "pubspec.yaml" in line 63.
///
/// Adding a new path to the class will be done using the following method
/// static const String imageName = '$_baseImagePath/image_name.png';
///
/// Using [ImagesPaths] with: cached_network_image library, or with material [NetworkImage] widget
/// by set path to [NetworkImage] widget, or to [CachedNetworkImage] widget
///
/// Ex: NetworkImage(_path),

// TODO: add images assest pathes here
class ImagesPaths {
  static const String _baseImagesPath = 'assets/images';
  static const String _baseAvatarsPath = 'assets/avatars';
  static const String _baseTempPath = 'assets/temp';
  static const String _baseIconsPath = 'assets/icon';

  static const String backGroundImagePng =
      '$_baseImagesPath/background_image.png';
  static const String logoPng = '$_baseImagesPath/logo.png';
  static const String coinPng = '$_baseImagesPath/coin.png';
  static const String confirmPng = '$_baseImagesPath/confirm.png';
  static const String sadPng = '$_baseImagesPath/sad.png';
  static const String happyPng = '$_baseImagesPath/happy.png';
  static const String failurePng = '$_baseImagesPath/failure.png';
  static const String tasksPng = '$_baseImagesPath/tasks.png';
  static const String addImagePng = '$_baseImagesPath/add_image.png';

  ///avatars
  static const List<String> avatarsPng = [
    '$_baseAvatarsPath/avatar1.png',
    '$_baseAvatarsPath/avatar2.png',
    '$_baseAvatarsPath/avatar3.png',
    '$_baseAvatarsPath/avatar4.png',
    '$_baseAvatarsPath/avatar5.png',
    '$_baseAvatarsPath/avatar6.png',
    '$_baseAvatarsPath/avatar7.png',
    '$_baseAvatarsPath/avatar8.png'
  ];

  ///temp
  static const String tiktokPng = '$_baseTempPath/tiktok.png';
  static const String revlumPng = '$_baseTempPath/revlum.png';

  ///navbaricons:
  static const List<String> navbarIcons = [
    '$_baseIconsPath/home.svg',
    '$_baseIconsPath/leaderboard.svg',
    '$_baseIconsPath/live_offers.svg',
    redeemSvg,
    profileSvg,
  ];

  static const String ringSvg = '$_baseIconsPath/ring.svg';
  static const String profileSvg = '$_baseIconsPath/profile.svg';
  static const String redeemSvg = '$_baseIconsPath/redeem.svg';
  static const String balanceSvg = '$_baseIconsPath/balance.svg';
  static const String totalEarnSvg = '$_baseIconsPath/total_earn.svg';
  static const String termsSvg = '$_baseIconsPath/terms.svg';
  static const String contactUsSvg = '$_baseIconsPath/contact_us.svg';
  static const String signOutSvg = '$_baseIconsPath/sign_out.svg';
  static const String deleteAccountSvg = '$_baseIconsPath/delete_account.svg';
  static const String arrowSvg = '$_baseIconsPath/arrow.svg';
  static const String historySvg = '$_baseIconsPath/history.svg';
  static const String tasksSvg = '$_baseIconsPath/tasks.svg';
}
