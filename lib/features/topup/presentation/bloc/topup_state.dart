part of 'topup_bloc.dart';

abstract class TopupState extends Equatable {
  const TopupState();

  @override
  List<Object> get props => [];
}

class TopupInitial extends TopupState {}

class TopUpLoading extends TopupState {}

class TopUpLoaded extends TopupState {
  final ResultTopUpEntity? resultTopUpEntity;

  const TopUpLoaded({this.resultTopUpEntity});
  @override
  List<Object> get props => [resultTopUpEntity!];
}

class TopupFailed extends TopupState {
  final String? message;

  const TopupFailed({this.message});
  @override
  List<Object> get props => [message!];
}

class PaymentMethodLoaded extends TopupState {
  final List<PaymentDataTopupEntity> paymentDataTopup;

  const PaymentMethodLoaded({required this.paymentDataTopup});
  @override
  List<Object> get props => [paymentDataTopup];
}
