import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/home/domin/entities/home_entity.dart';
import 'package:magic_rewards/modules/home/domin/parameters/home_parameters.dart';
import 'package:magic_rewards/modules/home/domin/repository/home_repository.dart';

part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, BaseState<HomeEntity>> {
  final HomeRepository homeRepository;

  HomeBloc(this.homeRepository) : super(const BaseState<HomeEntity>()) {
    on<FetchHomeEvent>(_getHome);
  }

  FutureOr<void> _getHome(FetchHomeEvent event, emit) async {
    emit(state.loading());
    final result = await homeRepository.getHome(HomeParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
