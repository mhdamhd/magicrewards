import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magic_rewards/core/utils/base_state.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/modules/tasks/dmain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/modules/tasks/dmain/repository/tasks_repository.dart';

part 'comments_event.dart';

class CommentsBloc
    extends Bloc<CommentsEvent, BaseState<ReserveCommentEntity>> {
  final TasksRepository tasksRepository;

  CommentsBloc(this.tasksRepository)
      : super(const BaseState<ReserveCommentEntity>()) {
    on<ReserveCommentEvent>(_reserveComment);
  }

  FutureOr<void> _reserveComment(ReserveCommentEvent event, emit) async {
    emit(state.loading());
    final result = await tasksRepository
        .reserveComment(ReserveCommentParameters(taskId: event.taskId));
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
