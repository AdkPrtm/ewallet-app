import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/transaction/data/models/models.dart';

part 'transaction_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TransactionRemoteService {
  factory TransactionRemoteService(Dio dio) = _TransactionRemoteService;

  @GET('/transactions')
  Future<HttpResponse<TransactionHistoryResponse>> getTransactionHistory({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Query('limit') String? limit,
  });
}
