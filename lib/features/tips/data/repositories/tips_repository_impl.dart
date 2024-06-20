import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ewallet/core/error/failure.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/tips/data/datasources/remote/remote.dart';
import 'package:ewallet/features/tips/domain/domain.dart';
import 'package:ewallet/features/tips/domain/entities/tips_entities.dart';

class TipsRepositoryImpl extends TipsRepository {
  final TipsServiceRemote _tipsServiceRemote;

  TipsRepositoryImpl(this._tipsServiceRemote);
  @override
  Future<Either<Failure, TipsResponseEntity>> getTips(
      GetTipsQuery query) async {
    try {
      final httpResponse = await _tipsServiceRemote.getTips(
        limit: query.limit ?? 6,
        page: query.page ?? 1,
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
