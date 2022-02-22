import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:niku/namespace.dart';

abstract class TextStyleProxy {
  NikuTextStyle? textStyle;

  _init() {
    if (textStyle == null) textStyle = NikuTextStyle();
  }

  set h1(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.headline1?.asNiku;
  }

  set h2(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.headline2?.asNiku;
  }

  set h3(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.headline3?.asNiku;
  }

  set h4(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.headline4?.asNiku;
  }

  set h5(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.headline5?.asNiku;
  }

  set h6(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.headline6?.asNiku;
  }

  set body1(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.bodyText1?.asNiku;
  }

  set body2(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.bodyText2?.asNiku;
  }

  set subtitle1(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.subtitle1?.asNiku;
  }

  set subtitle2(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.subtitle2?.asNiku;
  }

  set overline(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.overline?.asNiku;
  }

  set button(BuildContext context) {
    _init();
    textStyle?.apply = Theme.of(context).textTheme.button?.asNiku;
  }

  set inherit(bool v) {
    _init();
    textStyle?.inherit = v;
  }

  set color(Color? v) {
    _init();
    textStyle?.color = v;
    print(v);
  }

  set backgroundColor(Color? v) {
    _init();
    textStyle?.backgroundColor = v;
  }

  set fontFamily(String? v) {
    _init();
    textStyle?.fontFamily = v;
  }

  set fontFamilyFallback(List<String>? v) {
    _init();
    textStyle?.fontFamilyFallback = v;
  }

  set fontSize(double? v) {
    _init();
    textStyle?.fontSize = v;
  }

  set fontWeight(FontWeight? v) {
    _init();
    textStyle?.fontWeight = v;
  }

  set fontStyle(FontStyle? v) {
    _init();
    textStyle?.fontStyle = v;
  }

  set letterSpacing(double? v) {
    _init();
    textStyle?.letterSpacing = v;
  }

  set wordSpacing(double? v) {
    _init();
    textStyle?.wordSpacing = v;
  }

  set textBaseline(TextBaseline? v) {
    _init();
    textStyle?.textBaseline = v;
  }

  set height(double? v) {
    _init();
    textStyle?.height = v;
  }

  set leadingDistribution(ui.TextLeadingDistribution? v) {
    _init();
    textStyle?.leadingDistribution = v;
  }

  set locale(Locale? v) {
    _init();
    textStyle?.locale = v;
  }

  set foreground(Paint? v) {
    _init();
    textStyle?.foreground = v;
  }

  set background(Paint? v) {
    _init();
    textStyle?.background = v;
  }

  set decoration(TextDecoration? v) {
    _init();
    textStyle?.decoration = v;
  }

  set decorationColor(Color? v) {
    _init();
    textStyle?.decorationColor = v;
  }

  set decorationStyle(TextDecorationStyle? v) {
    _init();
    textStyle?.decorationStyle = v;
  }

  set decorationThickness(double? v) {
    _init();
    textStyle?.decorationThickness = v;
  }

  set debugLabel(String? v) {
    _init();
    textStyle?.debugLabel = v;
  }

  set shadows(List<ui.Shadow>? v) {
    _init();
    textStyle?.shadows = v;
  }

  set fontFeatures(List<ui.FontFeature>? v) {
    _init();
    textStyle?.fontFeatures = v;
  }

  set overflow(TextOverflow? v) {
    _init();
    textStyle?.overflow = v;
  }

  set package(String? v) {
    _init();
    textStyle?.package = v;
  }
}
