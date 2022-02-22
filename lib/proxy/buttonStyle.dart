import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../objects/objects.dart';

abstract class ButtonStyleProxy {
  NikuButtonStyle? style;

  _initButton() {
    if (style == null) style = NikuButtonStyle();
  }

  set textStyleState(NikuState<NikuTextStyle?>? v) {
    _initButton();
    style?.textStyleState = v;
  }

  set backgroundColorState(NikuState<Color?>? v) {
    _initButton();
    style?.backgroundColorState = v;
  }

  set foregroundColorState(NikuState<Color?>? v) {
    _initButton();
    style?.foregroundColorState = v;
  }

  set overlayColorState(NikuState<Color?>? v) {
    _initButton();
    style?.overlayColorState = v;
  }

  set shadowColorState(NikuState<Color?>? v) {
    _initButton();
    style?.shadowColorState = v;
  }

  set elevationState(NikuState<double?>? v) {
    _initButton();
    style?.elevationState = v;
  }

  set paddingState(NikuState<EdgeInsets?>? v) {
    _initButton();
    style?.paddingState = v;
  }

  set minimumSizeState(NikuState<Size?>? v) {
    _initButton();
    style?.minimumSizeState = v;
  }

  set fixedSizeState(NikuState<Size?>? v) {
    _initButton();
    style?.fixedSizeState = v;
  }

  set maximumSizeState(NikuState<Size?>? v) {
    _initButton();
    style?.maximumSizeState = v;
  }

  set sideState(NikuState<BorderSide?>? v) {
    _initButton();
    style?.sideState = v;
  }

  set shapeState(NikuState<OutlinedBorder?>? v) {
    _initButton();
    style?.shapeState = v;
  }

  set mouseCursorState(NikuState<MouseCursor?>? v) {
    _initButton();
    style?.mouseCursorState = v;
  }

  set visualDensity(VisualDensity? v) {
    _initButton();
    style?.visualDensity = v;
  }

  set tapTargetSize(MaterialTapTargetSize? v) {
    _initButton();
    style?.tapTargetSize = v;
  }

  set animationDuration(Duration? v) {
    _initButton();
    style?.animationDuration = v;
  }

  set enableFeedback(bool? v) {
    _initButton();
    style?.enableFeedback = v;
  }

  set alignment(AlignmentGeometry? v) {
    _initButton();
    style?.alignment = v;
  }

  set splashFactory(InteractiveInkFeatureFactory? v) {
    _initButton();
    style?.splashFactory = v;
  }

  // Shorten
  set backgroundColor(Color color) =>
      backgroundColorState = NikuState.all(color);
  set foregroundColor(Color color) =>
      foregroundColorState = NikuState.all(color);
  set overlayColor(Color color) => overlayColorState = NikuState.all(color);
  set shadowColor(Color color) => shadowColorState = NikuState.all(color);
  set elevation(double elevation) => elevationState = NikuState.all(elevation);
  set padding(EdgeInsets padding) => paddingState = NikuState.all(padding);
  set minimumSize(Size size) => minimumSizeState = NikuState.all(size);
  set maximumSize(Size size) => maximumSizeState = NikuState.all(size);
  set side(BorderSide side) => sideState = NikuState.all(side);
  set shape(OutlinedBorder shape) => shapeState = NikuState.all(shape);
  set mouseCursor(MouseCursor cursor) =>
      mouseCursorState = NikuState.all(cursor);

  void useTextStyle(NikuTextStyle Function(NikuTextStyle) v) {
    _initButton();

    if (style?.textStyleState == null)
      style!.textStyleState = NikuState.all(NikuTextStyle());

    style!.textStyleState!.all!.apply = v(NikuTextStyle());
  }

  set border(BorderSide side) => sideState = NikuState.all(side);

  set bg(Color color) => backgroundColorState = NikuState.all(color);
  set fg(Color color) => foregroundColorState = NikuState.all(color);
  set overlay(Color color) => overlayColorState = NikuState.all(color);
  set splash(Color color) => overlayColorState = NikuState.all(color);

