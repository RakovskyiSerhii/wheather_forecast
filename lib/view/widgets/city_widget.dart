import 'package:flutter/material.dart';
import 'package:weather_forecast/model/city_model.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({Key? key, required this.item, required this.callback})
      : super(key: key);
  final CityModel item;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: callback,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Text(_name),
        ),
      ),
    );
  }

  String get _name {
    String builder = item.name;
    if (item.country.isNotEmpty) builder += ', ${item.country}';
    return builder;
  }
}
