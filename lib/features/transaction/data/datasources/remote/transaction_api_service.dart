import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/transaction/data/models/models.dart';

part 'transaction_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TransactionRemoteService {
  factory TransactionRemoteService(Dio dio) = _TransactionRemoteService;

  @GET('/transaction')
  Future<HttpResponse<TransactionHistoryResponse>> getTransactionHistory({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Query('limit') required int limit,
    @Query('page') required int page,
  });
}
