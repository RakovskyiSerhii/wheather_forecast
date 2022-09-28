import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/model/city_model.dart';
import 'package:weather_forecast/model/weather_model.dart';

part 'weather_state.freezed.dart';

@freezed
class WeatherState with _$WeatherState {
  WeatherState._();
  factory WeatherState({
    List<WeatherModel>? weatherList,
    required CityModel model,
  }) = _WeatherState;

  bool get isLoading => weatherList == null;

  WeatherModel get todayWeather => weatherList!.first;
}
