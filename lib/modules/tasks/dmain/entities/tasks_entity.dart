import 'package:magic_rewards/core/entities/base_entity.dart';

class TasksEntity extends BaseEntity {
  final List<TaskEntity> tasks;

  TasksEntity({required this.tasks});

  @override
  List<Object?> get props => [tasks];
}

class TaskEntity extends BaseEntity {
  final String id;
  final String title;
  final String subTitle;
  final String description;
  final String image;
  final String url;
  final String price;

  TaskEntity({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
    required this.url,
    required this.price,
  });

  @override
  List<Object?> get props =>
      [id, title, subTitle, description, image, url, price];
}
