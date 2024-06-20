import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet/features/transfer/domain/entities/entities.dart';
import 'package:ewallet/features/transfer/domain/usecases/usecases.dart';

part 'transfer_event.dart';
part 'transfer_state.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  final TransferUseCase _transferUseCase;
  final TransferHistoryUseCase _transferHistoryUseCase;

  TransferBloc(
    this._transferUseCase,
    this._transferHistoryUseCase,
  ) : super(TransferInitial()) {
    on<RequestTransferEvent>(onTransferProses);
    on<RequestTransferHistoryEvent>(onTransferHistoryProses);
  }

  Future<void> onTransferProses(
      RequestTransferEvent event, Emitter<TransferState> emit) async {
    emit(TransferLoading());
    final result = await _transferUseCase.call(params: event.transferParams);
    if (isClosed) return;
    result.fold(
      (l) => emit(FailedTransfer(message: l.message)),
      (r) => emit(TransferSuccess()),
    );
  }

  Future<void> onTransferHistoryProses(
      RequestTransferHistoryEvent event, Emitter<TransferState> emit) async {
    final result = await _transferHistoryUseCase.call(params: event.query);
    if (isClosed) return;
    result.fold(
      (l) => emit(FailedTransfer(message: l.message)),
      (data) {
        emit(
          SuccessTransferHistory(dataTransferHistory: data.data),
        );
      },
    );
  }
}
