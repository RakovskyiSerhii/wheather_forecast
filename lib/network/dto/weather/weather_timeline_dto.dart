import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/network/dto/weather/weather_intervals_dto.dart';

part 'weather_timeline_dto.freezed.dart';
part 'weather_timeline_dto.g.dart';

@freezed
class WeatherTimelineDto with _$WeatherTimelineDto {
  factory WeatherTimelineDto({
    required List<WeatherIntervalsDto> intervals,
  }) = _WeatherTimelineDto;

  factory WeatherTimelineDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherTimelineDtoFromJson(json);
}
