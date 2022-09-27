import 'package:weather_forecast/mapper/base_mapper.dart';
import 'package:weather_forecast/model/weather_conditions.dart';
import 'package:weather_forecast/model/weather_model.dart';
import 'package:weather_forecast/network/dto/weather/weather_intervals_dto.dart';
import 'package:weather_forecast/utils/AppDateFormater.dart';

class WeatherMapper extends BaseMapper<WeatherIntervalsDto, WeatherModel>
    with ListMapperMixin {
  @override
  WeatherModel map(WeatherIntervalsDto inModel) {
    final value = inModel.values;
    return WeatherModel(
      dateTime: AppDateFormatter.apiDateFormat.parse(inModel.startTime),
      temperature: value.temperature,
      weatherConditions:
          WeatherConditionsExtension.fromCode(value.weatherCode.toString()),
    );
  }
}
