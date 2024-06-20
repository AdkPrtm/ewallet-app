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

// class RequestDataTransactionEvent extends TransferEvent {
//   final GetTransferHistoryQuery? trfHistory;
//   final String? username;

//   const RequestDataTransactionEvent({this.trfHistory, this.username});
//   @override
//   List<Object> get props => [trfHistory!, username!];
// }

class RequestTransferHistoryEvent extends TransferEvent {
  final GetTransferHistoryQuery? query;

  const RequestTransferHistoryEvent({this.query});
  @override
  List<Object> get props => [query!];
}

class GetDataByUsername extends TransferEvent {
  final String? username;

  const GetDataByUsername({this.username});
  @override
  List<Object> get props => [username!];
}
