import 'package:magic_rewards/core/constants/apis_urls.dart';
import 'package:magic_rewards/core/services/api_services.dart';
import 'package:magic_rewards/core/utils/app_response.dart';
import 'package:magic_rewards/modules/rewards/data/data_source/rewards_data_source.dart';
import 'package:magic_rewards/modules/rewards/data/models/orders_model.dart';
import 'package:magic_rewards/modules/rewards/data/models/payouts_model.dart';
import 'package:magic_rewards/modules/rewards/data/models/transactions_model.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/transactions_parameters.dart';

class RewardsRemoteDataSourceImp extends RewardsDataSource {
  @override
  Future<PayoutsModel> getPayouts(PayoutsParameters parameters) async {
    AppResponse appResponse =
        await ApiServices().post(ApisUrls.payouts, data: parameters.toJson());
    return PayoutsModel.fromJson(appResponse.data);
  }

  @override
  Future<void> redeem(RedeemParameters parameters) async {
    await ApiServices().post(ApisUrls.redeem, data: parameters.toJson());
  }

  @override
  Future<OrdersModel> getOrders(OrdersParameters parameters) async {
    AppResponse appResponse =
        await ApiServices().post(ApisUrls.orders, data: parameters.toJson());
    return OrdersModel.fromJson(appResponse.data);
  }

  @override
  Future<TransactionsModel> getTransactions(
      TransactionsParameters parameters) async {
    AppResponse appResponse = await ApiServices()
        .post(ApisUrls.transactions, data: parameters.toJson());
    return TransactionsModel.fromJson(appResponse.data);
  }
}
