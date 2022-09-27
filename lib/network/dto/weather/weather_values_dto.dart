import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_values_dto.freezed.dart';
part 'weather_values_dto.g.dart';

@freezed
class WeatherValuesDto with _$WeatherValuesDto {
  factory WeatherValuesDto({
    required double temperature,
    required int weatherCode,
  }) = _WeatherValuesDto;

  factory WeatherValuesDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherValuesDtoFromJson(json);
}
