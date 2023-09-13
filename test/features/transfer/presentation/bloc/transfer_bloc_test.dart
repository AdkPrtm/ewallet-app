import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/transfer/data/data.dart';
import 'package:template_clean_architecture/features/transfer/data/models/searching_byusername_response.dart';
import 'package:template_clean_architecture/features/transfer/domain/domain.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/user_byusername_entities.dart';
import 'package:template_clean_architecture/features/transfer/presentation/bloc/transfer_bloc.dart';

import '../../../../json_reader.dart';
import '../../helpers/constant.dart';
import '../../helpers/transfer_test_helper.mocks.dart';

void main() {
  late MockTransferUseCase mockTransferUseCase;
  late MockTransferHistoryUseCase mockTransferHistoryUseCase;
  late MockGetUserByUsernameUsecase mockGetUserByUsernameUsecase;
  late TransferBloc transferBloc;

  late ResponseSearchUsername responseSearchUsername;
  late TransferHistoryEntity transferHistoryEntity;

  setUp(() {
    mockTransferUseCase = MockTransferUseCase();
    mockTransferHistoryUseCase = MockTransferHistoryUseCase();
    mockGetUserByUsernameUsecase = MockGetUserByUsernameUsecase();
    transferBloc = TransferBloc(
      mockTransferUseCase,
      mockTransferHistoryUseCase,
      mockGetUserByUsernameUsecase,
    );

    responseSearchUsername = SearchingByUsernameResponse.fromJson(
            json.decode(readJson(getUserByUsernameSuccessfullyPath)))
        .toEntity();
    transferHistoryEntity = TransferHistoryResponse.fromJson(
            json.decode(readJson(transferHistorySuccessfullyPath)))
        .toEntity();
  });

  group('Transfer Group Test Bloc', () {
    test('Initial state should be empty', () {
      expect(transferBloc.state, TransferInitial());
    });

    blocTest(
      'should emit [TransferLoading, TransferSuccess]',
      build: () {
        when(mockTransferUseCase.call(params: testTransferParams))
            .thenAnswer((_) async => const Right('Transfer Success'));
        return transferBloc;
      },
      act: (bloc) =>
          bloc.add(RequestTransferEvent(transferParams: testTransferParams)),
      expect: () => [
        TransferLoading(),
        TransferSuccess(),
      ],
    );

    blocTest(
      'should emit [TransferLoading, FailedTransfer]',
      build: () {
        when(mockTransferUseCase.call(params: testTransferParams)).thenAnswer(
            (_) async => const Left(ServerFailure('Invalid Request')));
        return transferBloc;
      },
      act: (bloc) =>
          bloc.add(RequestTransferEvent(transferParams: testTransferParams)),
      expect: () => [
        TransferLoading(),
        const FailedTransfer(message: 'Invalid Request'),
      ],
    );
  });

  group('Get User by Username Group Test Bloc', () {
    test('Initial state should be empty', () {
      expect(transferBloc.state, TransferInitial());
    });

    blocTest(
      'should emit [TransferLoading, ListDataByUsername]',
      build: () {
        when(mockGetUserByUsernameUsecase.call(params: 'andhika'))
            .thenAnswer((_) async => Right(responseSearchUsername));
        return transferBloc;
      },
      act: (bloc) => bloc.add(const GetDataByUsername(username: 'andhika')),
      expect: () => [
        TransferLoading(),
        ListDataByUsername(listData: responseSearchUsername.data),
      ],
    );

    blocTest(
      'should emit [TransferLoading, FailedTransfer]',
      build: () {
        when(mockGetUserByUsernameUsecase.call(params: 'andhika')).thenAnswer(
            (_) async => const Left(ServerFailure('Invalid Request')));
        return transferBloc;
      },
      act: (bloc) => bloc.add(const GetDataByUsername(username: 'andhika')),
      expect: () => [
        TransferLoading(),
        const FailedTransfer(message: 'Invalid Request'),
      ],
    );
  });

  group('Transfer History Group Test Bloc', () {
    test('Initial state should be empty', () {
      expect(transferBloc.state, TransferInitial());
    });

    blocTest(
      'should emit [TransferLoading, SuccessTransferHistory]',
      build: () {
        when(mockTransferHistoryUseCase.call(params: '5'))
            .thenAnswer((_) async => Right(transferHistoryEntity));
        return transferBloc;
      },
      act: (bloc) => bloc.add(const RequestTransferHistoryEvent(limit: '5')),
      expect: () => [
        TransferLoading(),
        SuccessTransferHistory(
            dataTransferHistory: transferHistoryEntity.data!.data),
      ],
    );

    blocTest(
      'should emit [TransferLoading, FailedTransfer]',
      build: () {
        when(mockTransferHistoryUseCase.call(params: '5')).thenAnswer(
            (_) async => const Left(ServerFailure('Invalid Request')));
        return transferBloc;
      },
      act: (bloc) => bloc.add(const RequestTransferHistoryEvent(limit: '5')),
      expect: () => [
        TransferLoading(),
        const FailedTransfer(message: 'Invalid Request'),
      ],
    );
  });
}
