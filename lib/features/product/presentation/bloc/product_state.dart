part of 'product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductFailed extends ProductState {
  final String? message;

  const ProductFailed(this.message);
  @override
  List<Object> get props => [message!];
}

class ProductLoaded extends ProductState {
  final List<DataOperatorCardEntity>? dataOperatorCard;

  const ProductLoaded({this.dataOperatorCard});
  @override
  List<Object> get props => [dataOperatorCard!];
}

class ProductSuccess extends ProductState {}
