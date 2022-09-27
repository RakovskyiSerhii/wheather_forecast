import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/view/search_city/search_city.dart';
import 'package:weather_forecast/view/weather/weather_body_widget.dart';
import 'package:weather_forecast/view/weather/weather_cubit.dart';
import 'package:weather_forecast/view/weather/weather_state.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WeatherCubit(),
      child: BlocBuilder<WeatherCubit, WeatherState>(
        builder: (context, state) {
          return WeatherBodyWidget(
              state: state,
              onSearchClick: () {
                SearchCity.show(
                    context, BlocProvider.of<WeatherCubit>(context).updateCity);
              });
        },
      ),
    );
  }
}
