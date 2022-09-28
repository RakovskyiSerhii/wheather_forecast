import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_forecast/model/city_model.dart';
import 'package:weather_forecast/use_case/filter_weather_list_to_one_in_day_use_case.dart';
import 'package:weather_forecast/use_case/get_weather_use_case.dart';
import 'package:weather_forecast/view/weather/weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final GetWeatherUseCase _getWeatherUseCase = GetIt.instance.get();
  final FilterWeatherListToOneInDayUseCase _filterWeatherListToOneInDayUseCase =
      GetIt.I.get();

  WeatherCubit()
      : super(WeatherState(
            model: CityModel(
                name: 'Ivano-Frankivsk',
                state: 'Ivano-Frankivsk region',
                country: 'Ukraine',
                latitude: 48.9118072,
                longitude: 24.6453715))) {
    getWeather();
  }

  void updateCity(CityModel cityModel) {
    emit(state.copyWith(model: cityModel));
    getWeather();
  }

  void getWeather() {
    final city = state.model;
    emit(state.copyWith(weatherList: null));
    _getWeatherUseCase.invoke(city.latitude, city.longitude).then((value) =>
        emit(state.copyWith(
            weatherList: _filterWeatherListToOneInDayUseCase.invoke(value))));
  }
}
