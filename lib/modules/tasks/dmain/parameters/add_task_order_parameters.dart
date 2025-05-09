import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';
import 'package:magic_rewards/core/services/cache_storage_services.dart';

class AddTaskOrderParameters extends Equatable {
  final String accessToken = CacheStorageServices().token;
  final String accountId = CacheStorageServices().accountId;
  final String username = CacheStorageServices().username;
  final int clientId = AppConstants.clientId;
  final String taskId;
  final String commentId;
  final String name;
  final String url;
  final String email;
  final String text;
  final File image;
  final DateTime timeStamp;

  AddTaskOrderParameters(
      {required this.taskId,
      required this.commentId,
      required this.name,
      required this.url,
      required this.email,
      required this.text,
      required this.image,
      required this.timeStamp});

  Future<Map<String, dynamic>> toJson() async => {
        'clientId': clientId,
        'accessToken': accessToken,
        'accountId': accountId,
        'user': username,
        'taskId': taskId,
        'commentId': commentId,
        'name': '$name, $url',
        'url': url,
        'email': email,
        'text': text,
        'timeStamp': timeStamp.toIso8601String(),
        'image': await MultipartFile.fromFile(image.path, filename: 'image'),
      };

  @override
  List<Object> get props =>
      [username, taskId, commentId, name, url, email, text, image, timeStamp];
}
