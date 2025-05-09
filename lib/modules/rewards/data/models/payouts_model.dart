import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/payouts_entity.dart';

class PayoutsModel extends BaseModel<PayoutsEntity> {
  PayoutsModel({
    this.error,
    this.errorCode,
    this.payouts,
  });

  PayoutsModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    if (json['payouts'] != null) {
      payouts = [];
      json['payouts'].forEach((v) {
        payouts?.add(Payout.fromJson(v));
      });
    }
    balance = json['balance'];
  }

  bool? error;
  int? errorCode;
  List<Payout>? payouts;
  String? balance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    if (payouts != null) {
      map['payouts'] = payouts?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  PayoutsEntity toEntity() {
    double minPayout = 1000000;
    double redeemPercent = 0;
    if (payouts != null) {
      for (var element in payouts!) {
        double cost =
            double.tryParse(element.payoutPointsRequired ?? '') ?? 0.0;
        if (cost < minPayout) {
          minPayout = cost;
        }
      }
    }
    double doubleBalance = num.tryParse(balance ?? '')?.toDouble() ?? 0.0;
    if (doubleBalance >= minPayout) {
      redeemPercent = 1;
    } else {
      redeemPercent = doubleBalance / minPayout;
    }
    if (redeemPercent < 0 || redeemPercent > 1) {
      redeemPercent = 0;
    }
    return PayoutsEntity(
        payouts: payouts?.map((e) => e.toEntity()).toList() ?? [],
        balance: doubleBalance,
        minPayout: minPayout,
        redeemPercent: redeemPercent);
  }
}

class Payout extends BaseModel<PayoutEntity> {
  Payout({
    this.payoutId,
    this.payoutTitle,
    this.payoutSubtitle,
    this.payoutMessage,
    this.payoutAmount,
    this.payoutPointsRequired,
    this.payoutThumbnail,
    this.payoutStatus,
  });

  Payout.fromJson(dynamic json) {
    payoutId = json['payout_id'];
    payoutTitle = json['payout_title'];
    payoutSubtitle = json['payout_subtitle'];
    payoutMessage = json['payout_message'];
    payoutAmount = json['payout_amount'];
    payoutPointsRequired = json['payout_pointsRequired'];
    payoutThumbnail = json['payout_thumbnail'];
    payoutStatus = json['payout_status'];
  }

  String? payoutId;
  String? payoutTitle;
  String? payoutSubtitle;
  String? payoutMessage;
  String? payoutAmount;
  String? payoutPointsRequired;
  String? payoutThumbnail;
  String? payoutStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['payout_id'] = payoutId;
    map['payout_title'] = payoutTitle;
    map['payout_subtitle'] = payoutSubtitle;
    map['payout_message'] = payoutMessage;
    map['payout_amount'] = payoutAmount;
    map['payout_pointsRequired'] = payoutPointsRequired;
    map['payout_thumbnail'] = payoutThumbnail;
    map['payout_status'] = payoutStatus;
    return map;
  }

  @override
  PayoutEntity toEntity() {
    return PayoutEntity(
        id: payoutId!,
        title: payoutTitle ?? '',
        subtitle: payoutSubtitle ?? '',
        message: payoutMessage ?? '',
        thumbnail: payoutThumbnail ?? '',
        cost: double.tryParse(payoutPointsRequired ?? '') ?? 0);
  }
}
