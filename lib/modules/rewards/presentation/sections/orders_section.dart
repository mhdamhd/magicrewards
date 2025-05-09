import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/core_compoent/empty_component.dart';
import 'package:magic_rewards/core/core_compoent/failuer_component.dart';
import 'package:magic_rewards/core/core_compoent/loading_compoent.dart';
import 'package:magic_rewards/core/services/service_locator.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/modules/rewards/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:magic_rewards/modules/rewards/presentation/components/order_card.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class OrdersSection extends StatelessWidget {
  OrdersSection({Key? key}) : super(key: key);

  final RefreshController refreshController = RefreshController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OrdersBloc>(),
      child: BlocBuilder<OrdersBloc, BaseState<OrdersEntity>>(
        builder: (context, state) {
          if (state.isInit) getOrders(context);
          if (state.isLoading) return const LoadingComponent();
          if (state.isError) {
            return FailureComponent(
                failure: state.failure, retry: () => getOrders(context));
          }
          if (state.isSuccess) {
            return SmartRefresher(
              controller: refreshController,
              onRefresh: () => getOrders(context),
              child: ListView(
                children: state.data?.orders.isEmpty ?? true
                    ? [const EmptyComponent()]
                    : [
                        const SizedBox(height: 10),
                        ...state.data?.orders
                                .map((e) => OrderCard(order: e))
                                .toList() ??
                            [],
                        const SizedBox(height: 100),
                      ],
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }

  void getOrders(BuildContext context) {
    context.read<OrdersBloc>().add(const FetchOrdersEvent());
  }
}
