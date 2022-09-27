import 'package:freezed_annotation/freezed_annotation.dart';

part 'city_model.freezed.dart';

@freezed
class CityModel with _$CityModel {
  factory CityModel({
    required String name,
    required String state,
    required String country,
    required double latitude,
    required double longitude,
  }) = _CityModel;
}
