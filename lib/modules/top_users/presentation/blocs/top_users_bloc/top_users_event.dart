part of 'top_users_bloc.dart';

class TopUsersEvent extends Equatable {
  const TopUsersEvent();

  @override
  List<Object> get props => [];
}

class FetchTopUsersEvent extends TopUsersEvent {
  final bool halfMonth;

  const FetchTopUsersEvent({this.halfMonth = false});
}
