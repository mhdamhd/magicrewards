import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/check_email/check_email_bloc.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/register/register_bloc.dart';

import '../screens/register_screen.dart';

class RegisterRoute {
  static const String name = '/register';

  static GoRoute route = GoRoute(
    path: name,
    builder: (context, state) => MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => sl<RegisterBloc>(),
      ),
      BlocProvider(
        create: (context) => sl<CheckEmailBloc>(),
      ),
    ], child: const RegisterScreen()),
  );
}
