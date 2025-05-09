part of 'do_task_bloc.dart';

class DoTaskEvent extends Equatable {
  const DoTaskEvent();

  @override
  List<Object> get props => [];
}

class DoTaskButtonPressedEvent extends DoTaskEvent {
  final String taskId;
  final String commentId;
  final String name;
  final String url;
  final String email;
  final String text;
  final File image;
  final DateTime timeStamp;

  const DoTaskButtonPressedEvent(
      {required this.taskId,
      required this.commentId,
      required this.name,
      required this.url,
      required this.email,
      required this.text,
      required this.image,
      required this.timeStamp});

  @override
  List<Object> get props =>
      [taskId, commentId, name, url, email, text, image, timeStamp];
}
