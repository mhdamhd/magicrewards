import 'package:magic_rewards/core/extensions/string_extensions/string_to_order_status.dart';
import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/core/utils/app_date_formatter.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/orders_entity.dart';

class OrdersModel extends BaseModel<OrdersEntity> {
  OrdersModel({
    this.error,
    this.errorCode,
    this.user,
    this.transactions,
  });

  OrdersModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    user = json['user'];
    if (json['transactions'] != null) {
      transactions = [];
      json['transactions'].forEach((v) {
        transactions?.add(Order.fromJson(v));
      });
    }
  }

  bool? error;
  int? errorCode;
  String? user;
  List<Order>? transactions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    map['user'] = user;
    if (transactions != null) {
      map['transactions'] = transactions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  OrdersEntity toEntity() {
    return OrdersEntity(
        orders: transactions?.map((e) => e.toEntity()).toList() ?? []);
  }
}

class Order extends BaseModel<OrderEntity> {
  Order({
    this.tnId,
    this.tnType,
    this.tnName,
    this.tnPoints,
    this.tnTo,
    this.tnDate,
    this.tnStatus,
  });

  Order.fromJson(dynamic json) {
    tnId = json['tn_id'];
    tnType = json['tn_type'];
    tnName = json['tn_name'];
    tnPoints = json['tn_points'];
    tnTo = json['tn_to'];
    tnDate = json['tn_date'];
    tnStatus = json['tn_status'];
  }

  String? tnId;
  String? tnType;
  String? tnName;
  String? tnPoints;
  String? tnTo;
  String? tnDate;
  String? tnStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tn_id'] = tnId;
    map['tn_type'] = tnType;
    map['tn_name'] = tnName;
    map['tn_points'] = tnPoints;
    map['tn_to'] = tnPoints;
    map['tn_date'] = tnDate;
    map['tn_status'] = tnStatus;
    return map;
  }

  @override
  OrderEntity toEntity() {
    return OrderEntity(
      id: tnId ?? '',
      name: tnName ?? '',
      points: tnPoints ?? '',
      wallet: tnTo ?? '',
      date: DataFormatter().fromLinuxTime(tnDate),
      status: tnStatus!.toOrderStatus,
    );
  }
}
