import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';
import 'package:magic_rewards/modules/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/modules/tasks/presentation/screens/tasks_screen.dart';

class TasksRoute {
  static const String name = '/tasks';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) => const TasksScreen(),
  );
}
