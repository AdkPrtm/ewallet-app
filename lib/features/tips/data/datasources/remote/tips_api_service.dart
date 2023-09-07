import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/tips/data/models/models.dart';

part 'tips_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TipsServiceRemote {
  factory TipsServiceRemote(Dio dio) = _TipsServiceRemote;

  @GET('/tips')
  Future<HttpResponse<TipsResponse>> getTips({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
  });
}
