/// class [ApisUrls] contains all URLs to external services, services,
/// or APIs, according to the following figure
///
/// add new APIs URL in this way:
/// EX: static const String {verb}featureName = '$_baseApiUrl/{route}';

class ApisUrls {
  /// [_baseUrl] base server url
  static const String _baseUrl = 'https://magic-rewards.com/admin'; //live
  // static const String _baseUrl = 'https://dev.magic-rewards.com/admin';//dev
  // static const String _baseUrl = 'http://10.0.2.2:8000/admin';//local
  // static const String _baseUrl = 'http://172.20.10.4/admin';//ubuntu

  /// [_baseApiUrl] base API url
  // static const String _baseApiUrl = '$_baseUrl/api/v3';
  static const String _baseApiUrl = '$_baseUrl/api/v4';

  /// [_baseImagesUrl] base Images Url
  static const String _baseImagesUrl = '$_baseUrl/images';

  static String baseImagesUrl(String url) => '$_baseImagesUrl/$url';

  static String privacyPolicy =
      '${_baseUrl.replaceAll('/admin', '')}/privacypolicy.html';

  /// Auth Feature APIs
  static const String login = '$_baseApiUrl/account.signIn.php';
  static const String register = '$_baseApiUrl/account.signUp.php';
  static const String checkEmail = '$_baseApiUrl/account.verify.email.php';

  /// Category Feature APIs
  static String getCategories(String id) =>
      '$_baseApiUrl/categories/section/$id?lang=en';

  ///Offer Walls
  static const String home = '$_baseApiUrl/account.home.php';

  ///Blance
  static const String blance = "$_baseApiUrl/account.Balance.php";

  ///LiveOffers
  static const String liveOffers = '$_baseApiUrl/account.live.offers.php';

  ///rewards
  static const String payouts = '$_baseApiUrl/account.Payouts.php';
  static const String redeem = '$_baseApiUrl/account.Redeem.php';
  static const String orders = '$_baseApiUrl/account.orders.php';
  static const String transactions = '$_baseApiUrl/account.transactions.php';
  static const String profile = '$_baseApiUrl/account.profile.php';
  static const String deleteAccount = '$_baseApiUrl/account.delete.php';

  ///top users
  static const String topUsers = '$_baseApiUrl/account.top.users.php';

  ///tasks
  static const String tasks = '$_baseApiUrl/account.tasks.php';
  static const String reserveComment =
      '$_baseApiUrl/account.reserve.comment.php';
  static const String addTaskOrder = '$_baseApiUrl/account.add.task.order.php';
  static const String tasksOrders = '$_baseApiUrl/account.tasks.orders.php';
}
