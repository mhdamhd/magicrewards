import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/orders_entity.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/orders_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/repository/rewards_repository.dart';

part 'orders_event.dart';

class OrdersBloc extends Bloc<OrdersEvent, BaseState<OrdersEntity>> {
  final RewardsRepository rewardsRepository;

  OrdersBloc(this.rewardsRepository) : super(const BaseState<OrdersEntity>()) {
    on<FetchOrdersEvent>(_getOrders);
  }

  FutureOr<void> _getOrders(FetchOrdersEvent event, emit) async {
    emit(state.loading());
    final result = await rewardsRepository.getOrders(OrdersParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
