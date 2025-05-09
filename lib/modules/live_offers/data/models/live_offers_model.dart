import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/core/utils/app_date_formatter.dart';
import 'package:magic_rewards/modules/live_offers/domain/entities/live_offer_entity.dart';

class LiveOffersModel extends BaseModel<LiveOffersEntity> {
  LiveOffersModel({
    this.error,
    this.errorCode,
    this.liveOffers,
  });

  LiveOffersModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    if (json['live_offers'] != null) {
      liveOffers = [];
      json['live_offers'].forEach((v) {
        liveOffers?.add(LiveOffers.fromJson(v));
      });
    }
  }

  bool? error;
  int? errorCode;
  List<LiveOffers>? liveOffers;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    if (liveOffers != null) {
      map['live_offers'] = liveOffers?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  LiveOffersEntity toEntity() {
    return LiveOffersEntity(
        liveOffers: liveOffers?.map((e) => e.toEntity()).toList() ?? []);
  }
}

class LiveOffers extends BaseModel<LiveOfferEntity> {
  LiveOffers({
    this.id,
    this.username,
    this.points,
    this.type,
    this.date,
  });

  LiveOffers.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
    points = json['points'];
    type = json['type'];
    date = json['date'];
  }

  String? id;
  String? username;
  String? points;
  String? type;
  String? date;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    map['points'] = points;
    map['type'] = type;
    map['date'] = date;
    return map;
  }

  @override
  LiveOfferEntity toEntity() {
    return LiveOfferEntity(
        id: id!,
        username: username ?? "",
        points: points ?? "0",
        date: DataFormatter().fromLinuxTime(date),
        type: type ?? '');
  }
}
