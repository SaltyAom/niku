import 'dart:ui' as ui;
import 'package:flutter/material.dart';

import 'package:niku/namespace.dart';

abstract class TextStyleProxy {
  NikuTextStyle? style;

  _initText() {
    if (style == null) style = NikuTextStyle();
  }

  set inherit(bool v) {
    _initText();
    style!.inherit = v;
  }

  set color(Color? v) {
    _initText();
    style!.color = v;
  }

  set backgroundColor(Color? v) {
    _initText();
    style!.backgroundColor = v;
  }

  set fontFamily(String? v) {
    _initText();
    style!.fontFamily = v;
  }

  set fontFamilyFallback(List<String>? v) {
    _initText();
    style!.fontFamilyFallback = v;
  }

  set fontSize(double? v) {
    _initText();
    style!.fontSize = v;
  }

  set fontWeight(FontWeight? v) {
    _initText();
    style!.fontWeight = v;
  }

  set fontStyle(FontStyle? v) {
    _initText();
    style!.fontStyle = v;
  }

  set letterSpacing(double? v) {
    _initText();
    style!.letterSpacing = v;
  }

  set wordSpacing(double? v) {
    _initText();
    style!.wordSpacing = v;
  }

  set textBaseline(TextBaseline? v) {
    _initText();
    style!.textBaseline = v;
  }

  set height(double? v) {
    _initText();
    style!.height = v;
  }

  set leadingDistribution(ui.TextLeadingDistribution? v) {
    _initText();
    style!.leadingDistribution = v;
  }

  set locale(Locale? v) {
    _initText();
    style!.locale = v;
  }

  set foreground(Paint? v) {
    _initText();
    style!.foreground = v;
  }

  set textBackground(Paint? v) {
    _initText();
    style!.background = v;
  }

  set textDecoration(TextDecoration? v) {
    _initText();
    style!.decoration = v;
  }

  set decorationColor(Color? v) {
    _initText();
    style!.decorationColor = v;
  }

  set decorationStyle(TextDecorationStyle? v) {
    _initText();
    style!.decorationStyle = v;
  }

  set decorationThickness(double? v) {
    _initText();
    style!.decorationThickness = v;
  }

  set debugLabel(String? v) {
    _initText();
    style!.debugLabel = v;
  }

  set shadows(List<ui.Shadow>? v) {
    _initText();
    style!.shadows = v;
  }

  set fontFeatures(List<ui.FontFeature>? v) {
    _initText();
    style!.fontFeatures = v;
  }

  set overflow(TextOverflow? v) {
    _initText();
    style!.overflow = v;
  }

  set package(String? v) {
    _initText();
    style!.package = v;
  }

  // * backgroundColorMacro
  set textBg(Color color) {
    _initText();
    style!.backgroundColor = color;
  }

  // * fontStyleMacro
  void get italic => fontStyle = FontStyle.italic;

  // * fontWeightMacro
  void get w100 {
    _initText();
    style!.fontWeight = FontWeight.w100;
  }

  void get w200 {
    _initText();
    style!.fontWeight = FontWeight.w200;
  }

  void get w300 {
    _initText();
    style!.fontWeight = FontWeight.w300;
  }

  void get w400 {
    _initText();
    style!.fontWeight = FontWeight.w400;
  }

  void get w500 {
    _initText();
    style!.fontWeight = FontWeight.w500;
  }

  void get w600 {
    _initText();
    style!.fontWeight = FontWeight.w600;
  }

  void get w700 {
    _initText();
    style!.fontWeight = FontWeight.w700;
  }

  void get w800 {
    _initText();
    style!.fontWeight = FontWeight.w800;
  }

  void get w900 {
    _initText();
    style!.fontWeight = FontWeight.w900;
  }

  void get bold {
    _initText();
    style!.fontWeight = FontWeight.bold;
  }

  // * textDecorationMacro
  void get noDecoration {
    _initText();
    style!.decoration = TextDecoration.none;
  }

  void get lineThrough {
    _initText();
    style!.decoration = TextDecoration.lineThrough;
  }

  void get aboveline {
    _initText();
    style!.decoration = TextDecoration.overline;
  }

  void get underline {
    _initText();
    style!.decoration = TextDecoration.underline;
  }

  // * textDecorationStyleMacro
  void get solid {
    _initText();
    style!.decorationStyle = TextDecorationStyle.solid;
  }

  void get dotted {
    _initText();
    style!.decorationStyle = TextDecorationStyle.dotted;
  }

  void get dashed {
    _initText();
    style!.decorationStyle = TextDecorationStyle.dashed;
  }

  void get wavy {
    _initText();
    style!.decorationStyle = TextDecorationStyle.wavy;
  }

  // * textThemeStyleMacro
  set h1(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.headline1?.asNiku;
  }

  set h2(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.headline2?.asNiku;
  }

  set h3(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.headline3?.asNiku;
  }

  set h4(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.headline4?.asNiku;
  }

  set h5(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.headline5?.asNiku;
  }

  set h6(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.headline6?.asNiku;
  }

  set body1(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.bodyText1?.asNiku;
  }

  set body2(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.bodyText2?.asNiku;
  }

  set subtitle1(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.subtitle1?.asNiku;
  }

  set subtitle2(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.subtitle2?.asNiku;
  }

  set overline(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.overline?.asNiku;
  }

  set button(BuildContext context) {
    _initText();
    style!.apply = Theme.of(context).textTheme.button?.asNiku;
  }
}
