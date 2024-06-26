import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/auth/data/datasources/datasources.dart';
import 'package:ewallet/features/auth/domain/domain.dart';
import 'package:ewallet/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:ewallet/features/user/domain/entities/user_entities.dart';

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
  Future<Either<Failure, UserEntity>> validationToken(String token) async {
    try {
      final httpResponse = await _authRemoteService.validationToken(
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

  @override
  Future<Either<Failure, String>> requestOTP(String token) async {
    try {
      final httpResponse = await _authRemoteService.requestOTP(
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
      return Right(httpResponse.data.message);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response?.data['message'] ?? e.message));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, String>> verifyOTP(VerifyOTPBody verifyBody) async {
    final token = await _authLocalService.getCredentialToLocal();
    try {
      final httpResponse = await _authRemoteService.verifyOTP(
        token: token,
        contentType: contentType,
        body: verifyBody.toJson(),
      );
      if ((httpResponse.response.statusCode ?? 0) < 200 ||
          (httpResponse.response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
        );
      }
      return Right(httpResponse.data.message);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response?.data['message'] ?? e.message));
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

  @override
  Future<bool> removeCredential() async =>
      await _authLocalService.removeCredential();
}
