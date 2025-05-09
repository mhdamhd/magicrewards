import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/core/utils/app_date_formatter.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/transactions_entity.dart';

class TransactionsModel extends BaseModel<TransactionsEntity> {
  TransactionsModel({
    this.error,
    this.errorCode,
    this.user,
    this.transactions,
  });

  TransactionsModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    user = json['user'];
    if (json['transactions'] != null) {
      transactions = [];
      json['transactions'].forEach((v) {
        transactions?.add(Transaction.fromJson(v));
      });
    }
  }

  bool? error;
  int? errorCode;
  String? user;
  List<Transaction>? transactions;

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
  TransactionsEntity toEntity() {
    return TransactionsEntity(
        orders: transactions?.map((e) => e.toEntity()).toList() ?? []);
  }
}

class Transaction extends BaseModel<TransactionEntity> {
  Transaction({
    this.tnId,
    this.tnType,
    this.tnName,
    this.tnPoints,
    this.tnDate,
    this.tnStatus,
  });

  Transaction.fromJson(dynamic json) {
    tnId = json['tn_id'];
    tnType = json['tn_type'];
    tnName = json['tn_name'];
    tnPoints = json['tn_points'];
    tnDate = json['tn_date'];
    tnStatus = json['tn_status'];
  }

  String? tnId;
  String? tnType;
  String? tnName;
  String? tnPoints;
  String? tnDate;
  String? tnStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tn_id'] = tnId;
    map['tn_type'] = tnType;
    map['tn_name'] = tnName;
    map['tn_points'] = tnPoints;
    map['tn_date'] = tnDate;
    map['tn_status'] = tnStatus;
    return map;
  }

  @override
  TransactionEntity toEntity() {
    return TransactionEntity(
      id: tnId ?? '',
      name: tnName ?? '',
      points: tnPoints ?? '',
      date: DataFormatter().fromLinuxTime(tnDate),
    );
  }
}
