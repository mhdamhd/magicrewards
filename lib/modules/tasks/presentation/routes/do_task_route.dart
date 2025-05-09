import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';
import 'package:magic_rewards/modules/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/modules/tasks/presentation/screens/do_task_screen.dart';

class DoTaskRoute {
  static const String name = '/do_task';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) {
      var map = state.extra as Map;
      var comment = map['comment'] as CommentEntity;
      var taskUrl = map['taskUrl'] as String;
      return DoTaskScreen(comment: comment, taskUrl: taskUrl);
    },
  );
}
