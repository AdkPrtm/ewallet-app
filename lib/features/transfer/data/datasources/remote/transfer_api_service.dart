import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/transfer/data/models/model.dart';

part 'transfer_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TransferRemoteService {
  factory TransferRemoteService(Dio dio) = _TransferRemoteService;

  @POST('/transfer')
  Future<HttpResponse<TransferResponse>> transferService({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() Map<String, dynamic>? body,
  });

  @GET('/transferhistory')
  Future<HttpResponse<TransferHistoryResponse>> transferHistoryService({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Query('limit') String? limit,
  });
}
