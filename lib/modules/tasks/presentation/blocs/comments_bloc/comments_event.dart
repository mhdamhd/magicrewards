part of 'comments_bloc.dart';

class CommentsEvent extends Equatable {
  const CommentsEvent();

  @override
  List<Object> get props => [];
}

class ReserveCommentEvent extends CommentsEvent {
  final String taskId;

  const ReserveCommentEvent({required this.taskId});

  @override
  List<Object> get props => [taskId];
}
