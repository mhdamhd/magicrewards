import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/errors/errors_handler.dart';
import 'package:magic_rewards/core/errors/failure.dart';
import 'package:magic_rewards/modules/profile/data/data_source/profile_data_source.dart';
import 'package:magic_rewards/modules/profile/domain/entities/profile_entity.dart';
import 'package:magic_rewards/modules/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/modules/profile/domain/parameters/profile_parameters.dart';
import 'package:magic_rewards/modules/profile/domain/repository/profile_repository.dart';

class ProfileRepositoryImp extends ProfileRepository {
  final ProfileDataSource profileDataSource;

  ProfileRepositoryImp(this.profileDataSource);

  @override
  Future<Either<Failure, ProfileEntity>> getProfile(
      ProfileParameters parameters) {
    return ErrorsHandler.handleEither(
        () => profileDataSource.getProfile(parameters));
  }

  @override
  Future<Either<Failure, void>> deleteAccount(
      DeleteAccountParameters parameters) async {
    try {
      final result = await profileDataSource.deleteAccount(parameters);
      return Right(result);
    } catch (e) {
      return Left(ErrorsHandler.failureThrower(e));
    }
  }
}
