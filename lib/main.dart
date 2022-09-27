import 'package:flutter/material.dart';
import 'package:weather_forecast/utils/setup_get_it.dart';
import 'package:weather_forecast/view/weather/weather_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SetupGetIt();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Fixture Calendar',
      home: WeatherView(),
    );
  }
}
