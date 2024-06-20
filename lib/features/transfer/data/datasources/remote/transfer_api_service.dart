import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/transfer/data/models/model.dart';
import 'package:ewallet/features/transfer/data/models/searching_byusername_response.dart';

part 'transfer_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TransferRemoteService {
  factory TransferRemoteService(Dio dio) = _TransferRemoteService;

  @POST('/transaction')
  Future<HttpResponse> transferService({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() required Map<String, dynamic> body,
  });

  @GET('/transaction/transfer')
  Future<HttpResponse<TransferHistoryResponse>> transferHistoryService({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Query('limit') required int limit,
    @Query('page') required int page,
  });

  @GET('/user/{username}')
  Future<HttpResponse<List<SearchingByUsernameResponse>>> getDataUsername({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Path("username") String? username,
  });
}
