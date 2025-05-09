import 'package:magic_rewards/modules/auth/data/models/check_email_model.dart';
import 'package:magic_rewards/modules/auth/domain/parameters/check_email_parameters.dart';

import '../../domain/parameters/login_parameters.dart';
import '../../domain/parameters/register_parameters.dart';
import '../models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> login(LoginParameters parameters);

  Future<UserModel> register(RegisterParameters parameters);

  Future<CheckEmailModel> checkEmail(CheckEmailParameters parameters);
}
