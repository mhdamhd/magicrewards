import 'package:magic_rewards/core/entities/base_entity.dart';

class HomeEntity extends BaseEntity {
  String balance;
  final List<OfferWallEntity> offerWalls;

  HomeEntity({required this.offerWalls, required this.balance});

  @override
  // TODO: implement props
  List<Object?> get props => [offerWalls, balance];
}

class OfferWallEntity extends BaseEntity {
  String id;
  String title;
  String? subtitle;
  String url;
  String type;
  String? thumbnail;
  String? position;
  String? status;

  OfferWallEntity(
      {required this.id,
      required this.title,
      required this.subtitle,
      required this.url,
      required this.type,
      required this.thumbnail,
      required this.position,
      required this.status});

  @override
  List<Object?> get props =>
      [id, title, subtitle, url, type, thumbnail, position, status];
}
