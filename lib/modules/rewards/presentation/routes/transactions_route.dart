import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/modules/auth/presentation/routes/login_route.dart';
import 'package:magic_rewards/modules/rewards/presentation/blocs/transactions_bloc/transactions_bloc.dart';
import 'package:magic_rewards/modules/rewards/presentation/screens/transactions_screen.dart';

class TransactionsRoute {
  static const String name = '/transactions';
  static GoRoute route = GoRoute(
    path: name,
    redirect: (context, state) {
      if (!CacheStorageServices().hasToken) return LoginRoute.name;
      return null;
    },
    builder: (context, state) => BlocProvider(
        create: (context) => sl<TransactionsBloc>(),
        child: TransactionsScreen()),
  );
}
