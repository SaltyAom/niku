import 'dart:ui';

import 'package:flutter/material.dart';

import '../objects/objects.dart';

abstract class MapTextStyleMacro {
  NikuTextStyle? style;

  _init() {
    if (style == null) style = NikuTextStyle();
  }

  set color(Color v) {
    _init();
    style?.color = v;
  }

  set backgroundColor(Color v) {
    _init();
    style?.backgroundColor = v;
  }

  set bg(Color v) {
    _init();
    style?.backgroundColor = v;
  }

  set fontFamily(String v) {
    _init();
    style?.fontFamily = v;
  }

  set fontFamilyFallback(List<String> v) {
    _init();
    style?.fontFamilyFallback = v;
  }

  set fontSize(double v) {
    _init();
    style?.fontSize = v;
  }

  set fontWeight(FontWeight v) {
    _init();
    style?.fontWeight = v;
  }

  void get w100 {
    _init();
    fontWeight = FontWeight.w100;
  }

  void get w200 {
    _init();
    fontWeight = FontWeight.w200;
  }

  void get w300 {
    _init();
    fontWeight = FontWeight.w300;
  }

  void get w400 {
    _init();
    fontWeight = FontWeight.w400;
  }

  void get w500 {
    _init();
    fontWeight = FontWeight.w500;
  }

  void get w600 {
    _init();
    fontWeight = FontWeight.w600;
  }

  void get w700 {
    _init();
    fontWeight = FontWeight.w700;
  }

  void get w800 {
    _init();
    fontWeight = FontWeight.w800;
  }

  void get w900 {
    _init();
    fontWeight = FontWeight.w900;
  }

  void get bold {
    _init();
    fontWeight = FontWeight.bold;
  }

  set fontStyle(FontStyle v) {
    _init();
    style?.fontStyle = v;
  }

  void get italic {
    _init();
    fontStyle = FontStyle.italic;
  }

  set letterSpacing(double v) {
    _init();
    style?.letterSpacing = v;
  }

  set wordSpacing(double v) {
    _init();
    style?.wordSpacing = v;
  }

  set textBaseline(TextBaseline v) {
    _init();
    style?.textBaseline = v;
  }

  set height(double v) {
    _init();
    style?.height = v;
  }

  set leadingDistribution(TextLeadingDistribution v) {
    _init();
    style?.leadingDistribution = v;
  }

  set locale(Locale v) {
    _init();
    style?.locale = v;
  }

  set foreground(Paint v) {
    _init();
    style?.foreground = v;
  }

  set background(Paint v) {
    _init();
    style?.background = v;
  }

  set decoration(TextDecoration v) {
    _init();
    style?.decoration = v;
  }

  void get noDecoration {
    _init();
    style?.decoration = TextDecoration.none;
  }

  void get lineThrough {
    _init();
    style?.decoration = TextDecoration.lineThrough;
  }

  void get aboveline {
    _init();
    style?.decoration = TextDecoration.overline;
  }

  void get underline {
    _init();
    style?.decoration = TextDecoration.underline;
  }

  set decorationColor(Color v) {
    _init();
    style?.decorationColor = v;
  }

  set decorationThickness(double v) {
    _init();
    style?.decorationThickness = v;
  }

  set decorationStyle(TextDecorationStyle v) {
    _init();
    style?.decorationStyle = v;
  }

  void get solid {
    _init();
    style?.decorationStyle = TextDecorationStyle.solid;
  }

  void get doubleLine {
    _init();
    style?.decorationStyle = TextDecorationStyle.double;
  }

  void get dotted {
    _init();
    style?.decorationStyle = TextDecorationStyle.dotted;
  }

  void get dashed {
    _init();
    style?.decorationStyle = TextDecorationStyle.dashed;
  }

  void get wavy {
    _init();
    style?.decorationStyle = TextDecorationStyle.wavy;
  }

  set debugLabel(String v) {
    _init();
    style?.debugLabel = v;
  }

  set shadows(List<Shadow> v) {
    _init();
    style?.shadows = v;
  }

  set fontFeatures(List<FontFeature> v) {
    _init();
    style?.fontFeatures = v;
  }

  set overflow(TextOverflow v) {
    _init();
    style?.overflow = v;
  }

  set package(String v) {
    _init();
    style?.package = v;
  }

  set h1(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.headline1?.asNiku;
    }
  }

  set h2(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.headline2?.asNiku;
    }
  }

  set h3(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.headline3?.asNiku;
    }
  }

  set h4(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.headline4?.asNiku;
    }
  }

  set h5(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.headline5?.asNiku;
    }
  }

  set h6(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.headline6?.asNiku;
    }
  }

  set body1(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.bodyText1?.asNiku;
    }
  }

  set body2(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.bodyText2?.asNiku;
    }
  }

  set subtitle1(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.subtitle1?.asNiku;
    }
  }

  set subtitle2(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.subtitle2?.asNiku;
    }
  }

  set overline(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.overline?.asNiku;
    }
  }

  set button(BuildContext context) {
    {
      _init();
      style?.apply = Theme.of(context).textTheme.button?.asNiku;
    }
  }
}
