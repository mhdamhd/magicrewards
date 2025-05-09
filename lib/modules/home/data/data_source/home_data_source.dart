import 'package:magic_rewards/modules/home/data/models/home_model.dart';
import 'package:magic_rewards/modules/home/domin/parameters/home_parameters.dart';

abstract class HomeDataSource {
  Future<HomeModel> getHome(HomeParameters parameters);
}
