import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_forecast/network/dto/autocomplete/autocomplete_property.dart';

part 'autocomplete_response_dto.freezed.dart';
part 'autocomplete_response_dto.g.dart';

@freezed
class AutocompleteResponseDto with _$AutocompleteResponseDto {
  factory AutocompleteResponseDto({
    required List<AutocompleteProperty> features,
  }) = _AutocompleteResponseDto;

  factory AutocompleteResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AutocompleteResponseDtoFromJson(json);
}
