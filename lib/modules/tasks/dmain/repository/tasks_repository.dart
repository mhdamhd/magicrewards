import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/errors/failure.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/reserve_comment_entity.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_entity.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_orders_entity.dart';
import 'package:magic_rewards/modules/tasks/dmain/parameters/add_task_order_parameters.dart';
import 'package:magic_rewards/modules/tasks/dmain/parameters/reserve_comment_parameters.dart';
import 'package:magic_rewards/modules/tasks/dmain/parameters/tasks_orders_parameters.dart';
import 'package:magic_rewards/modules/tasks/dmain/parameters/tasks_parameters.dart';

abstract class TasksRepository {
  Future<Either<Failure, TasksEntity>> getTasks(TasksParameters parameters);

  Future<Either<Failure, ReserveCommentEntity>> reserveComment(
      ReserveCommentParameters parameters);

  Future<Either<Failure, void>> addTaskOrder(AddTaskOrderParameters parameters);

  Future<Either<Failure, TasksOrdersEntity>> getTasksOrders(
      TasksOrdersParameters parameters);
}
