import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/payouts_entity.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/payouts_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/repository/rewards_repository.dart';

part 'payouts_event.dart';

class PayoutsBloc extends Bloc<PayoutsEvent, BaseState<PayoutsEntity>> {
  final RewardsRepository rewardsRepository;

  PayoutsBloc(this.rewardsRepository)
      : super(const BaseState<PayoutsEntity>()) {
    on<FetchPayoutsEvent>(_getPayouts);
  }

  FutureOr<void> _getPayouts(FetchPayoutsEvent event, emit) async {
    emit(state.loading());
    final result = await rewardsRepository.getPayouts(PayoutsParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
