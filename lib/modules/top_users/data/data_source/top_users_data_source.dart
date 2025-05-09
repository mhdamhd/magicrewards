import 'package:magic_rewards/modules/top_users/data/models/top_users_model.dart';
import 'package:magic_rewards/modules/top_users/domain/parameters/top_users_parameters.dart';

abstract class TopUsersDataSource {
  Future<TopUsersModel> getTopUsers(TopUsersParameters parameters);
}
