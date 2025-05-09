import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/modules/home/domin/entities/home_entity.dart';

class HomeModel extends BaseModel<HomeEntity> {
  HomeModel({
    this.error,
    this.errorCode,
    this.offerWalls,
  });

  HomeModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    balance = json['balance'];
    if (json['offerwalls'] != null) {
      offerWalls = [];
      json['offerwalls'].forEach((v) {
        offerWalls?.add(OfferWallModel.fromJson(v));
      });
    }
  }

  bool? error;
  int? errorCode;
  String? balance;
  List<OfferWallModel>? offerWalls;

  //
  // List<OfferWallModel> get activeOfferWalls {
  //   return offerWalls?.where((element) => element.status == AppConstants.activeOfferWall && element.type != AppConstants.offerWallRedeemType && element.type != AppConstants.offerWallTransactionsType).toList() ?? [];
  // }

  @override
  HomeEntity toEntity() {
    return HomeEntity(
        offerWalls: (offerWalls?.map((e) => e.toEntity()).toList() ?? []),
        balance: balance ?? '0');
  }
}

class OfferWallModel extends BaseModel<OfferWallEntity> {
  OfferWallModel({
    this.id,
    this.title,
    this.subtitle,
    this.url,
    this.type,
    this.points,
    this.featured,
    this.thumbnail,
    this.position,
    this.status,
  });

  OfferWallModel.fromJson(dynamic json) {
    id = json['offer_id'];
    title = json['offer_title'];
    subtitle = json['offer_subtitle'];
    url = json['offer_url'];
    type = json['offer_type'];
    points = json['offer_points'];
    featured = json['offer_featured'];
    thumbnail = json['offer_thumbnail'];
    position = json['offer_position'];
    status = json['offer_status'];
  }

  String? id;
  String? title;
  String? subtitle;
  String? url;
  String? type;
  String? points;
  bool? featured;
  String? thumbnail;
  String? position;
  String? status;

  @override
  OfferWallEntity toEntity() {
    return OfferWallEntity(
        id: id!,
        title: title ?? '',
        subtitle: subtitle,
        url: url ?? '',
        type: type ?? '',
        thumbnail: thumbnail,
        position: position,
        status: status);
  }
}
