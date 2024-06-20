part of 'transaction_bloc.dart';

sealed class TransactionEvent extends Equatable {
  const TransactionEvent();
}

class GetTransactionHistoryEvent extends TransactionEvent {
  final GetTransactionHistoryQuery? query;

  const GetTransactionHistoryEvent({this.query});
  @override
  List<Object> get props => [query!];
}
