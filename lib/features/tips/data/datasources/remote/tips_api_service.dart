import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/tips/data/models/models.dart';

part 'tips_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TipsServiceRemote {
  factory TipsServiceRemote(Dio dio) = _TipsServiceRemote;

  @GET('/tips')
  Future<HttpResponse<TipsResponse>> getTips({
    @Header("Content-Type") String? contentType,
    @Query("limit") required int limit,
    @Query("page") required int page,
  });
}
