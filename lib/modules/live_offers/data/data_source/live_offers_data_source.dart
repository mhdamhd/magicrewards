import 'package:magic_rewards/modules/live_offers/data/models/live_offers_model.dart';
import 'package:magic_rewards/modules/live_offers/domain/parameters/live_offers_parameters.dart';

abstract class LiveOffersDataSource {
  Future<LiveOffersModel> getLiveOffers(GetLiveOffersParameters parameters);
}
