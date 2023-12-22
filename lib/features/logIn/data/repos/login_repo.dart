import 'package:base_project/core/network/api_error_handler.dart';
import 'package:base_project/features/logIn/data/models/login_request_body.dart';
import 'package:base_project/features/logIn/data/models/login_response.dart';

import '../../../../core/network/api_result.dart';
import '../../../../core/network/api_service.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
