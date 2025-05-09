part of 'register_bloc.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterButtonTappedEvent extends RegisterEvent {
  final String userName;
  final String password;
  final String fullName;
  final String email;
  final String secondaryEmail;

  const RegisterButtonTappedEvent({
    required this.userName,
    required this.password,
    required this.email,
    required this.secondaryEmail,
    required this.fullName,
  });

  @override
  List<Object> get props =>
      [userName, password, email, secondaryEmail, fullName];
}
