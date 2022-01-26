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

    fontFamily = v.fontFamily ?? fontFamily;
    fontFamilyFallback = v.fontFamilyFallback ?? fontFamilyFallback;
    fontSize = v.fontSize ?? fontSize;
    height = v.height ?? height;
    leadingDistribution = v.leadingDistribution ?? leadingDistribution;
    leading = v.leading ?? leading;
    fontWeight = v.fontWeight ?? fontWeight;
    fontStyle = v.fontStyle ?? fontStyle;
    forceStrutHeight = v.forceStrutHeight ?? forceStrutHeight;
    debugLabel = v.debugLabel ?? debugLabel;
    package = v.package ?? package;
  }

  NikuStrutStyle get copied => NikuStrutStyle(
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
