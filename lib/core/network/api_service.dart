import 'package:base_project/core/network/api_costants.dart';
import 'package:base_project/features/home/data/models/speciality_model.dart';
import 'package:base_project/features/register/data/models/register_request_body.dart';
import 'package:base_project/features/register/data/models/register_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../features/logIn/data/models/login_request_body.dart';
import '../../features/logIn/data/models/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.specialization)

  Future<SpecialityModel> getSpeciality();

  @POST(ApiConstants.login)
  Future<LoginResponse> login(@Body() LoginRequestBody loginRequestBody);

  @POST(ApiConstants.register)
  Future<RegisterResponse> register(
      @Body() RegisterRequestBody registerRequestBody);
}
