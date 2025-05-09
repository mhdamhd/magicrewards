import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/errors/errors_handler.dart';
import 'package:magic_rewards/core/errors/failure.dart';
import 'package:magic_rewards/modules/live_offers/data/data_source/live_offers_data_source.dart';
import 'package:magic_rewards/modules/live_offers/domain/entities/live_offer_entity.dart';
import 'package:magic_rewards/modules/live_offers/domain/parameters/live_offers_parameters.dart';
import 'package:magic_rewards/modules/live_offers/domain/repository/live_offers_repository.dart';

class LiveOffersRepositoryImp extends LiveOffersRepository {
  final LiveOffersDataSource liveOffersDataSource;

  LiveOffersRepositoryImp(this.liveOffersDataSource);

  @override
  Future<Either<Failure, LiveOffersEntity>> getLiveOffers(
      GetLiveOffersParameters parameters) {
    return ErrorsHandler.handleEither(
        () => liveOffersDataSource.getLiveOffers(parameters));
  }
}
