import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';

class ReserveCommentParameters extends Equatable {
  final String accessToken = CacheStorageServices().token;
  final String accountId = CacheStorageServices().accountId;
  final String username = CacheStorageServices().username;
  final String taskId;
  final int clientId = AppConstants.clientId;

  ReserveCommentParameters({required this.taskId});

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'clientId': clientId,
        'taskId': taskId
      };

  @override
  List<Object> get props => [username, taskId];
}
