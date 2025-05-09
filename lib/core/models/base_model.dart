import 'package:magic_rewards/core/entities/base_entity.dart';

abstract class BaseModel<T extends BaseEntity> {
  T toEntity();
}
