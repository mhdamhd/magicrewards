import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';

class ProfileParameters extends Equatable {
  final String accessToken = CacheStorageServices().token;
  final String accountId = CacheStorageServices().accountId;
  final String username = CacheStorageServices().username;
  final int clientId = AppConstants.clientId;

  ProfileParameters();

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'clientId': clientId
      };

  @override
  List<Object> get props => [username];
}
