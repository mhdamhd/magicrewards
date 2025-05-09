import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';

class RedeemParameters extends Equatable {
  final int clientId = AppConstants.clientId;
  final String accountId = CacheStorageServices().accountId;
  final String accessToken = CacheStorageServices().token;
  final String username = CacheStorageServices().username;
  final String name;
  final String value;
  final String devName = Platform.operatingSystem ?? '';
  final String devMan = AppConstants.devMan;

  RedeemParameters({required this.name, required this.value});

  Map<String, dynamic> toJson() => {
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'clientId': clientId,
        'dev_name': devName,
        'dev_man': devMan,
        'name': name,
        'value': value
      };

  @override
  List<Object> get props => [name, value];
}
