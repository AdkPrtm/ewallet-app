import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/auth/data/datasources/local/local.dart';
import 'package:ewallet/features/transaction/data/datasources/remote/remote.dart';
import 'package:ewallet/features/transaction/domain/entities/transaction_histories_entity.dart';
import 'package:ewallet/features/transaction/domain/repositories/repositories.dart';
import 'package:ewallet/features/transaction/domain/usecases/get_transactions_history_usecase.dart';

class TransactionRespositoryImpl extends TransactionRepository {
  final TransactionRemoteService _remoteService;
  final AuthLocalService _authLocalService;

  TransactionRespositoryImpl(this._remoteService, this._authLocalService);
  @override
  Future<Either<Failure, TransactionHistoryEntity>> getTransactionHistory(
      GetTransactionHistoryQuery? query) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _remoteService.getTransactionHistory(
        token: token,
        contentType: contentType,
        limit: query?.limit ?? 6,
        page: query?.page ?? 1,
      );
      if ((httpResponse.response.statusCode ?? 0) < 200 ||
          (httpResponse.response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
        );
      }
      return Right(httpResponse.data.toEntity());
    } on DioException catch (e) {
      return Left(ServerFailure(e.response?.data['message'] ?? e.message));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
