/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_clear.png
  AssetGenImage get icClear => const AssetGenImage('assets/icons/ic_clear.png');

  /// File path: assets/icons/ic_cloudy.png
  AssetGenImage get icCloudy =>
      const AssetGenImage('assets/icons/ic_cloudy.png');

  /// File path: assets/icons/ic_drizzle.png
  AssetGenImage get icDrizzle =>
      const AssetGenImage('assets/icons/ic_drizzle.png');

  /// File path: assets/icons/ic_flurries.png
  AssetGenImage get icFlurries =>
      const AssetGenImage('assets/icons/ic_flurries.png');

  /// File path: assets/icons/ic_fog.png
  AssetGenImage get icFog => const AssetGenImage('assets/icons/ic_fog.png');

  /// File path: assets/icons/ic_freezing_drizzle.png
  AssetGenImage get icFreezingDrizzle =>
      const AssetGenImage('assets/icons/ic_freezing_drizzle.png');

  /// File path: assets/icons/ic_freezing_rain.png
  AssetGenImage get icFreezingRain =>
      const AssetGenImage('assets/icons/ic_freezing_rain.png');

  /// File path: assets/icons/ic_heavy_freezing_rain .png
  AssetGenImage get icHeavyFreezingRain =>
      const AssetGenImage('assets/icons/ic_heavy_freezing_rain .png');

  /// File path: assets/icons/ic_heavy_ice_pellets .png
  AssetGenImage get icHeavyIcePellets =>
      const AssetGenImage('assets/icons/ic_heavy_ice_pellets .png');

  /// File path: assets/icons/ic_heavy_rain.png
  AssetGenImage get icHeavyRain =>
      const AssetGenImage('assets/icons/ic_heavy_rain.png');

  /// File path: assets/icons/ic_heavy_snow.png
  AssetGenImage get icHeavySnow =>
      const AssetGenImage('assets/icons/ic_heavy_snow.png');

  /// File path: assets/icons/ic_ice_pellets .png
  AssetGenImage get icIcePellets =>
      const AssetGenImage('assets/icons/ic_ice_pellets .png');

  /// File path: assets/icons/ic_light_fog.png
  AssetGenImage get icLightFog =>
      const AssetGenImage('assets/icons/ic_light_fog.png');

  /// File path: assets/icons/ic_light_freezing_drizzle .png
  AssetGenImage get icLightFreezingDrizzle =>
      const AssetGenImage('assets/icons/ic_light_freezing_drizzle .png');

  /// File path: assets/icons/ic_light_ice_pellets .png
  AssetGenImage get icLightIcePellets =>
      const AssetGenImage('assets/icons/ic_light_ice_pellets .png');

  /// File path: assets/icons/ic_light_rain.png
  AssetGenImage get icLightRain =>
      const AssetGenImage('assets/icons/ic_light_rain.png');

  /// File path: assets/icons/ic_light_snow.png
  AssetGenImage get icLightSnow =>
      const AssetGenImage('assets/icons/ic_light_snow.png');

  /// File path: assets/icons/ic_mostly_clear.png
  AssetGenImage get icMostlyClear =>
      const AssetGenImage('assets/icons/ic_mostly_clear.png');

  /// File path: assets/icons/ic_mostly_cloady.png
  AssetGenImage get icMostlyCloady =>
      const AssetGenImage('assets/icons/ic_mostly_cloady.png');

  /// File path: assets/icons/ic_partly_cloudy.png
  AssetGenImage get icPartlyCloudy =>
      const AssetGenImage('assets/icons/ic_partly_cloudy.png');

  /// File path: assets/icons/ic_rain.png
  AssetGenImage get icRain => const AssetGenImage('assets/icons/ic_rain.png');

  /// File path: assets/icons/ic_snow.png
  AssetGenImage get icSnow => const AssetGenImage('assets/icons/ic_snow.png');

  /// File path: assets/icons/ic_thunderstorm.png
  AssetGenImage get icThunderstorm =>
      const AssetGenImage('assets/icons/ic_thunderstorm.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
