import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';

class RegisterParameters extends Equatable {
  final String userName;
  final String password;
  final String fullName;
  final String email;
  final String groupEmail;
  final String reg = AppConstants.reg;
  final int clientId = AppConstants.clientId;

  const RegisterParameters(
      {required this.email,
      required this.userName,
      required this.fullName,
      required this.password,
      required this.groupEmail});

  Map<String, dynamic> toJson() => {
        "username": userName,
        "password": password,
        "email": email,
        "fullname": fullName,
        "reg": reg,
        "clientId": clientId,
        "groupEmail": groupEmail
      };

  @override
  List<Object> get props =>
      [userName, password, email, fullName, reg, clientId, groupEmail];
}
