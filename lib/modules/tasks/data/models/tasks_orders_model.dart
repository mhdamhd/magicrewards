import 'package:magic_rewards/core/extensions/string_extensions/string_to_order_status.dart';
import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_orders_entity.dart';

class TasksOrdersModel extends BaseModel<TasksOrdersEntity> {
  TasksOrdersModel({
    this.error,
    this.errorCode,
    this.requests,
  });

  TasksOrdersModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    if (json['requests'] != null) {
      requests = [];
      json['requests'].forEach((v) {
        requests?.add(TaskOrderModel.fromJson(v));
      });
    }
  }

  bool? error;
  int? errorCode;
  List<TaskOrderModel>? requests;

  @override
  TasksOrdersEntity toEntity() {
    return TasksOrdersEntity(
        orders: requests?.map((e) => e.toEntity()).toList() ?? []);
  }
}

class TaskOrderModel extends BaseModel<TaskOrderEntity> {
  TaskOrderModel({
    this.error,
    this.errorCode,
    this.id,
    this.taskId,
    this.commentId,
    this.username,
    this.name,
    this.email,
    this.text,
    this.image,
    this.timestamp,
    this.price,
    this.status,
  });

  TaskOrderModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    id = json['id'];
    taskId = json['task_id'];
    taskName = json['task_name'];
    commentId = json['comment_id'];
    username = json['username'];
    name = json['name'];
    email = json['email'];
    text = json['text'];
    image = json['image'];
    timestamp = json['timestamp'];
    price = json['price'];
    status = json['status'];
  }

  bool? error;
  int? errorCode;
  String? id;
  String? taskId;
  String? taskName;
  String? commentId;
  String? username;
  String? name;
  String? email;
  String? text;
  String? image;
  String? timestamp;
  String? price;
  String? status;

  @override
  TaskOrderEntity toEntity() {
    return TaskOrderEntity(
      taskName: taskName ?? '',
      timestamp: DateTime.parse(timestamp!),
      price: price ?? '',
      status: status!.toOrderStatus,
    );
  }
}
