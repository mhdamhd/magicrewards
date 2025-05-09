import 'package:magic_rewards/core/entities/base_entity.dart';

class TopUsersEntity extends BaseEntity {
  TopUsersEntity({
    required this.topThree,
    required this.rest,
    this.myRank,
    required this.maxPoints,
  });

  List<UserRankEntity> topThree;
  List<UserRankEntity> rest;
  UserRankEntity? myRank;
  double maxPoints;

  @override
  List<Object?> get props => [rest, topThree, myRank, maxPoints];
}

class UserRankEntity extends BaseEntity {
  UserRankEntity({
    required this.wallet,
    required this.points,
    required this.amount,
    required this.rank,
  });

  String wallet;
  double points;
  String amount;
  int rank;

  @override
  List<Object> get props => [wallet, points, amount, rank];
}
