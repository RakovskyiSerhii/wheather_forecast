import 'package:flutter/material.dart';
import 'package:weather_forecast/generated/assets.gen.dart';

enum WeatherConditions {
  unknown,
  clearSunny,
  mostlyClear,
  partlyCloudy,
  mostlyCloudy,
  cloudy,
  fog,
  lightFog,
  drizzle,
  rain,
  lightRain,
  heavyRain,
  snow,
  flurries,
  lightSnow,
  heavySnow,
  freezingDrizzle,
  freezingRain,
  lightFreezingRain,
  heavyFreezingRain,
  icePellets,
  heavyIcePellets,
  lightIcePellets,
  thunderstorm
}

extension WeatherConditionsExtension on WeatherConditions {
  static fromCode(String code) {
    switch (code) {
      case "1000":
        return WeatherConditions.clearSunny;
      case "1100":
        return WeatherConditions.mostlyClear;
      case "1101":
        return WeatherConditions.partlyCloudy;
      case "1102":
        return WeatherConditions.mostlyCloudy;
      case "1001":
        return WeatherConditions.cloudy;
      case "2000":
        return WeatherConditions.fog;
      case "2100":
        return WeatherConditions.lightFog;
      case "4000":
        return WeatherConditions.drizzle;
      case "4001":
        return WeatherConditions.rain;
      case "4200":
        return WeatherConditions.lightRain;
      case "4201":
        return WeatherConditions.heavyRain;
      case "5000":
        return WeatherConditions.snow;
      case "5001":
        return WeatherConditions.flurries;
      case "5100":
        return WeatherConditions.lightSnow;
      case "5101":
        return WeatherConditions.heavySnow;
      case "6000":
        return WeatherConditions.freezingDrizzle;
      case "6001":
        return WeatherConditions.freezingRain;
      case "6200":
        return WeatherConditions.lightFreezingRain;
      case "6201":
        return WeatherConditions.heavyFreezingRain;
      case "7000":
        return WeatherConditions.icePellets;
      case "7101":
        return WeatherConditions.heavyIcePellets;
      case "7102":
        return WeatherConditions.lightIcePellets;
      case "8000":
        return WeatherConditions.thunderstorm;
      default:
        return WeatherConditions.unknown;
    }
  }

  Widget get icon {
    const assets = Assets.icons;
    switch (this) {
      case WeatherConditions.unknown:
        return Icon(Icons.question_mark);
      case WeatherConditions.clearSunny:
        return assets.icClear.image();
      case WeatherConditions.mostlyClear:
        return assets.icMostlyClear.image();
      case WeatherConditions.partlyCloudy:
        return assets.icPartlyCloudy.image();
      case WeatherConditions.mostlyCloudy:
        return assets.icMostlyCloady.image();
      case WeatherConditions.cloudy:
        return assets.icCloudy.image();
      case WeatherConditions.fog:
        return assets.icFog.image();
      case WeatherConditions.lightFog:
        return assets.icLightFog.image();
      case WeatherConditions.drizzle:
        return assets.icDrizzle.image();
      case WeatherConditions.rain:
        return assets.icRain.image();
      case WeatherConditions.lightRain:
        return assets.icLightRain.image();
      case WeatherConditions.heavyRain:
        return assets.icHeavyRain.image();
      case WeatherConditions.snow:
        return assets.icSnow.image();
      case WeatherConditions.flurries:
        return assets.icFlurries.image();
      case WeatherConditions.lightSnow:
        return assets.icLightSnow.image();
      case WeatherConditions.heavySnow:
        return assets.icHeavySnow.image();
      case WeatherConditions.freezingDrizzle:
        return assets.icFreezingDrizzle.image();
      case WeatherConditions.freezingRain:
        return assets.icFreezingRain.image();
      case WeatherConditions.lightFreezingRain:
        return assets.icLightRain.image();
      case WeatherConditions.heavyFreezingRain:
        return assets.icHeavyFreezingRain.image();
      case WeatherConditions.icePellets:
        return assets.icIcePellets.image();
      case WeatherConditions.heavyIcePellets:
        return assets.icHeavyIcePellets.image();
      case WeatherConditions.lightIcePellets:
        return assets.icLightIcePellets.image();
      case WeatherConditions.thunderstorm:
        return assets.icThunderstorm.image();
    }
  }

  String get title {
    switch(this){
      case WeatherConditions.unknown:
        return 'Unknown';
      case WeatherConditions.clearSunny:
        return 'Clear, Sunny, put on a cap';
      case WeatherConditions.mostlyClear:
        return 'Mostly clear';
      case WeatherConditions.partlyCloudy:
        return 'Partly cloudy';
      case WeatherConditions.mostlyCloudy:
        return 'Mostly cloudy';
      case WeatherConditions.cloudy:
        return 'Cloudy';
      case WeatherConditions.fog:
        return 'Fog';
      case WeatherConditions.lightFog:
        return 'Light fog';
      case WeatherConditions.drizzle:
        return 'Drizzle';
      case WeatherConditions.rain:
        return 'Rain, take an umbrella';
      case WeatherConditions.lightRain:
        return 'Light rain, take an umbrella';
      case WeatherConditions.heavyRain:
        return 'Heavy rain, take an umbrella';
      case WeatherConditions.snow:
        return 'Snow, put on felt boots';
      case WeatherConditions.flurries:
        return 'Flurries';
      case WeatherConditions.lightSnow:
        return 'Light snow, put on felt boots';
      case WeatherConditions.heavySnow:
        return 'seavy Snow, put on felt boots';
      case WeatherConditions.freezingDrizzle:
        return 'Freezing drizzle';
      case WeatherConditions.freezingRain:
        return 'OMG';
      case WeatherConditions.lightFreezingRain:
        return 'KURWA';
      case WeatherConditions.heavyFreezingRain:
        return 'PEZDA';
      case WeatherConditions.icePellets:
        return 'Ice pellets, hide';
      case WeatherConditions.heavyIcePellets:
        return 'Heavy ice pellets, тікай з села тобі пезда';
      case WeatherConditions.lightIcePellets:
        return 'Light ice pellets, ти накрив автомобіль, а то поїдеш на СТО';
      case WeatherConditions.thunderstorm:
        return 'Listening Image Dragon - Thunderstorm';
    }
  }
}

//       "0": "Unknown",
//       "1000": "Clear, Sunny",
//       "1100": "Mostly Clear",
//       "1101": "partlyCloudy",
//       "1102": "mostlyCloudy",
//       "1001": "cloudy",
//       "2000": "Fog",
//       "2100": "lightFog",
//       "4000": "Drizzle",
//       "4001": "Rain",
//       "4200": "lightRain",
//       "4201": "heavyRain",
//       "5000": "Snow",
//       "5001": "Flurries",
//       "5100": "Light Snow",
//       "5101": "heavySnow",
//       "6000": "freezingDrizzle",
//       "6001": "freezingRain",
//       "6200": "lightFreezingRain",
//       "6201": "heavyFreezingRain",
//       "7000": "icePellets",
//       "7101": "heavyIcePellets",
//       "7102": "lightIcePellets",
//       "8000": "Thunderstorm"
