import 'package:flutter/material.dart';

import '../mixins/mixins.dart';

class NikuStrutStyle with FontWeightMixin, FontStyleMixin {
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

  set apply(NikuStrutStyle? style) {
    if (style == null) return;

    fontFamily = style.fontFamily ?? fontFamily;
    fontFamilyFallback = style.fontFamilyFallback ?? fontFamilyFallback;
    fontSize = style.fontSize ?? fontSize;
    height = style.height ?? height;
    leadingDistribution = style.leadingDistribution ?? leadingDistribution;
    leading = style.leading ?? leading;
    fontWeight = style.fontWeight ?? fontWeight;
    fontStyle = style.fontStyle ?? fontStyle;
    forceStrutHeight = style.forceStrutHeight ?? forceStrutHeight;
    debugLabel = style.debugLabel ?? debugLabel;
    package = style.package ?? package;
  }

  get value => StrutStyle(
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
  get niku => NikuStrutStyle(
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
