import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/auth/data/datasources/datasources.dart';
import 'package:template_clean_architecture/features/transfer/data/datasources/remote/remote.dart';
import 'package:template_clean_architecture/features/transfer/domain/entities/transfer_history_entities.dart';
import 'package:template_clean_architecture/features/transfer/domain/repositories/repositories.dart';
import 'package:template_clean_architecture/features/transfer/domain/usecases/transfer_usecase.dart';

class TransferRepositoryImpl extends TransferRepository {
  final TransferRemoteService _transferRemoteService;
  final AuthLocalService _authLocalService;

  TransferRepositoryImpl(this._transferRemoteService, this._authLocalService);
  @override
  Future<Either<Failure, String>> transferRepository(
      TransferParams transferParams) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _transferRemoteService.transferService(
        token: token,
        contentType: contentType,
        body: transferParams.toJson(),
      );
      if ((httpResponse.response.statusCode ?? 0) < 200 ||
          (httpResponse.response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
        );
      }
      return Right(httpResponse.data.message.toString());
    } on DioException catch (e) {
      return Left(ServerFailure(e.response?.data['message'] ?? e.message));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, TransferHistoryEntity>> transferHistoryRespository(
      String limit) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _transferRemoteService.transferHistoryService(
        token: token,
        contentType: contentType,
        limit: limit,
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
