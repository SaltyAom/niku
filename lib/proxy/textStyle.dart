import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import 'package:niku/namespace.dart';

abstract class TextStyleProxy {
  NikuTextStyle? style;
  NikuTextStyle get _style => style ??= NikuTextStyle();
  set inherit(bool v) => _style.inherit = v;
  set color(Color? v) => _style.color = v;
  set backgroundColor(Color? v) => _style.backgroundColor = v;
  set fontFamily(String? v) => _style.fontFamily = v;
  set fontFamilyFallback(List<String>? v) => _style.fontFamilyFallback = v;
  set fontSize(double? v) => _style.fontSize = v;
  set fontWeight(FontWeight? v) => _style.fontWeight = v;
  set fontStyle(FontStyle? v) => _style.fontStyle = v;
  set letterSpacing(double? v) => _style.letterSpacing = v;
  set wordSpacing(double? v) => _style.wordSpacing = v;
  set textBaseline(TextBaseline? v) => _style.textBaseline = v;
  set height(double? v) => _style.height = v;
  set leadingDistribution(ui.TextLeadingDistribution? v) =>
      _style.leadingDistribution = v;
  set locale(Locale? v) => _style.locale = v;
  set foreground(Paint? v) => _style.foreground = v;
  set textBackground(Paint? v) => _style.background = v;
  set textDecoration(TextDecoration? v) => _style.decoration = v;
  set decorationColor(Color? v) => _style.decorationColor = v;
  set decorationStyle(TextDecorationStyle? v) => _style.decorationStyle = v;
  set decorationThickness(double? v) => _style.decorationThickness = v;
  set debugLabel(String? v) => _style.debugLabel = v;
  set shadows(List<ui.Shadow>? v) => _style.shadows = v;
  set fontFeatures(List<ui.FontFeature>? v) => _style.fontFeatures = v;
  set overflow(TextOverflow? v) => _style.overflow = v;
  set package(String? v) => _style.package = v;
  set textBg(Color color) => _style.backgroundColor = color;

  void get italic => fontStyle = FontStyle.italic;
  void get w100 => _style.fontWeight = FontWeight.w100;
  void get w200 => _style.fontWeight = FontWeight.w200;
  void get w300 => _style.fontWeight = FontWeight.w300;
  void get w400 => _style.fontWeight = FontWeight.w400;
  void get w500 => _style.fontWeight = FontWeight.w500;
  void get w600 => _style.fontWeight = FontWeight.w600;
  void get w700 => _style.fontWeight = FontWeight.w700;
  void get w800 => _style.fontWeight = FontWeight.w800;
  void get w900 => _style.fontWeight = FontWeight.w900;

  void get bold => _style.fontWeight = FontWeight.bold;
  void get noDecoration => _style.decoration = TextDecoration.none;
  void get lineThrough => _style.decoration = TextDecoration.lineThrough;
  void get aboveline => _style.decoration = TextDecoration.overline;

  void get underlineText => _style.decoration = TextDecoration.underline;
  void get solid => _style.decorationStyle = TextDecorationStyle.solid;
  void get dotted => _style.decorationStyle = TextDecorationStyle.dotted;
  void get dashed => _style.decorationStyle = TextDecorationStyle.dashed;
  void get wavy => _style.decorationStyle = TextDecorationStyle.wavy;

  static TextTheme _theme(BuildContext context) => _theme(context);

  set h1(BuildContext context) =>
      _style.apply = _theme(context).headline1?.asNiku;
  set h2(BuildContext context) =>
      _style.apply = _theme(context).headline2?.asNiku;
  set h3(BuildContext context) =>
      _style.apply = _theme(context).headline3?.asNiku;
  set h4(BuildContext context) =>
      _style.apply = _theme(context).headline4?.asNiku;
  set h5(BuildContext context) =>
      _style.apply = _theme(context).headline5?.asNiku;
  set h6(BuildContext context) =>
      _style.apply = _theme(context).headline6?.asNiku;
  set body1(BuildContext context) =>
      _style.apply = _theme(context).bodyText1?.asNiku;
  set body2(BuildContext context) =>
      _style.apply = _theme(context).bodyText2?.asNiku;
  set subtitle1(BuildContext context) =>
      _style.apply = _theme(context).subtitle1?.asNiku;
  set subtitle2(BuildContext context) =>
      _style.apply = _theme(context).subtitle2?.asNiku;
  set overline(BuildContext context) =>
      _style.apply = _theme(context).overline?.asNiku;
  set button(BuildContext context) =>
      _style.apply = _theme(context).button?.asNiku;

  /* Material 3 addition */
  set displayLarge(BuildContext context) =>
      _style.apply = _theme(context).displayLarge?.asNiku;
  set displayMedium(BuildContext context) =>
      _style.apply = _theme(context).displayMedium?.asNiku;
  set displaySmall(BuildContext context) =>
      _style.apply = _theme(context).displaySmall?.asNiku;
  set titleLarge(BuildContext context) =>
      _style.apply = _theme(context).titleLarge?.asNiku;
  set titleMedium(BuildContext context) =>
      _style.apply = _theme(context).titleMedium?.asNiku;
  set titleSmall(BuildContext context) =>
      _style.apply = _theme(context).titleSmall?.asNiku;
  set bodyLarge(BuildContext context) =>
      _style.apply = _theme(context).bodyLarge?.asNiku;
  set bodyMedium(BuildContext context) =>
      _style.apply = _theme(context).bodyMedium?.asNiku;
  set bodySmall(BuildContext context) =>
      _style.apply = _theme(context).bodySmall?.asNiku;
  set labelLarge(BuildContext context) =>
      _style.apply = _theme(context).labelLarge?.asNiku;
  set labelMedium(BuildContext context) =>
      _style.apply = _theme(context).labelMedium?.asNiku;
  set labelSmall(BuildContext context) =>
      _style.apply = _theme(context).labelSmall?.asNiku;
}
