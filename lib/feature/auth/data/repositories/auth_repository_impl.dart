import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/feature/auth/data/datasources/remote/auth_api_service.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/domain/entities/user_entities.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteService _authRemoteService;

  AuthRepositoryImpl(this._authRemoteService);
  @override
  Future<Either<Failure, UserEntity>> signin(SignInParams signInParams) async {
    try {
      final httpResponse =
          await _authRemoteService.loginUser(body: signInParams.toJson());
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
  Future<Either<Failure, CheckDataEntity>> checkData(
      CheckDataParams checkDataParams) async {
    try {
      print(checkDataParams.toJson());
      final httpResponse =
          await _authRemoteService.checkData(body: checkDataParams.toJson());
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
