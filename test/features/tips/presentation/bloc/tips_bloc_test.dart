import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/tips/presentation/bloc/tips_bloc.dart';

import '../../helpers/constanst.dart';
import '../../helpers/tips_test_helper.mocks.dart';

void main() {
  late MockGetTipsUseCase mockGetTipsUseCase;
  late TipsBloc tipsBloc;

  setUp(() {
    mockGetTipsUseCase = MockGetTipsUseCase();
    tipsBloc = TipsBloc(mockGetTipsUseCase);
  });

  test('Initial state should be empty', () {
    expect(tipsBloc.state, TipsInitial());
  });

  blocTest<TipsBloc, TipsState>(
    'should emit [TipsLoading, TipsLoaded] when successfully get data',
    build: () {
      when(mockGetTipsUseCase.call())
          .thenAnswer((_) async => Right(testTipsEntity));
      return tipsBloc;
    },
    act: (bloc) => bloc.add(GetTipsEvent()),
    expect: () => [
      TipsLoading(),
      TipsLoaded(dataTips: testTipsEntity.data!.data),
    ],
  );

  blocTest<TipsBloc, TipsState>(
    'should emit [TipsLoading, TipsFailed] when unsuccessfull get data',
    build: () {
      when(mockGetTipsUseCase.call())
          .thenAnswer((_) async => const Left(ServerFailure('Invalid Request')));
      return tipsBloc;
    },
    act: (bloc) => bloc.add(GetTipsEvent()),
    expect: () => [
      TipsLoading(),
      const TipsFailed(message: 'Invalid Request'),
    ],
  );
}
