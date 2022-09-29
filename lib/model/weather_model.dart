import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/model/weather_conditions.dart';
import 'package:weather_forecast/model/wind_direction.dart';

part 'weather_model.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  WeatherModel._(); 
  
  factory WeatherModel({
    required DateTime dateTime,
    required double temperature,
    required WeatherConditions weatherConditions,
    required double pressureSeaLevel,
    required double visibility,
    required double windDirectionDegree,
    required double windGust,
    required double windSpeed,
    required double humidity,
    required WindDirection windDirectionModel,
  }) = _WeatherModel;
}
