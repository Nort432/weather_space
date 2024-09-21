import 'package:geolocator/geolocator.dart';
import 'package:weather_space/features/home/data/models/weather_model.dart';
import 'package:weather_space/features/home/data/services/api_service.dart';
import 'package:weather_space/features/home/data/repos/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo {
  final ApiService apiService;

  WeatherRepoImpl({required this.apiService});

  @override
  Future<WeatherModel> fetchWeather(Position position) {
    return apiService.fetchForecast(
      position.latitude,
      position.longitude,
      1,
      'temperature_2m,temperature_80m,uv_index,uv_index_clear_sky',
    );
  }
  // https://api.open-meteo.com/v1
  // /forecast
  // ?latitude=52.52
  // &longitude=13.41
  // &forecast_days=16
  // &format=flatbuffers
}