  double get rounded {
    shapeState = NikuState.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(99999)),
    );

    return 99999;
  }

  set rounded(double radius) => shapeState = NikuState.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      );

  // * alignDirectionalMacro
  void get topStart {
    _initButton();
    style!.alignment = AlignmentDirectional.topStart;
  }

  void get topCenter {
    _initButton();
    style!.alignment = AlignmentDirectional.topCenter;
  }

  void get topEnd {
    _initButton();
    style!.alignment = AlignmentDirectional.topEnd;
  }

  void get centerStart {
    _initButton();
    style!.alignment = AlignmentDirectional.centerStart;
  }

  void get center {
    _initButton();
    style!.alignment = AlignmentDirectional.center;
  }

  void get centerEnd {
    _initButton();
    style!.alignment = AlignmentDirectional.centerEnd;
  }

  void get bottomStart {
    _initButton();
    style!.alignment = AlignmentDirectional.bottomStart;
  }

  void get bottomCenter {
    _initButton();
    style!.alignment = AlignmentDirectional.bottomCenter;
  }

  void get bottomEnd {
    _initButton();
    style!.alignment = AlignmentDirectional.bottomEnd;
  }
}

abstract class ButtonStylePaddingProxy {
  NikuButtonStyle? style;

  _initP() {
    if (style == null) style = NikuButtonStyle();
  }

  set p(double padding) {
    _initP();

    style?.paddingState = NikuState.all(EdgeInsets.all(padding));
  }

  set px(double padding) {
    _initP();

    style?.paddingState = NikuState.all(EdgeInsets.only(
      top: style?.paddingState?.all?.top ?? 0,
      bottom: style?.paddingState?.all?.bottom ?? 0,
      left: padding,
      right: padding,
    ));
  }

  set py(double padding) {
    _initP();

    style?.paddingState = NikuState.all(EdgeInsets.only(
      top: padding,
      bottom: padding,
      left: style?.paddingState?.all?.left ?? 0,
      right: style?.paddingState?.all?.right ?? 0,
    ));
  }

  set pt(double padding) {
    _initP();

    style?.paddingState = NikuState.all(EdgeInsets.only(
      top: padding,
      bottom: style?.paddingState?.all?.bottom ?? 0,
      left: style?.paddingState?.all?.left ?? 0,
      right: style?.paddingState?.all?.right ?? 0,
    ));
  }

  set pl(double padding) {
    _initP();

    style?.paddingState = NikuState.all(EdgeInsets.only(
      top: style?.paddingState?.all?.top ?? 0,
      bottom: padding,
      left: style?.paddingState?.all?.left ?? 0,
      right: style?.paddingState?.all?.right ?? 0,
    ));
  }

  set pb(double padding) {
    _initP();

    style?.paddingState = NikuState.all(EdgeInsets.only(
      top: style?.paddingState?.all?.top ?? 0,
      bottom: style?.paddingState?.all?.bottom ?? 0,
      left: padding,
      right: style?.paddingState?.all?.right ?? 0,
    ));
  }

  set pr(double padding) {
    _initP();

    style?.paddingState = NikuState.all(EdgeInsets.only(
      top: style?.paddingState?.all?.top ?? 0,
      bottom: style?.paddingState?.all?.bottom ?? 0,
      left: style?.paddingState?.all?.left ?? 0,
      right: padding,
    ));
  }
}

abstract class ButtonStyleTextStyleProxy {
  NikuButtonStyle? style;

  _initText() {
    if (style == null) style = NikuButtonStyle();

    if (style?.textStyleState == null)
      style!.textStyleState = NikuState.all(NikuTextStyle());
  }

  set inherit(bool v) {
    _initText();
    style!.textStyleState?.all?.inherit = v;
  }

  set color(Color? v) {
    _initText();
    style!.textStyleState?.all?.color = v;
  }

  set backgroundColor(Color? v) {
    _initText();
    style!.textStyleState?.all?.backgroundColor = v;
  }

  set fontFamily(String? v) {
    _initText();
    style!.textStyleState?.all?.fontFamily = v;
  }

  set fontFamilyFallback(List<String>? v) {
    _initText();
    style!.textStyleState?.all?.fontFamilyFallback = v;
  }

  set fontSize(double? v) {
    _initText();
    style!.textStyleState?.all?.fontSize = v;
  }

  set fontWeight(FontWeight? v) {
    _initText();
    style!.textStyleState?.all?.fontWeight = v;
  }

  set fontStyle(FontStyle? v) {
    _initText();
    style!.textStyleState?.all?.fontStyle = v;
  }

  set letterSpacing(double? v) {
    _initText();
    style!.textStyleState?.all?.letterSpacing = v;
  }

  set wordSpacing(double? v) {
    _initText();
    style!.textStyleState?.all?.wordSpacing = v;
  }

