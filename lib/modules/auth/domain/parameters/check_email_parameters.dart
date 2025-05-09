import 'package:equatable/equatable.dart';
import 'package:magic_rewards/core/constants/app_constants.dart';

class CheckEmailParameters extends Equatable {
  final String email;
  final int clientId = AppConstants.clientId;

  const CheckEmailParameters({
    required this.email,
  });

  Map<String, dynamic> toJson() => {
        "email": email,
        "clientId": clientId,
      };

  @override
  List<Object> get props => [clientId, email];
}
