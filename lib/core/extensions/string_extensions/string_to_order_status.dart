import 'package:magic_rewards/core/enums/order_status.dart';

extension StringToOrderStatus on String {
  OrderStatus get toOrderStatus {
    switch (this) {
      case '0':
        return OrderStatus.pending;
      case '1':
        return OrderStatus.completed;
      case '2':
        return OrderStatus.processing;
      case '3':
        return OrderStatus.rejected;
      default:
        throw "No Such Order Type";
    }
  }
}
