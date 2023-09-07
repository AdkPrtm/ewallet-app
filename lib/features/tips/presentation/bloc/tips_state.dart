part of 'tips_bloc.dart';

abstract class TipsState extends Equatable {
  const TipsState();

  @override
  List<Object> get props => [];
}

class TipsInitial extends TipsState {}

class TipsLoading extends TipsState {}

class TipsFailed extends TipsState {
  final String? message;

  const TipsFailed({this.message});
  @override
  List<Object> get props => [message!];
}

class TipsLoaded extends TipsState {
  final List<DataTipsEntity>? dataTips;

  const TipsLoaded({this.dataTips});
  @override
  List<Object> get props => [dataTips!];
}
