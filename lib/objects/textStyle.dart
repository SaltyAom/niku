import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import '../macros/macros.dart';

class NikuTextStyle
    with
        BackgroundColorMacro,
        FontStyleMacro,
        FontWeightMacro,
        TextDecorationMacro,
        TextDecorationStyleMacro,
        TextStyleThemeMacro {
  bool inherit;
  Color? color;
  Color? backgroundColor;
  String? fontFamily;
  List<String>? fontFamilyFallback;
  double? fontSize;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  double? letterSpacing;
  double? wordSpacing;
  TextBaseline? textBaseline;
  double? height;
  ui.TextLeadingDistribution? leadingDistribution;
  Locale? locale;
  Paint? foreground;
  Paint? background;
  TextDecoration? decoration;
  Color? decorationColor;
  TextDecorationStyle? decorationStyle;
  double? decorationThickness;
  String? debugLabel;
  List<ui.Shadow>? shadows;
  List<ui.FontFeature>? fontFeatures;
  TextOverflow? overflow;
  String? package;

  NikuTextStyle({
    this.inherit = true,
    this.color,
    this.backgroundColor,
    this.fontFamily,
    this.fontFamilyFallback,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.height,
    this.leadingDistribution,
    this.locale,
    this.foreground,
    this.background,
    this.decoration,
    this.decorationColor,
    this.decorationStyle,
    this.decorationThickness,
    this.debugLabel,
    this.shadows,
    this.fontFeatures,
    this.overflow,
    this.package,
    double? leading,
    bool? forceStrutHeight,
  });

  set apply(NikuTextStyle? v) {
    if (v == null) return;

    inherit = v.inherit || inherit;
    color ??= v.color;
    backgroundColor ??= v.backgroundColor;
    fontFamily ??= v.fontFamily;
    fontFamilyFallback ??= v.fontFamilyFallback;
    fontSize ??= v.fontSize;
    fontWeight ??= v.fontWeight;
    fontStyle ??= v.fontStyle;
    letterSpacing ??= v.letterSpacing;
    wordSpacing ??= v.wordSpacing;
    textBaseline ??= v.textBaseline;
    height ??= v.height;
    leadingDistribution ??= v.leadingDistribution;
    locale ??= v.locale;
    foreground ??= v.foreground;
    background ??= v.background;
    decoration ??= v.decoration;
    decorationColor ??= v.decorationColor;
    decorationStyle ??= v.decorationStyle;
    decorationThickness ??= v.decorationThickness;
    debugLabel ??= v.debugLabel;
    shadows ??= v.shadows;
    fontFeatures ??= v.fontFeatures;
    overflow ??= v.overflow;
  }

  NikuTextStyle get copy => NikuTextStyle(
        inherit: inherit,
        color: color,
        backgroundColor: backgroundColor,
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: height,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        shadows: shadows,
        fontFeatures: fontFeatures,
        overflow: overflow,
        package: package,
      );

  TextStyle get value => TextStyle(
        inherit: inherit,
        color: color,
        backgroundColor: backgroundColor,
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        textBaseline: textBaseline,
        height: height,
        leadingDistribution: leadingDistribution,
        locale: locale,
        foreground: foreground,
        background: background,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        shadows: shadows,
        fontFeatures: fontFeatures,
        overflow: overflow,
        package: package,
      );
}

extension NikuTextStyleTransform on TextStyle {
  NikuTextStyle get asNiku => NikuTextStyle(
        inherit: this.inherit,
        color: this.color,
        backgroundColor: this.backgroundColor,
        fontFamily: this.fontFamily,
        fontFamilyFallback: this.fontFamilyFallback,
        fontSize: this.fontSize,
        fontWeight: this.fontWeight,
        fontStyle: this.fontStyle,
        letterSpacing: this.letterSpacing,
        wordSpacing: this.wordSpacing,
        textBaseline: this.textBaseline,
        height: this.height,
        leadingDistribution: this.leadingDistribution,
        locale: this.locale,
        foreground: this.foreground,
        background: this.background,
        decoration: this.decoration,
        decorationColor: this.decorationColor,
        decorationStyle: this.decorationStyle,
        decorationThickness: this.decorationThickness,
        debugLabel: this.debugLabel,
        shadows: this.shadows,
        fontFeatures: this.fontFeatures,
        overflow: this.overflow,
      );
}
