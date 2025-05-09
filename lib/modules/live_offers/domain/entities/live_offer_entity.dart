import 'package:magic_rewards/core/entities/base_entity.dart';

class LiveOffersEntity extends BaseEntity {
  final List<LiveOfferEntity> liveOffers;

  LiveOffersEntity({required this.liveOffers});

  @override
  List<Object?> get props => [liveOffers];
}

class LiveOfferEntity extends BaseEntity {
  final String id;
  final String username;
  final String points;
  final DateTime? date;
  final String type;

  LiveOfferEntity(
      {required this.id,
      required this.username,
      required this.points,
      required this.date,
      required this.type});

  @override
  List<Object?> get props => [id, username, points, date, type];
}
