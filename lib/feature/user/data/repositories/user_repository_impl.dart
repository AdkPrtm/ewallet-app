import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/feature/auth/data/data.dart';
import 'package:template_clean_architecture/feature/user/data/datasources/remote/remote.dart';
import 'package:template_clean_architecture/feature/user/domain/domain.dart';

class UserRepositoryImpl extends UserRepository {
  final UserRemoteService _userRemoteService;
  final AuthLocalService _authLocalService;

  UserRepositoryImpl(this._userRemoteService, this._authLocalService);

  @override
  Future<Either<Failure, String>> updateUser(
      UpdateProfileUserParams updateProfileUserParams) async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _userRemoteService.updateProfileUser(
          token: token,
          contentType: contentType,
          body: updateProfileUserParams.toJson());

      if ((httpResponse.response.statusCode ?? 0) < 200 ||
          (httpResponse.response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: httpResponse.response.requestOptions,
          response: httpResponse.response,
        );
      }
      return Right(httpResponse.data['message']);
    } on DioException catch (e) {
      return Left(ServerFailure(e.response?.data['message'] ?? e.message));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
