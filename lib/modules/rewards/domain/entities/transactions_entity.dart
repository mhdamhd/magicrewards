import 'package:magic_rewards/core/entities/base_entity.dart';

class TransactionsEntity extends BaseEntity {
  final List<TransactionEntity> orders;

  TransactionsEntity({required this.orders});

  @override
  List<Object?> get props => [orders];
}

class TransactionEntity extends BaseEntity {
  final String id;
  final String name;
  final String points;
  final DateTime date;

  TransactionEntity(
      {required this.id,
      required this.name,
      required this.points,
      required this.date});

  @override
  List<Object?> get props => [id, name, points, date];
}
