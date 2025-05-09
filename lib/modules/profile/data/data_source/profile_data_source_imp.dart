import 'package:magic_rewards/core/constants/apis_urls.dart';
import 'package:magic_rewards/core/services/api_services.dart';
import 'package:magic_rewards/core/utils/app_response.dart';
import 'package:magic_rewards/modules/profile/data/data_source/profile_data_source.dart';
import 'package:magic_rewards/modules/profile/data/models/profile_model.dart';
import 'package:magic_rewards/modules/profile/domain/parameters/delete_account_parameters.dart';
import 'package:magic_rewards/modules/profile/domain/parameters/profile_parameters.dart';

class ProfileRemoteDataSourceImp extends ProfileDataSource {
  @override
  Future<ProfileModel> getProfile(ProfileParameters parameters) async {
    AppResponse appResponse =
        await ApiServices().post(ApisUrls.profile, data: parameters.toJson());
    return ProfileModel.fromJson(appResponse.data);
  }

  @override
  Future<void> deleteAccount(DeleteAccountParameters parameters) async {
    await ApiServices().post(ApisUrls.deleteAccount, data: parameters.toJson());
  }
}
