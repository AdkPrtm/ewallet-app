import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet/features/transaction/domain/entities/entities.dart';
import 'package:ewallet/features/transaction/domain/usecases/usecases.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final GetTransactionHistoryUseCase _getTransactionHistoryUseCase;
  TransactionBloc(this._getTransactionHistoryUseCase)
      : super(TransactionInitial()) {
    on<GetTransactionHistoryEvent>(getTransactionHistory);
  }

  Future<void> getTransactionHistory(
      GetTransactionHistoryEvent event, Emitter<TransactionState> emit) async {
    final result =
        await _getTransactionHistoryUseCase.call(params: event.query);
    result.fold(
      (l) => emit(TransactionFailed(message: l.message)),
      (data) => emit(
          TransactionHistoryLoaded(dataTransactionHistoryEntity: data.data)),
    );
  }
}
