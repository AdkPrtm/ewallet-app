import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/auth/data/datasources/datasources.dart';
import 'package:template_clean_architecture/features/topup/data/datasources/datasource.dart';
import 'package:template_clean_architecture/features/topup/domain/domain.dart';

class TopUpRepositoryImpl extends TopUpRespository {
  final TopupRemoteService _topupRemoteService;
  final AuthLocalService _authLocalService;
  TopUpRepositoryImpl(this._topupRemoteService, this._authLocalService);

  @override
  Future<Either<Failure, TopUpEntity>> topupRepo(
      TopupParams topupParams) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _topupRemoteService.topup(
        token: token,
        contentType: contentType,
        body: topupParams.toJson(),
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

  @override
  Future<Either<Failure, ResponsePaymentTopupEntity>>
      getPaymentMethodEntity() async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _topupRemoteService.getPaymentMethod(
        token: token,
        contentType: contentType,
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
