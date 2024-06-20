import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet/features/tips/domain/entities/tips_entities.dart';
import 'package:ewallet/features/tips/domain/usecases/usecase.dart';

part 'tips_event.dart';
part 'tips_state.dart';

class TipsBloc extends Bloc<TipsEvent, TipsState> {
  final GetTipsUseCase _getTipsUseCase;
  TipsBloc(this._getTipsUseCase) : super(TipsInitial()) {
    on<GetTipsEvent>(onGetTipsProses);
  }

  Future<void> onGetTipsProses(
      GetTipsEvent event, Emitter<TipsState> emit) async {
    emit(TipsLoading());
    final result = await _getTipsUseCase.call(params: event.query);
    result.fold(
      (l) => emit(TipsFailed(message: l.message)),
      (data) => emit(TipsLoaded(dataTips: data.data)),
    );
  }
}
