import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';

class HomeParameters extends Equatable {
  final int clientId = AppConstants.clientId;
  final String accountId = CacheStorageServices().accountId;
  final String accessToken = CacheStorageServices().token;
  final String username = CacheStorageServices().username;

  HomeParameters();

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'clientId': clientId
      };

  @override
  List<Object> get props => [clientId, accountId, accessToken, username];
}
