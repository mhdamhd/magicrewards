part of 'orders_bloc.dart';

class OrdersEvent extends Equatable {
  const OrdersEvent();

  @override
  List<Object> get props => [];
}

class FetchOrdersEvent extends OrdersEvent {
  const FetchOrdersEvent();
}
