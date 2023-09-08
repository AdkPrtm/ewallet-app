part of 'transfer_bloc.dart';

abstract class TransferState extends Equatable {
  const TransferState();

  @override
  List<Object> get props => [];
}

class TransferInitial extends TransferState {}

class TransferLoading extends TransferState {}

class TransferSuccess extends TransferState {}

class FailedTransfer extends TransferState {
  final String? message;

  const FailedTransfer({this.message});
  @override
  List<Object> get props => [message!];
}


class ListDataByUsername extends TransferState {
  final List<UserBySearchingEntity>? listData;

  const ListDataByUsername({this.listData});
  @override
  List<Object> get props => [listData!];
}

class SuccessTransferHistory extends TransferState {
  final List<DataTransferHistory>? dataTransferHistory;

  const SuccessTransferHistory({this.dataTransferHistory});

  @override
  List<Object> get props => [dataTransferHistory!];
}
