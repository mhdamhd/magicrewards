part of 'transactions_bloc.dart';

class TransactionsEvent extends Equatable {
  const TransactionsEvent();

  @override
  List<Object> get props => [];
}

class FetchTransactionsEvent extends TransactionsEvent {
  const FetchTransactionsEvent();
}
