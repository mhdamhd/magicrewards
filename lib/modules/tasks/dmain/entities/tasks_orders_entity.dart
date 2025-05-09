import 'package:magic_rewards/core/entities/base_entity.dart';
import 'package:magic_rewards/core/enums/order_status.dart';

class TasksOrdersEntity extends BaseEntity {
  TasksOrdersEntity({required this.orders});

  List<TaskOrderEntity> orders;

  @override
  List<Object?> get props => [orders];
}

class TaskOrderEntity extends BaseEntity {
  TaskOrderEntity({
    required this.taskName,
    required this.timestamp,
    required this.price,
    required this.status,
  });

  String taskName;
  DateTime timestamp;
  String price;
  OrderStatus status;

  @override
  List<Object?> get props => [taskName, timestamp, price, status];
}
