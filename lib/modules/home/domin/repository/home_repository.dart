import 'package:dartz/dartz.dart';
import 'package:magic_rewards/core/errors/failure.dart';
import 'package:magic_rewards/modules/home/domin/entities/home_entity.dart';
import 'package:magic_rewards/modules/home/domin/parameters/home_parameters.dart';

abstract class HomeRepository {
  Future<Either<Failure, HomeEntity>> getHome(HomeParameters parameters);
}
