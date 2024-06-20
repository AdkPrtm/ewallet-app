import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ewallet/features/product/product.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetDataPlansUseCase _getDataPlansUseCase;
  final BuyDataPlansUseCase _buyDataPlansUseCase;

  ProductBloc(
    this._getDataPlansUseCase,
    this._buyDataPlansUseCase,
  ) : super(ProductInitial()) {
    on<GetDataPlansEvent>(onGetDataPlans);
    on<BuyDataPlansEvent>(onBuyDataPlans);
  }

  Future<void> onGetDataPlans(
      GetDataPlansEvent event, Emitter<ProductState> emit) async {
    emit(ProductLoading());
    final result = await _getDataPlansUseCase.call(params: event.query);
    result.fold(
      (l) => emit(ProductFailed(l.message)),
      (data) => emit(ProductLoaded(dataOperator: data.data)),
    );
  }

  Future<void> onBuyDataPlans(
      BuyDataPlansEvent event, Emitter<ProductState> emit) async {
    emit(ProductLoading());
    final result =
        await _buyDataPlansUseCase.call(params: event.buyDataPlansParams);
    result.fold(
      (l) => emit(ProductFailed(l.message)),
      (r) => emit(ProductSuccess()),
    );
  }
}
