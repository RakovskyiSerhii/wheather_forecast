import 'package:weather_forecast/mapper/base_mapper.dart';
import 'package:weather_forecast/model/city_model.dart';
import 'package:weather_forecast/network/dto/autocomplete/autocomplete_property.dart';

class CityMapper extends BaseMapper<AutocompleteProperty, CityModel>
    with ListMapperMixin {
  @override
  CityModel map(AutocompleteProperty inModel) {
    final properties = inModel.properties;
    return CityModel(
      name: properties.city!,
      state: properties.state ?? '',
      country: properties.country ?? '',
      latitude: properties.lat!,
      longitude: properties.lon!,
    );
  }
}
