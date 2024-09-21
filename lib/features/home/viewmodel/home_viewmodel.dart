import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_space/core/get_it.dart';
import 'package:weather_space/features/home/data/models/weather_model.dart';
import 'package:weather_space/features/home/data/repos/weather_repo.dart';

class HomeViewModel extends ChangeNotifier {
  final WeatherRepo weatherRepository = getIt<WeatherRepo>();
  bool isLoading = false;
  WeatherModel weather = WeatherModel();

  Future<void> fetchWeather(Position position) async {
    isLoading = true;
    notifyListeners();
    weather = await weatherRepository.fetchWeather(position);

    isLoading = false;
    notifyListeners();
  }
}
