import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_forecast/use_case/search_city_use_case.dart';
import 'package:weather_forecast/view/search_city/search_city_state.dart';

class SearchCityCubit extends Cubit<SearchCityState> {
  final SearchCityUseCase _searchCityUseCase = GetIt.I.get();

  SearchCityCubit() : super(SearchCityState());
  Timer? timer;

  void search(String text) {
    timer?.cancel();
    if (text.isEmpty) {
      emit(state.copyWith(cities: []));
      return;
    }
    timer = Timer(Duration(seconds: 1), () {
      _searchCityUseCase
          .invoke(text)
          .then((value) => emit(state.copyWith(cities: value)));
    });
  }

  @override
  Future<void> close() {
    timer?.cancel();
    timer = null;
    return super.close();
  }
}
