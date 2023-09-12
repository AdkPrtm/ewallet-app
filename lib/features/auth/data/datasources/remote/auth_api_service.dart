import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/core/resource/constant/api_list.dart';
import 'package:template_clean_architecture/features/auth/data/models/models.dart';
import 'package:template_clean_architecture/features/user/data/data.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class AuthRemoteService {
  factory AuthRemoteService(Dio dio) = _AuthRemoteService;

  @POST('/isdataexists')
  Future<HttpResponse<CheckDataResponse>> checkData({
    @Body() Map<String, dynamic>? body,
    @Header("Content-Type") String? contentType,
  });

  @POST('/login')
  Future<HttpResponse<UserModelResponse>> loginUser({
    @Body() Map<String, dynamic>? body,
    @Header("Content-Type") String? contentType,
  });

  @POST('/register')
  Future<HttpResponse<UserModelResponse>> signupUser({
    @Body() Map<String, dynamic>? body,
    @Header("Content-Type") String? contentType,
  });

  @GET('/users')
  Future<HttpResponse<UserModelResponse>> validationToken({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
  });
}
