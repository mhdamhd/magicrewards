import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';
import 'package:magic_rewards/modules/auth/data/models/user_model.dart';
import 'package:magic_rewards/modules/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/modules/auth/domain/parameters/check_email_parameters.dart';

import '../../../../core/errors/errors_handler.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/parameters/login_parameters.dart';
import '../../domain/parameters/register_parameters.dart';
import '../../domain/repository/auth_repository.dart';
import '../data_source/auth_data_source.dart';

class AuthRepositoryImp extends AuthRepository {
  final AuthDataSource authDataSource;

  AuthRepositoryImp(this.authDataSource);

  @override
  Future<Either<Failure, UserEntity>> login(LoginParameters parameters) async {
    try {
      final UserModel res = await authDataSource.login(parameters);
      final user = res.toEntity();
      await CacheStorageServices().setToken(user.accessToken!);
      await CacheStorageServices().setUserName(user.userName);
      await CacheStorageServices().setFullName(user.fullName);
      await CacheStorageServices().setAccountId(user.accountId);
      await CacheStorageServices().setEmail(user.email);
      return Right(user);
    } catch (e) {
      return Left(ErrorsHandler.failureThrower(e));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register(
      RegisterParameters parameters) async {
    try {
      final UserModel res = await authDataSource.register(parameters);
      final user = res.toEntity();
      await CacheStorageServices().setToken(user.accessToken!);
      await CacheStorageServices().setUserName(user.userName);
      await CacheStorageServices().setFullName(user.fullName);
      await CacheStorageServices().setAccountId(user.accountId);
      await CacheStorageServices().setEmail(user.email);
      return Right(user);
    } catch (e) {
      return Left(ErrorsHandler.failureThrower(e));
    }
  }

  @override
  Future<Either<Failure, CheckEmailEntity>> checkEmail(
      CheckEmailParameters parameters) {
    return ErrorsHandler.handleEither(
        () => authDataSource.checkEmail(parameters));
  }
}
