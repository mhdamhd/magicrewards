import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/tasks_entity.dart';

class TasksModel extends BaseModel<TasksEntity> {
  TasksModel({
    this.error,
    this.errorCode,
    this.tasks,
  });

  TasksModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    if (json['tasks'] != null) {
      tasks = [];
      json['tasks'].forEach((v) {
        tasks?.add(TaskModel.fromJson(v));
      });
    }
  }

  bool? error;
  int? errorCode;
  List<TaskModel>? tasks;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    if (tasks != null) {
      map['tasks'] = tasks?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  @override
  TasksEntity toEntity() {
    return TasksEntity(tasks: tasks?.map((e) => e.toEntity()).toList() ?? []);
  }
}

class TaskModel extends BaseModel<TaskEntity> {
  TaskModel({
    this.taskId,
    this.taskTitle,
    this.taskSubTitle,
    this.taskDescription,
    this.taskImage,
    this.taskUrl,
    this.taskPrice,
    this.taskStatus,
  });

  TaskModel.fromJson(dynamic json) {
    taskId = json['task_id'];
    taskTitle = json['task_title'];
    taskSubTitle = json['task_sub_title'];
    taskDescription = json['task_description'];
    taskImage = json['task_image'];
    taskUrl = json['task_url'];
    taskPrice = json['task_price'];
    taskStatus = json['task_status'];
  }

  String? taskId;
  String? taskTitle;
  String? taskSubTitle;
  String? taskDescription;
  String? taskImage;
  String? taskUrl;
  String? taskPrice;
  String? taskStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['task_id'] = taskId;
    map['task_title'] = taskTitle;
    map['task_sub_title'] = taskSubTitle;
    map['task_description'] = taskDescription;
    map['task_image'] = taskImage;
    map['task_url'] = taskUrl;
    map['task_price'] = taskPrice;
    map['task_status'] = taskStatus;
    return map;
  }

  @override
  TaskEntity toEntity() {
    return TaskEntity(
      id: taskId!,
      title: taskTitle ?? '',
      subTitle: taskSubTitle ?? '',
      description: taskDescription ?? '',
      image: taskImage ?? '',
      url: taskUrl ?? '',
      price: taskPrice ?? '0',
    );
  }
}
