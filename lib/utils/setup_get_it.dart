import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:weather_forecast/mapper/city_mapper.dart';
import 'package:weather_forecast/mapper/weather_mapper.dart';
import 'package:weather_forecast/network/Repository.dart';
import 'package:weather_forecast/network/api/autocomplete_api.dart';
import 'package:weather_forecast/network/api/weather_api.dart';
import 'package:weather_forecast/use_case/get_weather_use_case.dart';
import 'package:weather_forecast/use_case/search_city_use_case.dart';

class SetupGetIt {
  final getIt = GetIt.instance;

  SetupGetIt() {
    _initMapper();
    _initNetwork();
    _initUseCase();
  }

  void _initNetwork() {
    final BaseOptions options = BaseOptions();
    final Dio dio = Dio(options)
      ..interceptors.add(PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90));
    getIt.registerSingleton(AutocompleteApi(dio));
    getIt.registerSingleton(WeatherApi(dio));
    getIt.registerSingleton(Repository(getIt.get(), getIt.get()));
  }

  void _initMapper() {
    getIt.registerFactory(() => CityMapper());
    getIt.registerFactory(() => WeatherMapper());
  }

  void _initUseCase() {
    getIt.registerFactory(() => GetWeatherUseCase(getIt.get(), getIt.get()));
    getIt.registerFactory(() => SearchCityUseCase(getIt.get(), getIt.get()));
  }
}
