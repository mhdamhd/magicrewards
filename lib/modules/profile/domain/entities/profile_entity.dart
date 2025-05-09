import 'package:magic_rewards/core/entities/base_entity.dart';

class ProfileEntity extends BaseEntity {
  String balance;
  String redeemedPoints;
  String totalPoints;

  ProfileEntity(
      {required this.balance,
      required this.redeemedPoints,
      required this.totalPoints});

  @override
  List<Object?> get props => [balance, redeemedPoints, totalPoints];
}
