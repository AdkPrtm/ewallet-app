import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template_clean_architecture/features/topup/domain/entities/entities.dart';
import 'package:template_clean_architecture/features/topup/domain/usecases/get_payment_method.dart';
import 'package:template_clean_architecture/features/topup/domain/usecases/usecases.dart';

part 'topup_event.dart';
part 'topup_state.dart';

class TopupBloc extends Bloc<TopupEvent, TopupState> {
  final TopUpUseCase _topUpUseCase;
  final GetPaymentMethodUseCase _paymentMethodUseCase;

  TopupBloc(
    this._topUpUseCase,
    this._paymentMethodUseCase,
  ) : super(TopupInitial()) {
    on<RequestTopupEvent>(onGetTopUpProses);
    on<GetPaymentMethodTopupEvent>(onGetPaymentTopUpProses);
  }

  Future<void> onGetTopUpProses(
      RequestTopupEvent event, Emitter<TopupState> emit) async {
    emit(TopUpLoading());
    final result = await _topUpUseCase.call(params: event.topupParams);
    result.fold(
      (fail) => emit(TopupFailed(message: fail.message)),
      (data) => emit(TopUpLoaded(topUpEntity: data)),
    );
  }

  Future<void> onGetPaymentTopUpProses(
      GetPaymentMethodTopupEvent event, Emitter<TopupState> emit) async {
    emit(TopUpLoading());
    final result = await _paymentMethodUseCase.call();
    result.fold(
      (fail) => emit(TopupFailed(message: fail.message)),
      (data) => emit(PaymentMethodLoaded(paymentDataTopup: data.data!)),
    );
  }
}
