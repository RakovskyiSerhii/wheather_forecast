import 'package:weather_forecast/mapper/base_mapper.dart';
import 'package:weather_forecast/model/weather_conditions.dart';
import 'package:weather_forecast/model/weather_model.dart';
import 'package:weather_forecast/model/wind_direction.dart';
import 'package:weather_forecast/network/dto/weather/weather_intervals_dto.dart';
import 'package:weather_forecast/utils/AppDateFormater.dart';

class WeatherMapper extends BaseMapper<WeatherIntervalsDto, WeatherModel>
    with ListMapperMixin {
  @override
  WeatherModel map(WeatherIntervalsDto inModel) {
    final value = inModel.values;
    final date = AppDateFormatter.apiDateFormat.parse(inModel.startTime);
    return WeatherModel(
      date: DateTime(date.year, date.month, date.day),
      originalDate: AppDateFormatter.apiDateFormat.parse(inModel.startTime),
      temperature: value.temperature,
      humidity: value.humidity.toDouble(),
      pressureSeaLevel: value.pressureSeaLevel,
      visibility: value.visibility,
      windDirectionDegree: value.windDirection,
      windGust: value.windGust,
      windSpeed: value.windSpeed,
      windDirectionModel:
          WindDirectionExtension.fromDegrees(value.windDirection),
      weatherConditions:
          WeatherConditionsExtension.fromCode(value.weatherCode.toString()),
    );
  }
}
