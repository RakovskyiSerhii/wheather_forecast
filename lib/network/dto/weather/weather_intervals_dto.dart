import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/network/dto/weather/weather_values_dto.dart';

part 'weather_intervals_dto.freezed.dart';
part 'weather_intervals_dto.g.dart';

@freezed
class WeatherIntervalsDto with _$WeatherIntervalsDto {
  factory WeatherIntervalsDto({
    required String startTime,
    required WeatherValuesDto values,
  }) = _WeatherIntervalsDto;

  factory WeatherIntervalsDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherIntervalsDtoFromJson(json);
}
