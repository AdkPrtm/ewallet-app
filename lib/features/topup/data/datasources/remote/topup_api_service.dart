import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ewallet/core/resource/constant/api_list.dart';
import 'package:ewallet/features/topup/data/models/models.dart';

part 'topup_api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class TopupRemoteService {
  factory TopupRemoteService(Dio dio) = _TopupRemoteService;

  @POST('/topup')
  Future<HttpResponse<TopUpResponse>> topup({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
    @Body() required Map<String, dynamic> body,
  });

  @GET('/topup')
  Future<HttpResponse<List<PaymentMethodTopupResponse>>> getPaymentMethod({
    @Header("Authorization") String? token,
    @Header("Content-Type") String? contentType,
  });
}
