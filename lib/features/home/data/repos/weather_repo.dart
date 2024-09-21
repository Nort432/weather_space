import 'package:geolocator/geolocator.dart';
import 'package:weather_space/features/home/data/models/weather_model.dart';

abstract class WeatherRepo {
  Future<WeatherModel> fetchWeather(Position position);
}
