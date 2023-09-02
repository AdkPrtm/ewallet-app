import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:template_clean_architecture/feature/auth/data/models/models.dart';
import 'package:template_clean_architecture/feature/user/data/data.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: 'https://andhikawidiarto.my.id/api')
abstract class AuthRemoteService {
  factory AuthRemoteService(Dio dio) = _AuthRemoteService;

  @POST('/isdataexists')
  Future<HttpResponse<CheckDataResponse>> checkData({
    @Body() Map<String, dynamic>? body,
  });

  @POST('/login')
  Future<HttpResponse<UserModel>> loginUser({
    @Body() Map<String, dynamic>? body,
  });

  @POST('/register')
  Future<HttpResponse<UserModel>> signupUser({
    @Body() Map<String, dynamic>? body,
  });

  @GET('/users')
  Future<HttpResponse<UserModel>> getCurrentUser({
    @Header("Authorization") String? token,
  });
}
