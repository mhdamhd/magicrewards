part of 'tasks_orders_bloc.dart';

class TasksOrdersEvent extends Equatable {
  const TasksOrdersEvent();

  @override
  List<Object> get props => [];
}

class FetchTasksOrdersEvent extends TasksOrdersEvent {
  const FetchTasksOrdersEvent();
}
