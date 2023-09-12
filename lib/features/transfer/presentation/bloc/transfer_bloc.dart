import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:template_clean_architecture/features/transfer/domain/usecases/usecases.dart';

part 'transfer_event.dart';
part 'transfer_state.dart';

class TransferBloc extends Bloc<TransferEvent, TransferState> {
  final TransferUseCase _transferUseCase;
  final TransferHistoryUseCase _transferHistoryUseCase;
  final GetUserByUsernameUsecase _getUserByUsernameUsecase;

  TransferBloc(
    this._transferUseCase,
    this._transferHistoryUseCase,
    this._getUserByUsernameUsecase,
  ) : super(TransferInitial()) {
    on<RequestTransferEvent>(onTransferProses);
    on<RequestTransferHistoryEvent>(onTransferHistoryProses);
    on<GetDataByUsername>(onGetDataUsernameProses);
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
    emit(TransferLoading());
    final result = await _transferHistoryUseCase.call(params: event.limit);
    if (isClosed) return;
    result.fold(
      (l) => emit(FailedTransfer(message: l.message)),
      (data) => emit(SuccessTransferHistory(dataTransferHistory: data.data?.data)),
    );
  }

  Future<void> onGetDataUsernameProses(
      GetDataByUsername event, Emitter<TransferState> emit) async {
    emit(TransferLoading());
    final result = await _getUserByUsernameUsecase.call(params: event.username);
    if (isClosed) return;
    result.fold(
      (l) => emit(FailedTransfer(message: l.message)),
      (data) => emit(ListDataByUsername(listData: data.data)),
    );
  }
}
