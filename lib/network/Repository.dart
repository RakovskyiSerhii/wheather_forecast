import 'package:weather_forecast/network/api/autocomplete_api.dart';
import 'package:weather_forecast/network/api/weather_api.dart';
import 'package:weather_forecast/network/dto/autocomplete/autocomplete_response_dto.dart';
import 'package:weather_forecast/network/dto/weather/weather_response_dto.dart';

class Repository {
  final WeatherApi _weatherApi;
  final AutocompleteApi _autocompleteApi;

  Repository(this._weatherApi, this._autocompleteApi);

  Future<WeatherResponseDto> getWeatherForLocation(
      double latitude, double longitude) {
    return _weatherApi.search(latitude, longitude);
  }

  Future<AutocompleteResponseDto> search(String text) {
    return _autocompleteApi.search(text);
  }
}
