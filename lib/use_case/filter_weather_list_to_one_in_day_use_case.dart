import 'package:collection/collection.dart';
import 'package:weather_forecast/model/weather_model.dart';

class FilterWeatherListToOneInDayUseCase {
  List<WeatherModel> invoke(List<WeatherModel> list) {
    final newList = list
        .map((e) {
          return e.copyWith(
              dateTime:
                  DateTime(e.dateTime.year, e.dateTime.month, e.dateTime.day));
        })
        .groupListsBy((element) => element.dateTime)
        .map((key, value) {
          return MapEntry(
              key,
              value.reduce((value, element) =>
                  value.temperature > element.temperature ? value : element));
        })
        .values
        .toList();
    return newList;
  }
}
