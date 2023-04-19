/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssestGen {
  const $AssestGen();

  $AssestDBGen get db => const $AssestDBGen();
  $AssestImagesGen get images => const $AssestImagesGen();
}

class $AssestDBGen {
  const $AssestDBGen();

  /// File path: assest/DB/hakity.db
  String get hakity => 'assest/DB/hakity.db';

  /// List of all assets
  List<String> get values => [hakity];
}

class $AssestImagesGen {
  const $AssestImagesGen();

  /// File path: assest/images/Group1.png
  AssetGenImage get group1 => const AssetGenImage('assest/images/Group1.png');

  /// File path: assest/images/Group2.png
  AssetGenImage get group2 => const AssetGenImage('assest/images/Group2.png');

  /// File path: assest/images/backgraond.png
  AssetGenImage get backgraond =>
      const AssetGenImage('assest/images/backgraond.png');

  /// File path: assest/images/boy1.png
  AssetGenImage get boy1 => const AssetGenImage('assest/images/boy1.png');

  /// File path: assest/images/boy2.png
  AssetGenImage get boy2 => const AssetGenImage('assest/images/boy2.png');

  /// File path: assest/images/boy3.png
  AssetGenImage get boy3 => const AssetGenImage('assest/images/boy3.png');

  /// File path: assest/images/boy4.png
  AssetGenImage get boy4 => const AssetGenImage('assest/images/boy4.png');

  /// File path: assest/images/boytest1.png
  AssetGenImage get boytest1 =>
      const AssetGenImage('assest/images/boytest1.png');

  /// File path: assest/images/boytest2.png
  AssetGenImage get boytest2 =>
      const AssetGenImage('assest/images/boytest2.png');

  /// File path: assest/images/emptyStar.png
  AssetGenImage get emptyStar =>
      const AssetGenImage('assest/images/emptyStar.png');

  /// File path: assest/images/girl1.png
  AssetGenImage get girl1 => const AssetGenImage('assest/images/girl1.png');

  /// File path: assest/images/girl2.png
  AssetGenImage get girl2 => const AssetGenImage('assest/images/girl2.png');

  /// File path: assest/images/girl3.png
  AssetGenImage get girl3 => const AssetGenImage('assest/images/girl3.png');

  /// File path: assest/images/girl4.png
  AssetGenImage get girl4 => const AssetGenImage('assest/images/girl4.png');

  /// File path: assest/images/left_arrow.png
  AssetGenImage get leftArrow =>
      const AssetGenImage('assest/images/left_arrow.png');

  /// File path: assest/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assest/images/logo.png');

  /// File path: assest/images/right_arrow.png
  AssetGenImage get rightArrow =>
      const AssetGenImage('assest/images/right_arrow.png');

  /// File path: assest/images/set.png
  AssetGenImage get set => const AssetGenImage('assest/images/set.png');

  /// File path: assest/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assest/images/splash.png');

  /// File path: assest/images/start.png
  AssetGenImage get start => const AssetGenImage('assest/images/start.png');

  /// File path: assest/images/story1.png
  AssetGenImage get story1 => const AssetGenImage('assest/images/story1.png');

  /// File path: assest/images/storyBG.png
  AssetGenImage get storyBG => const AssetGenImage('assest/images/storyBG.png');

  /// File path: assest/images/storypages.png
  AssetGenImage get storypages =>
      const AssetGenImage('assest/images/storypages.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        group1,
        group2,
        backgraond,
        boy1,
        boy2,
        boy3,
        boy4,
        boytest1,
        boytest2,
        emptyStar,
        girl1,
        girl2,
        girl3,
        girl4,
        leftArrow,
        logo,
        rightArrow,
        set,
        splash,
        start,
        story1,
        storyBG,
        storypages
      ];
}

class Assets {
  Assets._();

  static const $AssestGen assest = $AssestGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}