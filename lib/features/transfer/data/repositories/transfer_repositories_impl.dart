import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/auth/data/datasources/datasources.dart';
import 'package:ewallet/features/transfer/data/datasources/remote/remote.dart';
import 'package:ewallet/features/transfer/domain/domain.dart';
import 'package:ewallet/features/transfer/domain/entities/user_byusername_entities.dart';

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
      return const Right('Success');
    } on DioException catch (e) {
      return Left(ServerFailure(e.response?.data['message'] ?? e.message));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, TransferHistoryEntity>> transferHistoryRespository(
      GetTransferHistoryQuery query) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _transferRemoteService.transferHistoryService(
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
  Future<Either<Failure, List<UserBySearchingEntity>>> getByUsername(
      String username) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _transferRemoteService.getDataUsername(
        token: token,
        contentType: contentType,
        username: username,
      );
      if ((httpResponse.response.statusCode ?? 0) < 200 ||
          (httpResponse.response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
        );
      }
      List<UserBySearchingEntity> data = httpResponse.data
          .map(
            (user) => UserBySearchingEntity(
                id: user.id,
                firstName: user.firstName,
                lastName: user.lastName,
                username: user.username,
                verified: user.verified,
                profilePicture: user.profilePicture),
          )
          .toList();
      return Right(data);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response?.data['message'] ?? e.message));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
