import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_orders_entity.dart';
import 'package:magic_rewards/modules/tasks/dmain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/modules/tasks/dmain/repository/tasks_repository.dart';

part 'tasks_orders_event.dart';

class TasksOrdersBloc
    extends Bloc<TasksOrdersEvent, BaseState<TasksOrdersEntity>> {
  final TasksRepository tasksRepository;

  TasksOrdersBloc(this.tasksRepository)
      : super(const BaseState<TasksOrdersEntity>()) {
    on<FetchTasksOrdersEvent>(_getTasksOrders);
  }

  FutureOr<void> _getTasksOrders(FetchTasksOrdersEvent event, emit) async {
    emit(state.loading());
    final result =
        await tasksRepository.getTasksOrders(TasksOrdersParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