  set textBaseline(TextBaseline? v) {
    _initText();
    style!.textStyleState?.all?.textBaseline = v;
  }

  set height(double? v) {
    _initText();
    style!.textStyleState?.all?.height = v;
  }

  set leadingDistribution(ui.TextLeadingDistribution? v) {
    _initText();
    style!.textStyleState?.all?.leadingDistribution = v;
  }

  set locale(Locale? v) {
    _initText();
    style!.textStyleState?.all?.locale = v;
  }

  set foreground(Paint? v) {
    _initText();
    style!.textStyleState?.all?.foreground = v;
  }

  set background(Paint? v) {
    _initText();
    style!.textStyleState?.all?.background = v;
  }

  set decoration(TextDecoration? v) {
    _initText();
    style!.textStyleState?.all?.decoration = v;
  }

  set decorationColor(Color? v) {
    _initText();
    style!.textStyleState?.all?.decorationColor = v;
  }

  set decorationStyle(TextDecorationStyle? v) {
    _initText();
    style!.textStyleState?.all?.decorationStyle = v;
  }

  set decorationThickness(double? v) {
    _initText();
    style!.textStyleState?.all?.decorationThickness = v;
  }

  set debugLabel(String? v) {
    _initText();
    style!.textStyleState?.all?.debugLabel = v;
  }

  set shadows(List<ui.Shadow>? v) {
    _initText();
    style!.textStyleState?.all?.shadows = v;
  }

  set fontFeatures(List<ui.FontFeature>? v) {
    _initText();
    style!.textStyleState?.all?.fontFeatures = v;
  }

  set overflow(TextOverflow? v) {
    _initText();
    style!.textStyleState?.all?.overflow = v;
  }

  set package(String? v) {
    _initText();
    style!.textStyleState?.all?.package = v;
  }

  // * backgroundColorMacro
  set bg(Color color) {
    _initText();
    style!.textStyleState?.all?.backgroundColor = color;
  }

  // * fontStyleMacro
  void get italic => fontStyle = FontStyle.italic;

  // * fontWeightMacro
  void get w100 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w100;
  }

  void get w200 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w200;
  }

  void get w300 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w300;
  }

  void get w400 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w400;
  }

  void get w500 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w500;
  }

  void get w600 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w600;
  }

  void get w700 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w700;
  }

  void get w800 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w800;
  }

  void get w900 {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.w900;
  }

  void get bold {
    _initText();
    style!.textStyleState?.all?.fontWeight = FontWeight.bold;
  }

  // * textDecorationMacro
  void get noDecoration {
    _initText();
    style!.textStyleState?.all?.decoration = TextDecoration.none;
  }

  void get lineThrough {
    _initText();
    style!.textStyleState?.all?.decoration = TextDecoration.lineThrough;
  }

  void get aboveline {
    _initText();
    style!.textStyleState?.all?.decoration = TextDecoration.overline;
  }

  void get underline {
    _initText();
    style!.textStyleState?.all?.decoration = TextDecoration.underline;
  }

  // * textDecorationStyleMacro
  void get solid {
    _initText();
    style!.textStyleState?.all?.decorationStyle = TextDecorationStyle.solid;
  }

  void get dotted {
    _initText();
    style!.textStyleState?.all?.decorationStyle = TextDecorationStyle.dotted;
  }

  void get dashed {
    _initText();
    style!.textStyleState?.all?.decorationStyle = TextDecorationStyle.dashed;
  }

  void get wavy {
    _initText();
    style!.textStyleState?.all?.decorationStyle = TextDecorationStyle.wavy;
  }

  // * textThemeStyleMacro
  set h1(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.headline1?.asNiku;
  }

  set h2(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.headline2?.asNiku;
  }

  set h3(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.headline3?.asNiku;
  }

  set h4(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.headline4?.asNiku;
  }

  set h5(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.headline5?.asNiku;
  }

  set h6(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.headline6?.asNiku;
  }

  set body1(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.bodyText1?.asNiku;
  }

  set body2(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.bodyText2?.asNiku;
  }

  set subtitle1(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.subtitle1?.asNiku;
  }

  set subtitle2(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.subtitle2?.asNiku;
  }

  set overline(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.overline?.asNiku;
  }

  set button(BuildContext context) {
    _initText();
    style!.textStyleState?.all?.apply =
        Theme.of(context).textTheme.button?.asNiku;
  }
}
