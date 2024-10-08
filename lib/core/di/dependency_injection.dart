import 'package:dio/dio.dart';
import 'package:doctor/core/networking/api_service.dart';
import 'package:doctor/core/networking/dio_factory.dart';
import 'package:doctor/features/home/data/apis/home_api_services.dart';
import 'package:doctor/features/home/data/repository/home_repository.dart';
import 'package:doctor/features/home/logic/home_cubit.dart';
import 'package:doctor/features/login/data/repository/login_repository.dart';
import 'package:doctor/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor/features/register/data/repository/register_repository.dart';
import 'package:doctor/features/register/logic/cubit/register_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // dio & api service
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login repository & login cubit
  getIt.registerLazySingleton<LoginRepository>(() => LoginRepository(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // register repository & register cubit
  getIt.registerLazySingleton<RegisterRepository>(
      () => RegisterRepository(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

  // home api service & home cubit & home repository
  getIt.registerLazySingleton<HomeApiServices>(() => HomeApiServices(dio));
  getIt.registerLazySingleton<HomeRepository>(() => HomeRepository(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));
}
