import 'package:dio/dio.dart';

import '../utils/constants.dart';


class DioHelper {
  static Dio? dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseURL,
        receiveDataWhenStatusError: true,
        receiveTimeout: const Duration(
          seconds: 20 * 100,
        ),
        connectTimeout: const Duration(
          seconds: 20 * 100,
        ),
      ),
    );
  }

  static Future<Response> getData(
      {required String url, Map<String, dynamic>? query, String? token}) async {
    dio!.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': token ?? "",
      'lang': 'en',
    };
    return await dio!.get(url, queryParameters: query);
  }




  static Future<Response> postData({required String url, required Map<String, dynamic>? data, Map<String, dynamic>? query, String lang = 'ar', String? token,}) async {


    dio!.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'authorization': token,
    };
    return await dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }
}
