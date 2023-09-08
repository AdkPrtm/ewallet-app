import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/product/data/models/model.dart';

part 'dataplans_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class DataPlansRemoteSevice {
  factory DataPlansRemoteSevice(Dio dio) = _DataPlansRemoteSevice;

  @GET('/operatorlist')
  Future<HttpResponse<DataPlansResponse>> getDataPlan({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Query('limit') String? limit,
  });

  @POST('/dataplans')
  Future<HttpResponse<BuyDataPlansResponse>> buyDataPlans({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() Map<String, dynamic>? body,
  });
}
