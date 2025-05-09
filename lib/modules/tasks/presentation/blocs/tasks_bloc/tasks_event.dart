part of 'tasks_bloc.dart';

class TasksEvent extends Equatable {
  const TasksEvent();

  @override
  List<Object> get props => [];
}

class FetchTasksEvent extends TasksEvent {
  const FetchTasksEvent();
}
