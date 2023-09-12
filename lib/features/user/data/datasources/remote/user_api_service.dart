import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/user/data/data.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class UserRemoteService {
  factory UserRemoteService(Dio dio) = _UserRemoteService;

  @PUT('/users')
  Future<HttpResponse> updateProfileUser({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() Map<String, dynamic>? body,
  });

  @PUT('/wallet')
  Future<HttpResponse> changePinUser({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() Map<String, dynamic>? body,
  });

  @GET('/users')
  Future<HttpResponse<UserModelResponse>> getCurrentUser({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
  });
}
