import 'package:magic_rewards/core/entities/base_entity.dart';

class PayoutsEntity extends BaseEntity {
  final List<PayoutEntity> payouts;
  final double balance;

  final double minPayout;
  final double redeemPercent;

  PayoutsEntity(
      {required this.payouts,
      required this.balance,
      required this.minPayout,
      required this.redeemPercent});

  @override
  List<Object?> get props => [payouts, balance];
}

class PayoutEntity extends BaseEntity {
  final String id;
  final String title;
  final String subtitle;
  final String message;
  final String thumbnail;
  final double cost;

  PayoutEntity(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.message,
      required this.thumbnail,
      required this.cost});

  @override
  List<Object?> get props => [id, title, subtitle, message, thumbnail, cost];
}
