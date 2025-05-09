import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/errors/failure.dart';
import 'package:magic_rewards/modules/live_offers/domain/entities/live_offer_entity.dart';
import 'package:magic_rewards/modules/live_offers/domain/parameters/live_offers_parameters.dart';

abstract class LiveOffersRepository {
  Future<Either<Failure, LiveOffersEntity>> getLiveOffers(
      GetLiveOffersParameters parameters);
}
