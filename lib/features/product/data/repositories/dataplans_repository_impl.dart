import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/auth/data/datasources/datasources.dart';
import 'package:ewallet/features/product/data/datasources/datasources.dart';
import 'package:ewallet/features/product/domain/entities/dataplans_entity.dart';
import 'package:ewallet/features/product/domain/repositories/repositories.dart';
import 'package:ewallet/features/product/domain/usecases/buy_dataplans_usecase.dart';
import 'package:ewallet/features/product/domain/usecases/get_dataplans_usecase.dart';

class DataPlansRepositoryImpl extends DataPlansRepository {
  final DataPlansRemoteSevice _dataPlansRemoteSevice;
  final AuthLocalService _authLocalService;

  DataPlansRepositoryImpl(this._dataPlansRemoteSevice, this._authLocalService);

  @override
  Future<Either<Failure, DataPlansEntity>> getDataPlans(GetDataPlansQuery query) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _dataPlansRemoteSevice.getDataPlan(
        token: token,
        contentType: contentType,
        limit: query.limit,
        page: query.page,
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
  Future<Either<Failure, String>> buyDataPlans(
      BuyDataPlansParams buyDataPlansParams) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _dataPlansRemoteSevice.buyDataPlans(
        token: token,
        contentType: contentType,
        body: buyDataPlansParams.toJson(),
      );
      if ((httpResponse.response.statusCode ?? 0) < 200 ||
          (httpResponse.response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
        );
      }
      return Right(httpResponse.data.status.toString());
    } on DioException catch (e) {
      return Left(ServerFailure(e.response?.data['message'] ?? e.message.toString()));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
