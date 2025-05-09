import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/errors/errors_handler.dart';
import 'package:magic_rewards/core/errors/failure.dart';
import 'package:magic_rewards/modules/top_users/data/data_source/top_users_data_source.dart';
import 'package:magic_rewards/modules/top_users/domain/entities/top_users_entity.dart';
import 'package:magic_rewards/modules/top_users/domain/parameters/top_users_parameters.dart';
import 'package:magic_rewards/modules/top_users/domain/repository/top_users_repository.dart';

class TopUsersRepositoryImp extends TopUsersRepository {
  final TopUsersDataSource liveOffersDataSource;

  TopUsersRepositoryImp(this.liveOffersDataSource);

  @override
  Future<Either<Failure, TopUsersEntity>> getTopUsers(
      TopUsersParameters parameters) {
    return ErrorsHandler.handleEither(
        () => liveOffersDataSource.getTopUsers(parameters));
  }
}
