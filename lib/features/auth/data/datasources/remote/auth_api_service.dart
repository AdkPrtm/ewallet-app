import 'package:dio/dio.dart';
import 'package:ewallet/features/auth/data/models/verify_otp_response.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/auth/data/models/models.dart';
import 'package:ewallet/features/user/data/data.dart';

part 'auth_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class AuthRemoteService {
  factory AuthRemoteService(Dio dio) = _AuthRemoteService;

  @POST('/auth/isdataexists')
  Future<HttpResponse<CheckDataResponse>> checkData({
    @Body() required Map<String, dynamic> body,
    @Header("Content-Type") String? contentType,
  });

  @POST('/auth/login')
  Future<HttpResponse<UserModel>> loginUser({
    @Body() required Map<String, dynamic> body,
    @Header("Content-Type") String? contentType,
  });

  @POST('/auth/register')
  Future<HttpResponse<UserModel>> signupUser({
    @Body() required Map<String, dynamic> body,
    @Header("Content-Type") String? contentType,
  });

  @POST('/auth/requestotp')
  Future<HttpResponse<RequestOTPResponse>> requestOTP({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
  });

  @POST('/auth/verificationotp')
  Future<HttpResponse<VerifyOTPResponse>> verifyOTP({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() required Map<String, dynamic> body,
  });

  @GET('/user')
  Future<HttpResponse<UserModel>> validationToken({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
  });
}
