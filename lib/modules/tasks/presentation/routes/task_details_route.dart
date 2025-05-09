import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';
import 'package:magic_rewards/modules/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_entity.dart';
import 'package:magic_rewards/modules/tasks/presentation/screens/task_details_screen.dart';

class TaskDetailsRoute {
  static const String name = '/task_details';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) =>
        TaskDetailsScreen(task: state.extra as TaskEntity),
  );
}
