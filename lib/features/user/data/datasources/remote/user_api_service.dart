import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/user/data/data.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class UserRemoteService {
  factory UserRemoteService(Dio dio) = _UserRemoteService;

  @PUT('/users')
  Future<HttpResponse> updateProfileUser({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() required Map<String, dynamic> body,
  });

  @PUT('/wallet')
  Future<HttpResponse> changePinUser({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() required Map<String, dynamic> body,
  });

  @GET('/user')
  Future<HttpResponse<UserModel>> getCurrentUser({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
  });
}
