import 'package:get_it/get_it.dart';
import 'package:magic_rewards/modules/auth/data/data_source/auth_data_source.dart';
import 'package:magic_rewards/modules/auth/data/data_source/auth_remote_data_source_imp.dart';
import 'package:magic_rewards/modules/auth/data/repository/auth_repository_imp.dart';
import 'package:magic_rewards/modules/auth/domain/repository/auth_repository.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/check_email/check_email_bloc.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/login/login_bloc.dart';
import 'package:magic_rewards/modules/auth/presentation/blocs/register/register_bloc.dart';
import 'package:magic_rewards/modules/home/data/data_source/home_data_source.dart';
import 'package:magic_rewards/modules/home/data/data_source/home_data_source_imp.dart';
import 'package:magic_rewards/modules/home/data/repository/home_repository_imp.dart';
import 'package:magic_rewards/modules/home/domin/repository/home_repository.dart';
import 'package:magic_rewards/modules/home/presentation/blocs/app_config_bloc/app_config_bloc.dart';
import 'package:magic_rewards/modules/home/presentation/blocs/home_bloc/home_bloc.dart';
import 'package:magic_rewards/modules/live_offers/data/data_source/live_offers_data_source.dart';
import 'package:magic_rewards/modules/live_offers/data/data_source/live_offers_data_source_imp.dart';
import 'package:magic_rewards/modules/live_offers/data/repository/live_offers_repository_imp.dart';
import 'package:magic_rewards/modules/live_offers/domain/repository/live_offers_repository.dart';
import 'package:magic_rewards/modules/live_offers/presentation/blocs/live_offers_bloc/live_offers_bloc.dart';
import 'package:magic_rewards/modules/profile/data/data_source/profile_data_source.dart';
import 'package:magic_rewards/modules/profile/data/data_source/profile_data_source_imp.dart';
import 'package:magic_rewards/modules/profile/data/repository/profile_repository_imp.dart';
import 'package:magic_rewards/modules/profile/domain/repository/profile_repository.dart';
import 'package:magic_rewards/modules/profile/presentation/blocs/delete_account_bloc/delete_account_bloc.dart';
import 'package:magic_rewards/modules/profile/presentation/blocs/profile_bloc/profile_bloc.dart';
import 'package:magic_rewards/modules/rewards/data/data_source/rewards_data_source.dart';
import 'package:magic_rewards/modules/rewards/data/data_source/rewards_data_source_imp.dart';
import 'package:magic_rewards/modules/rewards/data/repository/rewards_repository_imp.dart';
import 'package:magic_rewards/modules/rewards/domain/repository/rewards_repository.dart';
import 'package:magic_rewards/modules/rewards/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:magic_rewards/modules/rewards/presentation/blocs/payouts_bloc/payouts_bloc.dart';
import 'package:magic_rewards/modules/rewards/presentation/blocs/redeem_bloc/redeem_bloc.dart';
import 'package:magic_rewards/modules/rewards/presentation/blocs/transactions_bloc/transactions_bloc.dart';
import 'package:magic_rewards/modules/tasks/data/data_source/tasks_data_source.dart';
import 'package:magic_rewards/modules/tasks/data/data_source/tasks_data_source_imp.dart';
import 'package:magic_rewards/modules/tasks/data/repository/tasks_repository_imp.dart';
import 'package:magic_rewards/modules/tasks/dmain/repository/tasks_repository.dart';
import 'package:magic_rewards/modules/tasks/presentation/blocs/comments_bloc/comments_bloc.dart';
import 'package:magic_rewards/modules/tasks/presentation/blocs/do_task_bloc/do_task_bloc.dart';
import 'package:magic_rewards/modules/tasks/presentation/blocs/tasks_bloc/tasks_bloc.dart';
import 'package:magic_rewards/modules/tasks/presentation/blocs/tasks_orders_bloc/tasks_orders_bloc.dart';
import 'package:magic_rewards/modules/top_users/data/data_source/top_users_data_source.dart';
import 'package:magic_rewards/modules/top_users/data/data_source/top_users_data_source_imp.dart';
import 'package:magic_rewards/modules/top_users/data/repository/top_users_repository_imp.dart';
import 'package:magic_rewards/modules/top_users/domain/repository/top_users_repository.dart';
import 'package:magic_rewards/modules/top_users/presentation/blocs/top_users_bloc/top_users_bloc.dart';

