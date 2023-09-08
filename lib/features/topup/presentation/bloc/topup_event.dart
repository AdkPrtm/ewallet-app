part of 'topup_bloc.dart';

abstract class TopupEvent extends Equatable {
  const TopupEvent();

  @override
  List<Object> get props => [];
}

class RequestTopupEvent extends TopupEvent {
  final TopupParams? topupParams;

  const RequestTopupEvent(this.topupParams);
  @override
  List<Object> get props => [topupParams!];
}

class GetPaymentMethodTopupEvent extends TopupEvent {}
