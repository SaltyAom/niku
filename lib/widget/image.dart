import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

// ignore: must_be_immutable
class NikuImage extends StatelessWidget
    with NikuBuildMacro, ColorBlendModeMacro, BoxFitMacro, ImageRepeatMacro {
  ImageProvider image;
  ImageFrameBuilder? frameBuilder;
  ImageLoadingBuilder? loadingBuilder;
  ImageErrorWidgetBuilder? errorBuilder;
  double? width;
  double? height;
  Color? color;
  Animation<double>? opacity;
  FilterQuality? filterQuality;
  BlendMode? colorBlendMode;
  BoxFit? fit;
  AlignmentGeometry? alignment;
  ImageRepeat? repeat;
  Rect? centerSlice;
  bool? matchTextDirection;
  bool? gaplessPlayback;
  String? semanticLabel;
  bool? excludeFromSemantics;
  bool? isAntiAlias;

  NikuImage(
    this.image, {
    Key? key,
    this.frameBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.width,
    this.height,
    this.color,
    this.opacity,
    this.filterQuality,
    this.colorBlendMode,
    this.fit,
    this.alignment,
    this.repeat,
    this.centerSlice,
    this.matchTextDirection,
    this.gaplessPlayback,
    this.semanticLabel,
    this.excludeFromSemantics,
    this.isAntiAlias,
  }) : super(key: key);

  factory NikuImage.network(
    String src, {
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    FilterQuality? filterQuality,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    ImageRepeat? repeat,
    Rect? centerSlice,
    bool? matchTextDirection,
    bool? gaplessPlayback,
    String? semanticLabel,
    bool? excludeFromSemantics,
    bool? isAntiAlias,
    Map<String, String>? headers,
    int? cacheWidth,
    int? cacheHeight,
    double scale = 1,
  }) =>
      NikuImage(
        ResizeImage.resizeIfNeeded(
          cacheWidth,
          cacheHeight,
          NetworkImage(src, scale: scale, headers: headers),
        ),
        key: key,
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        width: width,
        height: height,
        color: color,
        opacity: opacity,
        filterQuality: filterQuality,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        isAntiAlias: isAntiAlias,
      );

  factory NikuImage.file(
    File file, {
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    FilterQuality? filterQuality,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    ImageRepeat? repeat,
    Rect? centerSlice,
    bool? matchTextDirection,
    bool? gaplessPlayback,
    String? semanticLabel,
    bool? excludeFromSemantics,
    bool? isAntiAlias,
    Map<String, String>? headers,
    int? cacheWidth,
    int? cacheHeight,
    double scale = 1,
  }) =>
      NikuImage(
        ResizeImage.resizeIfNeeded(
          cacheWidth,
          cacheHeight,
          FileImage(file, scale: scale),
        ),
        key: key,
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        width: width,
        height: height,
        color: color,
        opacity: opacity,
        filterQuality: filterQuality,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        isAntiAlias: isAntiAlias,
      );

  factory NikuImage.asset(
    String name, {
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    FilterQuality? filterQuality,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    ImageRepeat? repeat,
    Rect? centerSlice,
    bool? matchTextDirection,
    bool? gaplessPlayback,
    String? semanticLabel,
    bool? excludeFromSemantics,
    bool? isAntiAlias,
    Map<String, String>? headers,
    int? cacheWidth,
    int? cacheHeight,
    double? scale,
    String? package,
    AssetBundle? bundle,
  }) =>
      NikuImage(
        ResizeImage.resizeIfNeeded(
          cacheWidth,
          cacheHeight,
          scale != null
              ? ExactAssetImage(name,
                  bundle: bundle, scale: scale, package: package)
              : AssetImage(name, bundle: bundle, package: package),
        ),
        key: key,
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        width: width,
        height: height,
        color: color,
        opacity: opacity,
        filterQuality: filterQuality,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        isAntiAlias: isAntiAlias,
      );

  factory NikuImage.memory(
    Uint8List bytes, {
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    FilterQuality? filterQuality,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    ImageRepeat? repeat,
    Rect? centerSlice,
    bool? matchTextDirection,
    bool? gaplessPlayback,
    String? semanticLabel,
    bool? excludeFromSemantics,
    bool? isAntiAlias,
    Map<String, String>? headers,
    int? cacheWidth,
    int? cacheHeight,
    double scale = 1,
  }) =>
      NikuImage(
        ResizeImage.resizeIfNeeded(
          cacheWidth,
          cacheHeight,
          MemoryImage(bytes, scale: scale),
        ),
        key: key,
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        width: width,
        height: height,
        color: color,
        opacity: opacity,
        filterQuality: filterQuality,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment,
        repeat: repeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection,
        gaplessPlayback: gaplessPlayback,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics,
        isAntiAlias: isAntiAlias,
      );

  void get antiAlias => isAntiAlias = true;

  Color get circleProgress {
    loadingBuilder = (
      BuildContext context,
      Widget child,
      ImageChunkEvent? loadingProgress,
    ) {
      if (loadingProgress == null) return child;

      return Center(
        child: CircularProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
              : null,
        ),
      );
    };

    return Colors.transparent;
  }

  set circleProgress(Color color) => loadingBuilder = (
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) return child;

        return Center(
          child: CircularProgressIndicator(
            color: color,
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      };

  Color get linearProgress {
    loadingBuilder = (
      BuildContext context,
      Widget child,
      ImageChunkEvent? loadingProgress,
    ) {
      if (loadingProgress == null) return child;

      return Align(
        alignment: Alignment.bottomLeft,
        child: LinearProgressIndicator(
          value: loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
              : null,
        ),
      );
    };

    return Colors.transparent;
  }

  set linearProgress(Color color) => loadingBuilder = (
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) return child;

        return Align(
          alignment: Alignment.bottomCenter,
          child: LinearProgressIndicator(
            color: color,
            value: loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      };

  set apply(NikuImage? v) {
    if (v == null) return;

    frameBuilder ??= v.frameBuilder;
    loadingBuilder ??= v.loadingBuilder;
    errorBuilder ??= v.errorBuilder;
    width ??= v.width;
    height ??= v.height;
    color ??= v.color;
    opacity ??= v.opacity;
    filterQuality ??= v.filterQuality;
    colorBlendMode ??= v.colorBlendMode;
    fit ??= v.fit;
    alignment ??= v.alignment;
    repeat ??= v.repeat;
    centerSlice ??= v.centerSlice;
    matchTextDirection ??= v.matchTextDirection;
    gaplessPlayback ??= v.gaplessPlayback;
    semanticLabel ??= v.semanticLabel;
    excludeFromSemantics ??= v.excludeFromSemantics;
    isAntiAlias ??= v.isAntiAlias;
  }

  Image get value => Image(
        image: image,
        frameBuilder: frameBuilder,
        loadingBuilder: loadingBuilder,
        errorBuilder: errorBuilder,
        width: width,
        height: height,
        color: color,
        opacity: opacity,
        filterQuality: filterQuality ?? FilterQuality.low,
        colorBlendMode: colorBlendMode,
        fit: fit,
        alignment: alignment ?? Alignment.center,
        repeat: repeat ?? ImageRepeat.noRepeat,
        centerSlice: centerSlice,
        matchTextDirection: matchTextDirection ?? false,
        gaplessPlayback: gaplessPlayback ?? false,
        semanticLabel: semanticLabel,
        excludeFromSemantics: excludeFromSemantics ?? false,
        isAntiAlias: isAntiAlias ?? false,
      );
}
