import 'package:magic_rewards/modules/rewards/data/models/orders_model.dart';
import 'package:magic_rewards/modules/rewards/data/models/payouts_model.dart';
import 'package:magic_rewards/modules/rewards/data/models/transactions_model.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/transactions_parameters.dart';

abstract class RewardsDataSource {
  Future<PayoutsModel> getPayouts(PayoutsParameters parameters);

  Future<void> redeem(RedeemParameters parameters);

  Future<OrdersModel> getOrders(OrdersParameters parameters);

  Future<TransactionsModel> getTransactions(TransactionsParameters parameters);
}
