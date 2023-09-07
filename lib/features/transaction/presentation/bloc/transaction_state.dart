part of 'transaction_bloc.dart';

sealed class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

final class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionFailed extends TransactionState {
  final String? message;

  const TransactionFailed({this.message});
  @override
  List<Object> get props => [message!];
}

class TransactionHistoryLoaded extends TransactionState {
  final List<DataTransactionHistoryEntity>? dataTransactionHistoryEntity;

  const TransactionHistoryLoaded({this.dataTransactionHistoryEntity});
  @override
  List<Object> get props => [dataTransactionHistoryEntity!];
}
