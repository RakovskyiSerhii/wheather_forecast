import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/network/dto/autocomplete/autocomplete_properties_dto.dart';

part 'autocomplete_property.freezed.dart';
part 'autocomplete_property.g.dart';

@freezed
class AutocompleteProperty with _$AutocompleteProperty {
  factory AutocompleteProperty({
    required AutocompletePropertiesDto properties,
  }) = _AutocompleteProperty;

  factory AutocompleteProperty.fromJson(Map<String, dynamic> json) =>
      _$AutocompletePropertyFromJson(json);
}
