import 'dart:ui';

import 'package:flutter/material.dart';

import '../objects/objects.dart';

abstract class MapTextStyleMacro {
  NikuTextStyle? style;

  NikuTextStyle get _style => style ??= NikuTextStyle();

  set color(Color v) => _style.color = v;
  set backgroundColor(Color v) => _style.backgroundColor = v;
  set bg(Color v) => _style.backgroundColor = v;
  set fontFamily(String v) => _style.fontFamily = v;
  set fontFamilyFallback(List<String> v) => _style.fontFamilyFallback = v;
  set fontSize(double v) => _style.fontSize = v;
  set fontWeight(FontWeight v) => _style.fontWeight = v;

  void get w100 => fontWeight = FontWeight.w100;
  void get w200 => fontWeight = FontWeight.w200;
  void get w300 => fontWeight = FontWeight.w300;
  void get w400 => fontWeight = FontWeight.w400;
  void get w500 => fontWeight = FontWeight.w500;
  void get w600 => fontWeight = FontWeight.w600;
  void get w700 => fontWeight = FontWeight.w700;
  void get w800 => fontWeight = FontWeight.w800;
  void get w900 => fontWeight = FontWeight.w900;

  set fontStyle(FontStyle v) => _style.fontStyle = v;
  void get bold => fontWeight = FontWeight.bold;
  void get italic => fontStyle = FontStyle.italic;

  set letterSpacing(double v) => _style.letterSpacing = v;
  set wordSpacing(double v) => _style.wordSpacing = v;

  set textBaseline(TextBaseline v) => _style.textBaseline = v;
  set height(double v) => _style.height = v;

  set leadingDistribution(TextLeadingDistribution v) =>
      _style.leadingDistribution = v;

  set locale(Locale v) => _style.locale = v;

  set foreground(Paint v) => _style.foreground = v;
  set background(Paint v) => _style.background = v;

  set decoration(TextDecoration v) => _style.decoration = v;
  void get noDecoration => _style.decoration = TextDecoration.none;
  void get lineThrough => _style.decoration = TextDecoration.lineThrough;
  void get aboveline => _style.decoration = TextDecoration.overline;
  void get underline => _style.decoration = TextDecoration.underline;

  set decorationColor(Color v) => _style.decorationColor = v;
  set decorationThickness(double v) => _style.decorationThickness = v;
  set decorationStyle(TextDecorationStyle v) => _style.decorationStyle = v;

  void get solid => _style.decorationStyle = TextDecorationStyle.solid;
  void get doubleLine => _style.decorationStyle = TextDecorationStyle.double;
  void get dotted => _style.decorationStyle = TextDecorationStyle.dotted;
  void get dashed => _style.decorationStyle = TextDecorationStyle.dashed;
  void get wavy => _style.decorationStyle = TextDecorationStyle.wavy;

  set debugLabel(String v) => _style.debugLabel = v;
  set shadows(List<Shadow> v) => _style.shadows = v;
  set fontFeatures(List<FontFeature> v) => _style.fontFeatures = v;
  set overflow(TextOverflow v) => _style.overflow = v;
  set package(String v) => _style.package = v;

  get h1 => _style.h1;
  get h2 => _style.h2;
  get h3 => _style.h3;
  get h4 => _style.h4;
  get h5 => _style.h5;
  get h6 => _style.h6;
  get body1 => _style.body1;
  get body2 => _style.body2;
  get subtitle1 => _style.subtitle1;
  get subtitle2 => _style.subtitle2;
  get button => _style.button;
  get overline => _style.overline;

  /* Material 3 Addition */
  get displayLarge => _style..displayLarge;
  get displayMedium => _style..displayMedium;
  get displaySmall => _style..displaySmall;
  get titleLarge => _style..titleLarge;
  get titleMedium => _style..titleMedium;
  get titleSmall => _style..titleSmall;
  get bodyLarge => _style..bodyLarge;
  get bodyMedium => _style..bodyMedium;
  get bodySmall => _style..bodySmall;
  get labelLarge => _style..labelLarge;
  get labelMedium => _style..labelMedium;
  get labelSmall => _style..labelSmall;
}
