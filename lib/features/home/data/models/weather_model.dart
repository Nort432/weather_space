import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  const WeatherModel({
    this.latitude = 0,
    this.longitude = 0,
    this.generationtimeMs = 0,
    this.utcOffsetSeconds = 0,
    this.timezone = '',
    this.timezoneAbbreviation = '',
    this.elevation = 0,
    this.hourlyUnits = const HourlyUnits(),
    this.hourly = const Hourly(),
  });

  final double latitude;
  final double longitude;
  @JsonKey(name: 'generationtime_ms')
  final double generationtimeMs;
  @JsonKey(name: 'utc_offset_seconds')
  final int utcOffsetSeconds;
  final String timezone;
  @JsonKey(name: 'timezone_abbreviation')
  final String timezoneAbbreviation;
  final int elevation;
  @JsonKey(name: 'hourly_units')
  final HourlyUnits hourlyUnits;
  final Hourly hourly;

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable()
class Hourly {
  const Hourly({
    this.time = const [],
    this.temperature2M = const [],
    this.temperature80M = const [],
    this.uvIndex = const [],
    this.uvIndexClearSky = const [],
  });

  final List<String> time;
  @JsonKey(name: 'temperature_2m')
  final List<int> temperature2M;
  @JsonKey(name: 'temperature_80m')
  final List<double> temperature80M;
  @JsonKey(name: 'uv_index')
  final List<int> uvIndex;
  @JsonKey(name: 'uv_index_clear_sky')
  final List<int> uvIndexClearSky;

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyToJson(this);
}

@JsonSerializable()
class HourlyUnits {
  const HourlyUnits({
    this.time = '',
    this.temperature2M = '',
    this.temperature80M = '',
    this.uvIndex = '',
    this.uvIndexClearSky = '',
  });

  final String time;
  @JsonKey(name: 'temperature_2m')
  final String temperature2M;
  @JsonKey(name: 'temperature_80m')
  final String temperature80M;
  @JsonKey(name: 'uv_index')
  final String uvIndex;
  @JsonKey(name: 'uv_index_clear_sky')
  final String uvIndexClearSky;

  factory HourlyUnits.fromJson(Map<String, dynamic> json) => _$HourlyUnitsFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyUnitsToJson(this);
}