final sl = GetIt.instance;

/// This class [ServicesLocator] is define to inject values and variables (Objects) into memory when the application is opened,
/// those values will remain stored and preserved for direct access in randomaccess memory according to the specified conditions
/// and situations.
///
/// The concept of injection depends on dependency injection, using the get_it library to provide this type of service,
///
/// it is necessary You have to call [ServicesLocator.init] in main.dart, main finction, before [runApp]
///
/// 1- to inject Your Bloc object use [registerFactory] function
///    Ex:   sl.registerFactory(() => YourBloc(sl()));
/// 2- to inject Your Repository, Data Source object use [registerLazySingleton] function
///    Ex:   sl.registerLazySingleton(() => YourDataSource());
///    Ex:   sl.registerLazySingleton(() => YourDataSource());
///
/// you can get any Object you inject by call [sl]
///    Ex: sl<YourBloc>();

// TODO: add (BLOCs , REPOSITORIES , DATA SOURCES)
class ServicesLocator {
  static ServicesLocator? _instance;

  ServicesLocator._();

  factory ServicesLocator() => _instance ??= ServicesLocator._();

  void init() {
    //// BLOCS
    sl.registerFactory(() => LoginBloc(sl()));
    sl.registerFactory(() => RegisterBloc(sl()));
    sl.registerFactory(() => HomeBloc(sl()));
    sl.registerFactory(() => LiveOffersBloc(sl()));
    sl.registerFactory(() => PayoutsBloc(sl()));
    sl.registerFactory(() => RedeemBloc(sl()));
    sl.registerFactory(() => OrdersBloc(sl()));
    sl.registerFactory(() => TransactionsBloc(sl()));
    sl.registerFactory(() => TopUsersBloc(sl()));
    sl.registerFactory(() => ProfileBloc(sl()));
    sl.registerFactory(() => DeleteAccountBloc(sl()));
    sl.registerFactory(() => CheckEmailBloc(sl()));
    sl.registerFactory(() => TasksBloc(sl()));
    sl.registerFactory(() => CommentsBloc(sl()));
    sl.registerFactory(() => DoTaskBloc(sl()));
    sl.registerFactory(() => TasksOrdersBloc(sl()));

    sl.registerLazySingleton(() => AppConfigBloc());

    //// REPOSITORIES
    sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImp(sl()));
    sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImp(sl()));
    sl.registerLazySingleton<LiveOffersRepository>(
        () => LiveOffersRepositoryImp(sl()));
    sl.registerLazySingleton<RewardsRepository>(
        () => RewardsRepositoryImp(sl()));
    sl.registerLazySingleton<TopUsersRepository>(
        () => TopUsersRepositoryImp(sl()));
    sl.registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImp(sl()));
    sl.registerLazySingleton<TasksRepository>(() => TasksRepositoryImp(sl()));

    //// DATA SOURCES
    sl.registerLazySingleton<AuthDataSource>(() => AuthRemoteDataSourceImp());
    sl.registerLazySingleton<HomeDataSource>(() => HomeRemoteDataSourceImp());
    sl.registerLazySingleton<LiveOffersDataSource>(
        () => LiveOffersRemoteDataSourceImp());
    sl.registerLazySingleton<RewardsDataSource>(
        () => RewardsRemoteDataSourceImp());
    sl.registerLazySingleton<TopUsersDataSource>(
        () => TopUsersRemoteDataSourceImp());
    sl.registerLazySingleton<ProfileDataSource>(
        () => ProfileRemoteDataSourceImp());
    sl.registerLazySingleton<TasksDataSource>(() => TasksRemoteDataSourceImp());
  }
}
