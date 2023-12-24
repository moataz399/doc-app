import 'package:base_project/core/network/api_service.dart';
import 'package:base_project/features/logIn/data/repos/login_repo.dart';
import 'package:base_project/features/logIn/logic/login_cubit.dart';
import 'package:base_project/features/register/data/repos/register_repo.dart';
import 'package:base_project/features/register/logic/register_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../network/dio_factory.dart';

final getIt = GetIt.instance;

Future<void> setUpGetIt() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerLazySingleton<RegisterCubit>(() => RegisterCubit(getIt()));


}
