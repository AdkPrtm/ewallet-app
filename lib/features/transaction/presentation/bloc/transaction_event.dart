part of 'transaction_bloc.dart';

sealed class TransactionEvent extends Equatable {
  const TransactionEvent();

  @override
  List<Object> get props => [];
}

class GetTransactionHistoryEvent extends TransactionEvent {
  final String? limit;

  const GetTransactionHistoryEvent({this.limit = '5'});
  @override
  List<Object> get props => [limit!];
}
