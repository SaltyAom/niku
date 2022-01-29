import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../macros/macros.dart';

// ignore: must_be_immutable
class NikuImage extends StatelessWidget
    with
        NikuBuildMacro,
        UseQueryMacro<NikuImage>,
        ColorBlendModeMacro,
        BoxFitMacro,
        ImageRepeatMacro {
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

  void circleProgress(
    CircularProgressIndicator Function(double? value) builder,
  ) =>
      loadingBuilder = (
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) return child;

        return Center(
          child: builder(
            loadingProgress.expectedTotalBytes != null
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      };

  void linearProgress(
    Widget Function(double? value) builder,
  ) =>
      loadingBuilder = (
        BuildContext context,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) return child;

        return builder(
          loadingProgress.expectedTotalBytes != null
              ? loadingProgress.cumulativeBytesLoaded /
                  loadingProgress.expectedTotalBytes!
              : null,
        );
      };

  set apply(NikuImage? v) {
    if (v == null) return;

    frameBuilder = v.frameBuilder ?? frameBuilder;
    loadingBuilder = v.loadingBuilder ?? loadingBuilder;
    errorBuilder = v.errorBuilder ?? errorBuilder;
    width = v.width ?? width;
    height = v.height ?? height;
    color = v.color ?? color;
    opacity = v.opacity ?? opacity;
    filterQuality = v.filterQuality ?? filterQuality;
    colorBlendMode = v.colorBlendMode ?? colorBlendMode;
    fit = v.fit ?? fit;
    alignment = v.alignment ?? alignment;
    repeat = v.repeat ?? repeat;
    centerSlice = v.centerSlice ?? centerSlice;
    matchTextDirection = v.matchTextDirection ?? matchTextDirection;
    gaplessPlayback = v.gaplessPlayback ?? gaplessPlayback;
    semanticLabel = v.semanticLabel ?? semanticLabel;
    excludeFromSemantics = v.excludeFromSemantics ?? excludeFromSemantics;
    isAntiAlias = v.isAntiAlias ?? isAntiAlias;
  }

  Image get widget => Image(
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
