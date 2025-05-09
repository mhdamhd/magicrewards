import 'package:magic_rewards/core/entities/base_entity.dart';
import 'package:magic_rewards/core/enums/order_status.dart';

class OrdersEntity extends BaseEntity {
  final List<OrderEntity> orders;

  OrdersEntity({required this.orders});

  @override
  List<Object?> get props => [orders];
}

class OrderEntity extends BaseEntity {
  final String id;
  final String name;
  final String points;
  final DateTime date;
  final String wallet;
  final OrderStatus status;

  OrderEntity(
      {required this.id,
      required this.name,
      required this.points,
      required this.date,
      required this.status,
      required this.wallet});

  @override
  List<Object?> get props => [id, name, points, date, status, wallet];
}
