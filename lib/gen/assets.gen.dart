/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/cabbage.png
  AssetGenImage get cabbage => const AssetGenImage('assets/images/cabbage.png');

  /// File path: assets/images/cake.png
  AssetGenImage get cake => const AssetGenImage('assets/images/cake.png');

  /// File path: assets/images/cheeseburger.jpg
  AssetGenImage get cheeseburger =>
      const AssetGenImage('assets/images/cheeseburger.jpg');

  /// File path: assets/images/chicken-leg.png
  AssetGenImage get chickenLeg =>
      const AssetGenImage('assets/images/chicken-leg.png');

  /// File path: assets/images/dimas.jpg
  AssetGenImage get dimas => const AssetGenImage('assets/images/dimas.jpg');

  /// File path: assets/images/drink.png
  AssetGenImage get drink => const AssetGenImage('assets/images/drink.png');

  /// File path: assets/images/fb.svg
  SvgGenImage get fb => const SvgGenImage('assets/images/fb.svg');

  /// File path: assets/images/fresh_vegan.jpg
  AssetGenImage get freshVegan =>
      const AssetGenImage('assets/images/fresh_vegan.jpg');

  /// File path: assets/images/fruit.jpg
  AssetGenImage get fruit => const AssetGenImage('assets/images/fruit.jpg');

  /// File path: assets/images/meat.png
  AssetGenImage get meat => const AssetGenImage('assets/images/meat.png');

  /// File path: assets/images/nachos.png
  AssetGenImage get nachos => const AssetGenImage('assets/images/nachos.png');

  /// File path: assets/images/pizza.jpg
  AssetGenImage get pizza => const AssetGenImage('assets/images/pizza.jpg');

  /// File path: assets/images/salad.jpg
  AssetGenImage get salad => const AssetGenImage('assets/images/salad.jpg');

  /// File path: assets/images/spaghetti_carbonara.png
  AssetGenImage get spaghettiCarbonara =>
      const AssetGenImage('assets/images/spaghetti_carbonara.png');

  /// File path: assets/images/steak.jpg
  AssetGenImage get steak => const AssetGenImage('assets/images/steak.jpg');

  /// File path: assets/images/vanilla_latte.jpg
  AssetGenImage get vanillaLatte =>
      const AssetGenImage('assets/images/vanilla_latte.jpg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
