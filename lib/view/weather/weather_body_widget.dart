import 'package:flutter/material.dart';
import 'package:weather_forecast/model/weather_conditions.dart';
import 'package:weather_forecast/view/weather/weather_state.dart';

class WeatherBodyWidget extends StatelessWidget {
  const WeatherBodyWidget(
      {Key? key, required this.state, required this.onSearchClick})
      : super(key: key);

  final WeatherState state;
  final VoidCallback onSearchClick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(state.model.name),
            _buildSearchWidget(context),
            if (state.isLoading)
              CircularProgressIndicator()
            else
              Column(
                children: [
                  Text("${state.weatherList!.first.temperature}\n"
                      "${state.weatherList!.first.dateTime}\n"
                      "${state.weatherList!.first.weatherConditions.name}\n"),
                  state.weatherList!.first.weatherConditions.icon
                ],
              )
          ],
        ),
      ),
    );
  }

  Widget _buildSearchWidget(BuildContext context) {
    return ElevatedButton(onPressed: onSearchClick, child: Text('Search'));
  }
}
