import 'package:weather_forecast/mapper/weather_mapper.dart';
import 'package:weather_forecast/model/weather_model.dart';
import 'package:weather_forecast/network/Repository.dart';

class GetWeatherUseCase {
  final Repository _repository;
  final WeatherMapper _mapper;

  GetWeatherUseCase(this._repository, this._mapper);

  Future<List<WeatherModel>> invoke(double latitude, double longitude) {
    return _repository.getWeatherForLocation(latitude, longitude).then(
        (value) => value.data.timelines.isEmpty
            ? []
            : _mapper.mapList(value.data.timelines.first.intervals));
  }
}
