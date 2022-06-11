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
    color = v.color ?? color;
    backgroundColor = v.backgroundColor ?? backgroundColor;
    fontFamily = v.fontFamily ?? fontFamily;
    fontFamilyFallback = v.fontFamilyFallback ?? fontFamilyFallback;
    fontSize = v.fontSize ?? fontSize;
    fontWeight = v.fontWeight ?? fontWeight;
    fontStyle = v.fontStyle ?? fontStyle;
    letterSpacing = v.letterSpacing ?? letterSpacing;
    wordSpacing = v.wordSpacing ?? wordSpacing;
    textBaseline = v.textBaseline ?? textBaseline;
    height = v.height ?? height;
    leadingDistribution = v.leadingDistribution ?? leadingDistribution;
    locale = v.locale ?? locale;
    foreground = v.foreground ?? foreground;
    background = v.background ?? background;
    decoration = v.decoration ?? decoration;
    decorationColor = v.decorationColor ?? decorationColor;
    decorationStyle = v.decorationStyle ?? decorationStyle;
    decorationThickness = v.decorationThickness ?? decorationThickness;
    debugLabel = v.debugLabel ?? debugLabel;
    shadows = v.shadows ?? shadows;
    fontFeatures = v.fontFeatures ?? fontFeatures;
    overflow = v.overflow ?? overflow;
  }

  NikuTextStyle get copied => NikuTextStyle(
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
