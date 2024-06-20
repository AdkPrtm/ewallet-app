import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/product/data/models/model.dart';

part 'dataplans_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class DataPlansRemoteSevice {
  factory DataPlansRemoteSevice(Dio dio) = _DataPlansRemoteSevice;

  @GET('/mobile')
  Future<HttpResponse<DataPlansResponse>> getDataPlan({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Query('limit') required int limit,
    @Query('page') required int page,
  });

  @POST('/mobile')
  Future<HttpResponse<BuyDataPlansResponse>> buyDataPlans({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() required Map<String, dynamic> body,
  });
}
