part of 'check_email_bloc.dart';

sealed class CheckEmailEvent extends Equatable {
  const CheckEmailEvent();

  @override
  List<Object> get props => [];
}

class CheckEmailButtonTappedEvent extends CheckEmailEvent {
  final String email;

  const CheckEmailButtonTappedEvent({
    required this.email,
  });

  @override
  List<Object> get props => [email];
}
