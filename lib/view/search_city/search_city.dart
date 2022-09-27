import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/model/city_model.dart';
import 'package:weather_forecast/view/search_city/search_city_cubit.dart';
import 'package:weather_forecast/view/search_city/search_city_state.dart';
import 'package:weather_forecast/view/widgets/city_widget.dart';

typedef OnCitySelected = Function(CityModel cityModel);

class SearchCity extends StatelessWidget {
  const SearchCity({Key? key, required this.onCitySelected}) : super(key: key);
  final OnCitySelected onCitySelected;

  static Future show(BuildContext context, OnCitySelected onCitySelected) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => SearchCity(onCitySelected: onCitySelected),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCityCubit(),
      child: BlocBuilder<SearchCityCubit, SearchCityState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
            height: MediaQuery.of(context).size.height * .85,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(hintText: "Search"),
                    onChanged: (text) {
                      BlocProvider.of<SearchCityCubit>(context).search(text);
                    },
                  ),
                ),
                if (state.cities?.isNotEmpty == true)
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return CityWidget(
                            item: state.cities![index],
                            callback: () {
                              Navigator.pop(context);
                              onCitySelected(state.cities![index]);
                            });
                      },
                      separatorBuilder: (context, index) => Container(
                        height: 1,
                        width: double.infinity,
                        color: Colors.grey.shade400,
                      ),
                      itemCount: state.cities!.length,
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }
}
