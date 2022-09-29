import 'package:collection/collection.dart';
import 'package:weather_forecast/model/weather_model.dart';

class FilterWeatherListToOneInDayUseCase {
  List<List<WeatherModel>> invoke(List<WeatherModel> list) {
    final newList =
        list.groupListsBy((element) => element.date).values.toList();
    return newList;
  }
}
