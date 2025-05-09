part of 'live_offers_bloc.dart';

class LiveOffersEvent extends Equatable {
  const LiveOffersEvent();

  @override
  List<Object> get props => [];
}

class FetchLiveOffersEvent extends LiveOffersEvent {
  final bool refresh;

  const FetchLiveOffersEvent({this.refresh = false});
}
