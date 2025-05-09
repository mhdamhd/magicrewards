import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';

class LoginParameters extends Equatable {
  final String username;
  final String password;
  final int clientId = AppConstants.clientId;

  const LoginParameters({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
        "clientId": clientId,
      };

  @override
  List<Object> get props => [clientId, username, password];
}
