import 'package:go_router/go_router.dart';
import 'package:magic_rewards/modules/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/modules/auth/presentation/routes/register_route.dart';
import 'package:magic_rewards/modules/home/presentation/routes/main_route.dart';
import 'package:magic_rewards/modules/home/presentation/routes/splash_route.dart';
import 'package:magic_rewards/modules/live_offers/presentation/routes/live_offers_route.dart';
import 'package:magic_rewards/modules/profile/presentation/routes/contact_us_route.dart';
import 'package:magic_rewards/modules/profile/presentation/routes/profile_route.dart';
import 'package:magic_rewards/modules/profile/presentation/routes/terms_route.dart';
import 'package:magic_rewards/modules/rewards/presentation/routes/redeem_route.dart';
import 'package:magic_rewards/modules/rewards/presentation/routes/transactions_route.dart';
import 'package:magic_rewards/modules/tasks/presentation/routes/do_task_route.dart';
import 'package:magic_rewards/modules/tasks/presentation/routes/task_details_route.dart';
import 'package:magic_rewards/modules/tasks/presentation/routes/tasks_route.dart';

/// The [AppRoutes] class defines a static router instance of the GoRouter class,
/// which is a routing solution commonly used in Flutter applications
/// It manages the navigation flow between different screens or pages.
/// The routes parameter specifies the available routes in the application.
/// By commenting out the class, you disable the routing functionality,
/// making it impossible to navigate between screens/pages.
///
/// defaine Route class
/// EX: class FeatureRoute {
///  static const String name = '/route';
///  static GoRoute route = GoRoute(
///    path: name,
///    builder: (context, state) => FeaturesScreen(),
///  );
/// }

class AppRoutes {
  static final router = GoRouter(
    initialLocation: SplashRoute.name,

    // TODO: add pages route here
    routes: [
      LoginRoute.route,
      SplashRoute.route,
      MainRoute.route,
      RegisterRoute.route,
      RedeemRoute.route,
      ProfileRoute.route,
      LiveOffersRoute.route,
      TransactionsRoute.route,
      TermsRoute.route,
      TasksRoute.route,
      TaskDetailsRoute.route,
      DoTaskRoute.route,
      ContactUsRoute.route,
    ],
  );
}
