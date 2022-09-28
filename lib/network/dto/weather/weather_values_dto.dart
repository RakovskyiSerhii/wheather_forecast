import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_values_dto.freezed.dart';
part 'weather_values_dto.g.dart';

@freezed
class WeatherValuesDto with _$WeatherValuesDto {
  factory WeatherValuesDto({
    required double temperature,
    required double pressureSeaLevel,
    required double visibility,
    required double windDirection,
    required double windGust,
    required double windSpeed,
    required int weatherCode,
    required num humidity,
  }) = _WeatherValuesDto;

  factory WeatherValuesDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherValuesDtoFromJson(json);
}

///               "humidity": 88,
//               "pressureSeaLevel": 1014.81,
//               "rainIntensity": 0,
//               "temperature": 12.13,
//               "visibility": 15.13,
//               "weatherCode": 1000,
//               "windDirection": 305.69,
//               "windGust": 4.19,
//               "windSpeed": 2.63
