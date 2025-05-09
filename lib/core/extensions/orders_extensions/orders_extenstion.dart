import 'package:magic_rewards/core/enums/order_status.dart';

extension OrdersExtenstions on OrderStatus {
  // TODO: Customize app button decoration properties here

  String get stringify {
    switch (this) {
      case OrderStatus.pending:
        return 'Pending';
      case OrderStatus.completed:
        return 'Completed';
      case OrderStatus.processing:
        return 'Processing';
      case OrderStatus.rejected:
        return 'Rejected';
      default:
        throw "No Such Order Type";
    }
  }
}
