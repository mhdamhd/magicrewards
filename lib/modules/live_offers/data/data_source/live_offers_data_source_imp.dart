import 'package:magic_rewards/core/constants/apis_urls.dart';
import 'package:magic_rewards/core/services/api_services.dart';
import 'package:magic_rewards/core/utils/app_response.dart';
import 'package:magic_rewards/modules/live_offers/data/data_source/live_offers_data_source.dart';
import 'package:magic_rewards/modules/live_offers/data/models/live_offers_model.dart';
import 'package:magic_rewards/modules/live_offers/domain/parameters/live_offers_parameters.dart';

class LiveOffersRemoteDataSourceImp extends LiveOffersDataSource {
  @override
  Future<LiveOffersModel> getLiveOffers(
      GetLiveOffersParameters parameters) async {
    AppResponse appResponse = await ApiServices()
        .post(ApisUrls.liveOffers, data: parameters.toJson());
    return LiveOffersModel.fromJson(appResponse.data);
  }
}
