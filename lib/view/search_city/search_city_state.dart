import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/model/city_model.dart';

part 'search_city_state.freezed.dart';

@freezed
class SearchCityState with _$SearchCityState {
  factory SearchCityState({List<CityModel>? cities}) = _SearchCityState;
}
