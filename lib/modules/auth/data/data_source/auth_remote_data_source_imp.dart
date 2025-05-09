import 'package:magic_rewards/modules/auth/data/models/check_email_model.dart';
import 'package:magic_rewards/modules/auth/domain/parameters/check_email_parameters.dart';

import '../../../../core/constants/apis_urls.dart';
import '../../../../core/services/api_services.dart';
import '../../../../core/utils/app_response.dart';
import '../../domain/parameters/login_parameters.dart';
import '../../domain/parameters/register_parameters.dart';
import '../models/user_model.dart';
import 'auth_data_source.dart';

class AuthRemoteDataSourceImp extends AuthDataSource {
  @override
  Future<UserModel> login(LoginParameters parameters) async {
    AppResponse response = await ApiServices().post(
      ApisUrls.login,
      data: parameters.toJson(),
    );
    return UserModel.fromJson(response.data);
  }

  @override
  Future<UserModel> register(RegisterParameters parameters) async {
    AppResponse response = await ApiServices().post(
      ApisUrls.register,
      data: parameters.toJson(),
    );
    return UserModel.fromJson(response.data);
  }

  @override
  Future<CheckEmailModel> checkEmail(CheckEmailParameters parameters) async {
    AppResponse response = await ApiServices().post(
      ApisUrls.checkEmail,
      data: parameters.toJson(),
    );
    return CheckEmailModel.fromJson(response.data);
  }
}
