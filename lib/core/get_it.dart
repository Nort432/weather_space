import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_space/features/home/data/repos/weather_repo.dart';
import 'package:weather_space/features/home/data/repos/weather_repo_impl.dart';
import 'package:weather_space/features/home/data/services/api_service.dart';
import 'package:weather_space/features/home/data/services/storage_service.dart';
import 'package:weather_space/core/connection_checker.dart';
import 'package:weather_space/features/home/viewmodel/home_viewmodel.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  getIt.registerLazySingleton<WeatherRepo>(() => WeatherRepoImpl(apiService: getIt<ApiService>()));
  getIt.registerLazySingleton<StorageService>(() => StorageService());
  getIt.registerLazySingleton<ConnectionChecker>(() => ConnectionChecker());
  getIt.registerFactory(() => HomeViewModel());
}
