import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_forecast/network/dto/weather/weather_response_dto.dart';

part 'weather_api.g.dart';

//d57d764d0ae84b1680137153b06539cd
@RestApi(baseUrl: "https://api.tomorrow.io/v4/")
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET(
      "timelines?location={latitude},{longitude}&fields=temperature&fields=weatherCode&units=metric&timesteps=1d&startTime=now&endTime=nowPlus5d&apikey=tiEgqCIRdJmnWhVIK91hrJnHeTtTWkx1")
  Future<WeatherResponseDto> search(
      @Path('latitude') double latitude, @Path('longitude') double longitude);
}

//https://api.tomorrow.io/v4/timelines?location=42.3478%2C%20-71.0466&fields=temperature&fields=weatherCode&units=metric&timesteps=1d&startTime=now&endTime=nowPlus5d&apikey=tiEgqCIRdJmnWhVIK91hrJnHeTtTWkx1
