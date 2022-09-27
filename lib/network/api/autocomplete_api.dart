import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_forecast/network/dto/autocomplete/autocomplete_response_dto.dart';

part 'autocomplete_api.g.dart';

//d57d764d0ae84b1680137153b06539cd
@RestApi(baseUrl: "https://api.geoapify.com/v1/geocode/")
abstract class AutocompleteApi {
  factory AutocompleteApi(Dio dio, {String baseUrl}) = _AutocompleteApi;

  @GET("autocomplete?text={text}&apiKey=d57d764d0ae84b1680137153b06539cd")
  Future<AutocompleteResponseDto> search(@Path('text') String text);
}
