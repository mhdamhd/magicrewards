part of 'payouts_bloc.dart';

class PayoutsEvent extends Equatable {
  const PayoutsEvent();

  @override
  List<Object> get props => [];
}

class FetchPayoutsEvent extends PayoutsEvent {
  const FetchPayoutsEvent();
}
