import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/feature/auth/data/datasources/datasources.dart';
import 'package:template_clean_architecture/feature/auth/domain/domain.dart';
import 'package:template_clean_architecture/feature/user/domain/entities/user_entities.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteService _authRemoteService;
  final AuthLocalService _authLocalService;

  AuthRepositoryImpl(this._authRemoteService, this._authLocalService);
  @override
  Future<Either<Failure, UserEntity>> signin(SignInParams signInParams) async {
    try {
      final httpResponse = await _authRemoteService.loginUser(
        body: signInParams.toJson(),
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

  @override
  Future<Either<Failure, CheckDataEntity>> checkData(
      CheckDataParams checkDataParams) async {
    try {
      final httpResponse = await _authRemoteService.checkData(
        body: checkDataParams.toJson(),
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

  @override
  Future<Either<Failure, UserEntity>> signup(SignUpParams signUpParams) async {
    try {
      final httpResponse = await _authRemoteService.signupUser(
        body: signUpParams.toJson(),
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

  @override
  Future<Either<Failure, UserEntity>> getCurrentUser(String token) async {
    try {
      final httpResponse = await _authRemoteService.getCurrentUser(
        token: token,
        contentType: contentType,
      );
      if (httpResponse.response.statusCode != 200) {
        throw DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
        );
      }
      return Right(httpResponse.data.toEntity());
    } on DioException catch (e) {
      return  Left(ServerFailure(e.response?.data['message'] ?? e.message));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<bool> setCredential(String token) async =>
      await _authLocalService.setCredentialToLocal(token);

  @override
  Future<String> getCredential() async =>
      await _authLocalService.getCredentialToLocal();
}
