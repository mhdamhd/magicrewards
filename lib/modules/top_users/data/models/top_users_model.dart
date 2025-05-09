import 'package:collection/collection.dart';
import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/modules/top_users/domain/entities/top_users_entity.dart';

class TopUsersModel extends BaseModel<TopUsersEntity> {
  TopUsersModel({
    this.error,
    this.errorCode,
    this.requests,
    this.myRank,
  });

  TopUsersModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    if (json['requests'] != null) {
      requests = [];
      json['requests'].forEach((v) {
        requests?.add(UserRankModel.fromJson(v));
      });
    }
    myRank = json['my_rank'] != null
        ? UserRankModel.fromJson(json['my_rank'])
        : null;
  }

  bool? error;
  int? errorCode;
  List<UserRankModel>? requests;
  UserRankModel? myRank;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    if (requests != null) {
      map['requests'] = requests?.map((v) => v.toJson()).toList();
    }
    if (myRank != null) {
      map['my_rank'] = myRank?.toJson();
    }
    return map;
  }

  @override
  TopUsersEntity toEntity() {
    return TopUsersEntity(
        topThree: requests
                ?.where((e) => e.rank! < 4)
                .map((e) => e.toEntity())
                .toList() ??
            [],
        rest: requests
                ?.where(
                  (e) => e.rank! > 3,
                )
                .map((e) => e.toEntity())
                .toList() ??
            [],
        maxPoints: (num.tryParse(requests
                        ?.firstWhereOrNull((element) => element.rank == 1)
                        ?.points ??
                    '0.0') ??
                0.0)
            .toDouble(),
        myRank: myRank?.toEntity());
  }
}

class UserRankModel extends BaseModel<UserRankEntity> {
  UserRankModel({
    this.requestFrom,
    this.points,
    this.amount,
    this.rank,
  });

  UserRankModel.fromJson(dynamic json) {
    requestFrom = (json['request_from'] as String?) ?? '';
    var length = requestFrom!.length;
    requestFrom = requestFrom!.replaceRange(length - 3, length, '***');
    points = json['points'];
    amount = json['amount'];
    rank = json['rank'];
  }

  String? requestFrom;
  String? points;
  String? amount;
  int? rank;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['request_from'] = requestFrom;
    map['points'] = points;
    map['amount'] = amount;
    map['rank'] = rank;
    return map;
  }

  @override
  UserRankEntity toEntity() {
    return UserRankEntity(
      wallet: requestFrom ?? '',
      points: (num.tryParse(points ?? '') ?? 0).toDouble(),
      amount: amount ?? '',
      rank: rank ?? 0,
    );
  }
}
