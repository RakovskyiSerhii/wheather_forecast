import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/network/dto/weather/weather_timeline_dto.dart';

part 'weather_timeline_data_dto.freezed.dart';
part 'weather_timeline_data_dto.g.dart';

@freezed
class WeatherTimelineDataDto with _$WeatherTimelineDataDto {
  factory WeatherTimelineDataDto({
    required List<WeatherTimelineDto> timelines,
  }) = _WeatherTimelineDataDto;

  factory WeatherTimelineDataDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherTimelineDataDtoFromJson(json);
}
