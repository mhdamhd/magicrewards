import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_entity.dart';
import 'package:magic_rewards/modules/tasks/dmain/parameters/tasks_parameters.dart';
import 'package:magic_rewards/modules/tasks/dmain/repository/tasks_repository.dart';

part 'tasks_event.dart';

class TasksBloc extends Bloc<TasksEvent, BaseState<TasksEntity>> {
  final TasksRepository tasksRepository;

  TasksBloc(this.tasksRepository) : super(const BaseState<TasksEntity>()) {
    on<FetchTasksEvent>(_getTasks);
  }

  FutureOr<void> _getTasks(FetchTasksEvent event, emit) async {
    emit(state.loading());
    final result = await tasksRepository.getTasks(TasksParameters());
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
