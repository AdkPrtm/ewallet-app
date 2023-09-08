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
  final List<DataOperatorCardEntity>? dataOperator;

  const ProductLoaded({this.dataOperator});
  @override
  List<Object> get props => [dataOperator!];
}

class ProductSuccess extends ProductState {}
