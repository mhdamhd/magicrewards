import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/errors/failure.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/transactions_parameters.dart';

abstract class RewardsRepository {
  Future<Either<Failure, PayoutsEntity>> getPayouts(
      PayoutsParameters parameters);

  Future<Either<Failure, void>> redeem(RedeemParameters parameters);

  Future<Either<Failure, OrdersEntity>> getOrders(OrdersParameters parameters);

  Future<Either<Failure, TransactionsEntity>> getTransactions(
      TransactionsParameters parameters);
}
