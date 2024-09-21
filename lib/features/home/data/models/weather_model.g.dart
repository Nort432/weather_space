// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      latitude: (json['latitude'] as num?)?.toDouble() ?? 0,
      longitude: (json['longitude'] as num?)?.toDouble() ?? 0,
      generationtimeMs: (json['generationtime_ms'] as num?)?.toDouble() ?? 0,
      utcOffsetSeconds: (json['utc_offset_seconds'] as num?)?.toInt() ?? 0,
      timezone: json['timezone'] as String? ?? '',
      timezoneAbbreviation: json['timezone_abbreviation'] as String? ?? '',
      elevation: (json['elevation'] as num?)?.toInt() ?? 0,
      hourlyUnits: json['hourly_units'] == null
          ? const HourlyUnits()
          : HourlyUnits.fromJson(json['hourly_units'] as Map<String, dynamic>),
      hourly: json['hourly'] == null
          ? const Hourly()
          : Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationtimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'hourly_units': instance.hourlyUnits,
      'hourly': instance.hourly,
    };

Hourly _$HourlyFromJson(Map<String, dynamic> json) => Hourly(
      time:
          (json['time'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      temperature2M: (json['temperature_2m'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      temperature80M: (json['temperature_80m'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [],
      uvIndex: (json['uv_index'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      uvIndexClearSky: (json['uv_index_clear_sky'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2M,
      'temperature_80m': instance.temperature80M,
      'uv_index': instance.uvIndex,
      'uv_index_clear_sky': instance.uvIndexClearSky,
    };

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) => HourlyUnits(
      time: json['time'] as String? ?? '',
      temperature2M: json['temperature2M'] as String? ?? '',
      temperature80M: json['temperature80M'] as String? ?? '',
      uvIndex: json['uvIndex'] as String? ?? '',
      uvIndexClearSky: json['uvIndexClearSky'] as String? ?? '',
    );

Map<String, dynamic> _$HourlyUnitsToJson(HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature2M': instance.temperature2M,
      'temperature80M': instance.temperature80M,
      'uvIndex': instance.uvIndex,
      'uvIndexClearSky': instance.uvIndexClearSky,
    };
