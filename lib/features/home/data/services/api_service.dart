import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_space/core/app_api_service.dart';
import 'package:weather_space/features/home/data/models/weather_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: AppApiService.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET("/forecast")
  Future<WeatherModel> fetchForecast(
    @Query("latitude") double latitude,
    @Query("longitude") double longitude,
    // @Query("hourly") String hourly,
    // @Query("daily") String daily,
    @Query("forecast_days") int forecastDays,
    @Query("hourly") String hourly,
  );
}
