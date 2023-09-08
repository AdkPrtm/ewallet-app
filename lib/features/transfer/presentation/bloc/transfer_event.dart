part of 'transfer_bloc.dart';

abstract class TransferEvent extends Equatable {
  const TransferEvent();

  @override
  List<Object> get props => [];
}

class RequestTransferEvent extends TransferEvent {
  final TransferParams? transferParams;

  const RequestTransferEvent({this.transferParams});
  @override
  List<Object> get props => [transferParams!];
}

class RequestTransferHistoryEvent extends TransferEvent {
  final String? limit;

  const RequestTransferHistoryEvent({this.limit});
  @override
  List<Object> get props => [limit!];
}

class GetDataByUsername extends TransferEvent {
  final String? username;

  const GetDataByUsername({this.username});
  @override
  List<Object> get props => [username!];
}