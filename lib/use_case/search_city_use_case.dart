import 'package:weather_forecast/mapper/city_mapper.dart';
import 'package:weather_forecast/model/city_model.dart';
import 'package:weather_forecast/network/Repository.dart';
import 'package:weather_forecast/network/dto/autocomplete/autocomplete_property.dart';

class SearchCityUseCase {
  final Repository _repository;
  final CityMapper _mapper;

  SearchCityUseCase(this._repository, this._mapper);

  Future<List<CityModel>> invoke(String text) {
    return _repository
        .search(text)
        .then((value) => _mapper.mapList(_parseList(value.features)));
  }

  List<AutocompleteProperty> _parseList(List<AutocompleteProperty> list) {
    return list.where((element) {
          final properties = element.properties;
          return properties.lat != null &&
              properties.lon != null &&
              properties.city != null;
        }).toList() ??
        [];
  }
}
