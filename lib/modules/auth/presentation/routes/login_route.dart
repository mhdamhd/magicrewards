import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/login/login_bloc.dart';
import 'package:magic_rewards/modules/auth/presentation/screens/login_screen.dart';

class LoginRoute {
  static const String name = '/login';

  static GoRoute route = GoRoute(
    path: name,
    builder: (context, state) => BlocProvider(
        create: (context) => sl<LoginBloc>(), child: const LogInScreen()),
  );
}
