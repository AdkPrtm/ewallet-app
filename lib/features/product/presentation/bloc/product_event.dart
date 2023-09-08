part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class GetDataPlansEvent extends ProductEvent {
  final String? limit;

  const GetDataPlansEvent({this.limit = '10'});
  @override
  List<Object> get props => [limit!];
}

class BuyDataPlansEvent extends ProductEvent {
  final BuyDataPlansParams? buyDataPlansParams;

  const BuyDataPlansEvent({this.buyDataPlansParams});
    @override
  List<Object> get props => [buyDataPlansParams!];
}
