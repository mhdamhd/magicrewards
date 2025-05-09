import 'package:magic_rewards/core/constants/apis_urls.dart';
import 'package:magic_rewards/core/services/api_services.dart';
import 'package:magic_rewards/core/utils/app_response.dart';
import 'package:magic_rewards/modules/top_users/data/data_source/top_users_data_source.dart';
import 'package:magic_rewards/modules/top_users/data/models/top_users_model.dart';
import 'package:magic_rewards/modules/top_users/domain/parameters/top_users_parameters.dart';

class TopUsersRemoteDataSourceImp extends TopUsersDataSource {
  @override
  Future<TopUsersModel> getTopUsers(TopUsersParameters parameters) async {
    AppResponse appResponse =
        await ApiServices().post(ApisUrls.topUsers, data: parameters.toJson());
    return TopUsersModel.fromJson(appResponse.data);
  }
}
