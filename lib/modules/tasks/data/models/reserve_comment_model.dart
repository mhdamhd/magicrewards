import 'package:magic_rewards/core/models/base_model.dart';
import 'package:magic_rewards/modules/tasks/dmain/entities/reserve_comment_entity.dart';

class ReserveCommentModel extends BaseModel<ReserveCommentEntity> {
  ReserveCommentModel({
    this.error,
    this.errorCode,
    this.data,
  });

  ReserveCommentModel.fromJson(dynamic json) {
    error = json['error'];
    errorCode = json['error_code'];
    data = json['data'] != null ? CommentModel.fromJson(json['data']) : null;
  }

  bool? error;
  int? errorCode;
  CommentModel? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['error_code'] = errorCode;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

  @override
  ReserveCommentEntity toEntity() {
    return ReserveCommentEntity(commentEntity: data!.toEntity());
  }
}

class CommentModel extends BaseModel<CommentEntity> {
  CommentModel({
    this.commentId,
    this.commentTaskId,
    this.commentUserId,
    this.commentText,
    this.commentStatus,
    this.commentLastChanged,
    this.commentCreatedAt,
  });

  CommentModel.fromJson(dynamic json) {
    commentId = json['comment_id'];
    commentTaskId = json['comment_task_id'];
    commentUserId = json['comment_user_id'];
    commentText = json['comment_text'];
    commentStatus = json['comment_status'];
    commentLastChanged = json['comment_last_changed'];
    commentCreatedAt = json['comment_created_at'];
  }

  String? commentId;
  String? commentTaskId;
  String? commentUserId;
  String? commentText;
  String? commentStatus;
  String? commentLastChanged;
  String? commentCreatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['comment_id'] = commentId;
    map['comment_task_id'] = commentTaskId;
    map['comment_user_id'] = commentUserId;
    map['comment_text'] = commentText;
    map['comment_status'] = commentStatus;
    map['comment_last_changed'] = commentLastChanged;
    map['comment_created_at'] = commentCreatedAt;
    return map;
  }

  @override
  CommentEntity toEntity() {
    return CommentEntity(
      id: commentId!,
      taskId: commentTaskId!,
      text: commentText!,
    );
  }
}
