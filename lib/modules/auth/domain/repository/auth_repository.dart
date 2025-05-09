import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/errors/failure.dart';
import 'package:magic_rewards/modules/auth/domain/entities/check_email_entity.dart';
import 'package:magic_rewards/modules/auth/domain/entities/user_entity.dart';
import 'package:magic_rewards/modules/auth/domain/parameters/check_email_parameters.dart';
import 'package:magic_rewards/modules/auth/domain/parameters/login_parameters.dart';
import 'package:magic_rewards/modules/auth/domain/parameters/register_parameters.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(LoginParameters parameters);

  Future<Either<Failure, UserEntity>> register(RegisterParameters parameters);

  Future<Either<Failure, CheckEmailEntity>> checkEmail(
      CheckEmailParameters parameters);
}
