import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/network/dto/weather/weather_timeline_data_dto.dart';

part 'weather_response_dto.freezed.dart';
part 'weather_response_dto.g.dart';

@freezed
class WeatherResponseDto with _$WeatherResponseDto {
  factory WeatherResponseDto({
    required WeatherTimelineDataDto data,
  }) = _WeatherResponseDto;

  factory WeatherResponseDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseDtoFromJson(json);
}
