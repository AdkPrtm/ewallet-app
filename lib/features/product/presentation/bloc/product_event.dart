part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class GetDataPlansEvent extends ProductEvent {
  final GetDataPlansQuery query;

  const GetDataPlansEvent({required this.query});
  @override
  List<Object> get props => [query];
}

class BuyDataPlansEvent extends ProductEvent {
  final BuyDataPlansParams? buyDataPlansParams;

  const BuyDataPlansEvent({this.buyDataPlansParams});
  @override
  List<Object> get props => [buyDataPlansParams!];
}
