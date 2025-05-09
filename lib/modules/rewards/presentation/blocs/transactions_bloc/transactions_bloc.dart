import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/rewards/domain/entities/transactions_entity.dart';
import 'package:magic_rewards/modules/rewards/domain/parameters/transactions_parameters.dart';
import 'package:magic_rewards/modules/rewards/domain/repository/rewards_repository.dart';

part 'transactions_event.dart';

class TransactionsBloc
    extends Bloc<TransactionsEvent, BaseState<TransactionsEntity>> {
  final RewardsRepository rewardsRepository;

  TransactionsBloc(this.rewardsRepository)
      : super(const BaseState<TransactionsEntity>()) {
    on<FetchTransactionsEvent>(_getTransactions);
  }

  FutureOr<void> _getTransactions(FetchTransactionsEvent event, emit) async {
    emit(state.loading());
    final result =
        await rewardsRepository.getTransactions(TransactionsParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
