part of 'redeem_bloc.dart';

class RedeemEvent extends Equatable {
  const RedeemEvent();

  @override
  List<Object> get props => [];
}

class RedeemButtonPressedEvent extends RedeemEvent {
  final String name;
  final String value;

  const RedeemButtonPressedEvent({required this.name, required this.value});

  @override
  List<Object> get props => [name, value];
}
