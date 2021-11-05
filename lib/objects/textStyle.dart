import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import '../mixins/mixins.dart';

class NikuTextStyle
    with
        BackgroundColorMixin,
        FontStyleMixin,
        FontWeightMixin,
        TextDirectionMixin,
        TextStyleThemeMixin {
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

  NikuTextStyle(
      {this.inherit = true,
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
      this.package});

  set apply(NikuTextStyle? style) {
    if (style == null) return;

    inherit = style.inherit || inherit;
    color = style.color ?? color;
    backgroundColor = style.backgroundColor ?? backgroundColor;
    fontFamily = style.fontFamily ?? fontFamily;
    fontFamilyFallback = style.fontFamilyFallback ?? fontFamilyFallback;
    fontSize = style.fontSize ?? fontSize;
    fontWeight = style.fontWeight ?? fontWeight;
    fontStyle = style.fontStyle ?? fontStyle;
    letterSpacing = style.letterSpacing ?? letterSpacing;
    wordSpacing = style.wordSpacing ?? wordSpacing;
    textBaseline = style.textBaseline ?? textBaseline;
    height = style.height ?? height;
    leadingDistribution = style.leadingDistribution ?? leadingDistribution;
    locale = style.locale ?? locale;
    foreground = style.foreground ?? foreground;
    background = style.background ?? background;
    decoration = style.decoration ?? decoration;
    decorationColor = style.decorationColor ?? decorationColor;
    decorationStyle = style.decorationStyle ?? decorationStyle;
    decorationThickness = style.decorationThickness ?? decorationThickness;
    debugLabel = style.debugLabel ?? debugLabel;
    shadows = style.shadows ?? shadows;
    fontFeatures = style.fontFeatures ?? fontFeatures;
    overflow = style.overflow ?? overflow;
  }

  get value => TextStyle(
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
  NikuTextStyle get niku => NikuTextStyle(
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
