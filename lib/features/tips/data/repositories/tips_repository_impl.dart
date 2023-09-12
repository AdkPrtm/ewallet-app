import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:template_clean_architecture/core/error/failure.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/auth/data/data.dart';
import 'package:template_clean_architecture/features/tips/data/datasources/remote/remote.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';
import 'package:template_clean_architecture/features/tips/domain/repositories/repositories.dart';

class TipsRepositoryImpl extends TipsRepository {
  final TipsServiceRemote _tipsServiceRemote;
  final AuthLocalService _authLocalService;

  TipsRepositoryImpl(this._tipsServiceRemote, this._authLocalService);
  @override
  Future<Either<Failure, TipsEntity>> getTips() async {
    try {
      final token = await _authLocalService.getCredentialToLocal();
      final httpResponse = await _tipsServiceRemote.getTips(
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
      return Left(ServerFailure(e.response!.data['message'] ?? e.message));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}
