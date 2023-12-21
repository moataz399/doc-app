import 'package:base_project/core/network/api_costants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../features/logIn/data/models/login_request_body.dart';
import '../../features/logIn/data/models/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);
}
