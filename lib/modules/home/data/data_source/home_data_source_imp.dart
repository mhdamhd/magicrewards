import 'package:magic_rewards/core/constants/apis_urls.dart';
import 'package:magic_rewards/core/services/api_services.dart';
import 'package:magic_rewards/core/utils/app_response.dart';
import 'package:magic_rewards/modules/home/data/data_source/home_data_source.dart';
import 'package:magic_rewards/modules/home/data/models/home_model.dart';
import 'package:magic_rewards/modules/home/domin/parameters/home_parameters.dart';

class HomeRemoteDataSourceImp extends HomeDataSource {
  @override
  Future<HomeModel> getHome(HomeParameters parameters) async {
    AppResponse appResponse =
        await ApiServices().post(ApisUrls.home, data: parameters.toJson());
    return HomeModel.fromJson(appResponse.data);
  }
}
