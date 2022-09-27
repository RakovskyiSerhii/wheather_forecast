import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete_properties_dto.freezed.dart';
part 'autocomplete_properties_dto.g.dart';

@freezed
class AutocompletePropertiesDto with _$AutocompletePropertiesDto {
  factory AutocompletePropertiesDto({
    required String? city,
    required String? state,
    required String? country,
    required double? lat,
    required double? lon,
  }) = _AutocompletePropertiesDto;

  factory AutocompletePropertiesDto.fromJson(Map<String, dynamic> json) =>
      _$AutocompletePropertiesDtoFromJson(json);
}
