import 'package:flutter/material.dart';

import '../macros/macros.dart';

class NikuStrutStyle with FontStyleMacro, FontWeightMacro {
  String? fontFamily;
  List<String>? fontFamilyFallback;
  double? fontSize;
  double? height;
  TextLeadingDistribution? leadingDistribution;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  double? leading;
  bool? forceStrutHeight;
  String? debugLabel;
  String? package;

  NikuStrutStyle({
    this.fontFamily,
    this.fontFamilyFallback,
    this.fontSize,
    this.height,
    this.leadingDistribution,
    this.leading,
    this.fontWeight,
    this.fontStyle,
    this.forceStrutHeight,
    this.debugLabel,
    this.package,
  });

  set apply(NikuStrutStyle? v) {
    if (v == null) return;

    fontFamily ??= v.fontFamily;
    fontFamilyFallback ??= v.fontFamilyFallback;
    fontSize ??= v.fontSize;
    height ??= v.height;
    leadingDistribution ??= v.leadingDistribution;
    leading ??= v.leading;
    fontWeight ??= v.fontWeight;
    fontStyle ??= v.fontStyle;
    forceStrutHeight ??= v.forceStrutHeight;
    debugLabel ??= v.debugLabel;
    package ??= v.package;
  }

  NikuStrutStyle get copy => NikuStrutStyle(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize,
        height: height,
        leadingDistribution: leadingDistribution,
        leading: leading,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        forceStrutHeight: forceStrutHeight,
        debugLabel: debugLabel,
        package: package,
      );

  StrutStyle get value => StrutStyle(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize,
        height: height,
        leadingDistribution: leadingDistribution,
        leading: leading,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        forceStrutHeight: forceStrutHeight,
        debugLabel: debugLabel,
        package: package,
      );
}

extension NikuStrutStyleTransform on StrutStyle {
  get asNiku => NikuStrutStyle(
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize,
        height: height,
        leadingDistribution: leadingDistribution,
        leading: leading,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        forceStrutHeight: forceStrutHeight,
        debugLabel: debugLabel,
      );
}
