import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';

class TopUsersParameters extends Equatable {
  final String accessToken = CacheStorageServices().token;
  final String accountId = CacheStorageServices().accountId;
  final String username = CacheStorageServices().username;
  final int clientId = AppConstants.clientId;
  final bool halfMonth;

  TopUsersParameters({this.halfMonth = false});

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'clientId': clientId,
        'half_month': halfMonth ? 1 : 0
      };

  @override
  List<Object> get props => [username, halfMonth];
}
