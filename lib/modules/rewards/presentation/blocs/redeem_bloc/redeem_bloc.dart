import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/redeem_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/repository/rewards_repository.dart';

part 'redeem_event.dart';

class RedeemBloc extends Bloc<RedeemEvent, BaseState<void>> {
  final RewardsRepository rewardsRepository;

  RedeemBloc(this.rewardsRepository) : super(const BaseState<void>()) {
    on<RedeemButtonPressedEvent>(_redeem);
  }

  FutureOr<void> _redeem(RedeemButtonPressedEvent event, emit) async {
    emit(state.loading());
    final result = await rewardsRepository
        .redeem(RedeemParameters(name: event.name, value: event.value));
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
