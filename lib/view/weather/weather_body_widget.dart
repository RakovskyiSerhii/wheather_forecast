import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_forecast/model/weather_conditions.dart';
import 'package:weather_forecast/model/weather_model.dart';
import 'package:weather_forecast/model/wind_direction.dart';
import 'package:weather_forecast/utils/AppDateFormater.dart';
import 'package:weather_forecast/view/weather/weather_state.dart';

class WeatherBodyWidget extends StatelessWidget {
  const WeatherBodyWidget(
      {Key? key, required this.state, required this.onSearchClick})
      : super(key: key);

  final WeatherState state;
  final VoidCallback onSearchClick;

  @override
  Widget build(BuildContext context) {
    AppDateFormatter.appFormat;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 150, 205, 251),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: state.isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  color: Colors.yellow,
                ))
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      _search(context),
                      SizedBox(height: 24),
                      _date(),
                      SizedBox(height: 32),
                      _temperatureNow(),
                      SizedBox(height: 32),
                      _additionalInformation(),
                      SizedBox(height: 24),
                      SizedBox(
                        child: _buildList(),
                        height: 100,
                      ),
                      _weatherWeek(),
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  Row _search(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildSearchWidget(context),
        Row(
          children: [
            Text(
              state.model.name,
              style: TextStyle(fontSize: 24, color: Colors.black54),
            ),
            Icon(
              Icons.location_on,
              size: 24,
              color: Colors.black54,
            ),
          ],
        )
      ],
    );
  }

  Widget _buildSearchWidget(BuildContext context) {
    return IconButton(
      onPressed: onSearchClick,
      icon: Icon(
        Icons.search,
        size: 32,
        color: Colors.black54,
      ),
    );
  }

  Text _date() {
    return Text(
      '${AppDateFormatter.appFormat.format(state.todayWeather.dateTime)}',
      style: TextStyle(color: Colors.black54, fontSize: 36),
    );
  }

  Column _temperatureNow() {
    return Column(
      children: [
        Text(
          '${state.weatherList!.first.temperature.round()} Cº',
          style: TextStyle(
              color: Colors.black54, fontSize: 54, fontWeight: FontWeight.w600),
        ),
        state.weatherList!.first.weatherConditions.icon,
        Text(
          '${state.weatherList!.first.weatherConditions.title}',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 36,
          ),
        ),
      ],
    );
  }

  Row _additionalInformation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.air,
              color: Colors.black54,
              size: 32,
            ),
            Text(
              '${state.weatherList!.first.windSpeed.round()} m/s'
              
              ,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 24,
              ),
            ),
            Text(
              '${state.weatherList!.first.windDirectionModel.title} ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.opacity,
              color: Colors.black54,
              size: 32,
            ),
            Text(
              '${state.weatherList!.first.humidity.round()}',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 24,
              ),
            ),
            Text(
              '%',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.thermostat,
              color: Colors.black54,
              size: 32,
            ),
            Text(
              '${state.weatherList!.first.pressureSeaLevel.round()}',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 24,
              ),
            ),
            Text(
              'mm Hg Art.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.visibility,
              color: Colors.black54,
              size: 32,
            ),
            Text(
              '${state.weatherList!.first.visibility.round()}',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 24,
              ),
            ),
            Text(
              'Km',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
//
// DateTime date = DateTime.now();

  Widget _buildList() {
    final List<WeatherModel> list = state.weatherList!;
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final item = list[index];
        final title = DateFormat('HH:mm').format(item.dateTime);
        return _weatherDay(
            title, item.temperature.toInt(), item.weatherConditions);
      },
      itemCount: list.length,
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 24,
        );
      },
    );
  }

  Widget _weatherDay(String title, int temp, WeatherConditions conditions) {
    // final d = date;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          //d
          style: TextStyle(color: Colors.black54, fontSize: 16),
        ),
        SizedBox(
          child: conditions.icon,
          width: 50,
          height: 50,
        ),
        Text(
          '${temp} Cº',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Column _weatherWeek() {
    return Column(
      children: [
        ...state.weatherList!
            .map((e) => Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          DateFormat('EE, d MMM').format(e.dateTime),
                          //d
                          style: TextStyle(color: Colors.black54, fontSize: 16),
                        ),
                        SizedBox(
                          child: e.weatherConditions.icon,
                          width: 50,
                          height: 50,
                        ),
                        Text(
                          '${e.temperature.toInt()} Cº',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                  ],
                ))
            .toList(),
      ],
    );
  }
// Widget _buildList1() {
//     final List<WeatherModel> list = state.weatherList!;

// }
}
