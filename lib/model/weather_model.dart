import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/model/weather_conditions.dart';

part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  factory WeatherModel({
    required DateTime dateTime,
    required double temperature,
    required WeatherConditions weatherConditions,
    required double pressureSeaLevel,
    required double visibility,
    required double windDirection,
    required double windGust,
    required double windSpeed,
    required double humidity,
  }) = _WeatherModel;
}
