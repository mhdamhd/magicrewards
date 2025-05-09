import 'package:go_router/go_router.dart';
import 'package:magic_rewards/modules/home/presentation/screens/splash_screen.dart';

class SplashRoute {
  static const String name = '/splash';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      return null;
    
      // if (!CacheStorageServices().hasToken) return LoginRoute.name;
      // return null;
    },
    builder: (context, state) => const SplashScreen(),
  );
}
