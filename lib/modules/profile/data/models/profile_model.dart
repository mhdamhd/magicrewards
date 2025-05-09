import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/modules/profile/domain/entities/profile_entity.dart';

class ProfileModel extends BaseModel<ProfileEntity> {
  ProfileModel({
    this.error,
    this.errorCode,
    this.data,
  });

  ProfileModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  bool? error;
  int? errorCode;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

  @override
  ProfileEntity toEntity() {
    return ProfileEntity(
      balance: data?.balance ?? '',
      redeemedPoints: data?.redeemedPoints ?? '',
      totalPoints: data?.totalPoints ?? '',
    );
  }
}

class Data {
  Data({
    this.balance,
    this.redeemedPoints,
    this.totalPoints,
  });

  Data.fromJson(dynamic json) {
    balance = json['balance'];
    redeemedPoints = json['redeemed_points'];
    totalPoints = json['total_points'];
  }

  String? balance;
  String? redeemedPoints;
  String? totalPoints;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['balance'] = balance;
    map['redeemed_points'] = redeemedPoints;
    map['total_points'] = totalPoints;
    return map;
  }
}
