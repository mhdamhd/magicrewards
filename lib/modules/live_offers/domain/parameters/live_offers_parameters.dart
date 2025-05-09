import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';

class GetLiveOffersParameters extends Equatable {
  final String accessToken = CacheStorageServices().token;
  final String accountId = CacheStorageServices().accountId;
  final String username = CacheStorageServices().username;
  final int clientId = AppConstants.clientId;
  final int page;
  final int length;

  GetLiveOffersParameters({required this.page, required this.length});

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'page': page,
        'length': length,
        'clientId': clientId
      };

  @override
  List<Object> get props => [username, page, length];
}
