import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:niku/niku.dart';

extension ButtonStyleProxy on NikuButton {
  NikuButtonStyle get _style => style ??= NikuButtonStyle();

  set textStyleState(NikuState<NikuTextStyle?>? v) => _style.textStyleState = v;

  set backgroundColorState(NikuState<Color?>? v) =>
      _style.backgroundColorState = v;
  set foregroundColorState(NikuState<Color?>? v) =>
      _style.foregroundColorState = v;
  set overlayColorState(NikuState<Color?>? v) => _style.overlayColorState = v;
  set shadowColorState(NikuState<Color?>? v) => _style.shadowColorState = v;
  set elevationState(NikuState<double?>? v) => _style.elevationState = v;
  set paddingState(NikuState<EdgeInsets?>? v) => _style.paddingState = v;
  set minimumSizeState(NikuState<Size?>? v) => _style.minimumSizeState = v;
  set fixedSizeState(NikuState<Size?>? v) => _style.fixedSizeState = v;
  set maximumSizeState(NikuState<Size?>? v) => _style.maximumSizeState = v;
  set sideState(NikuState<BorderSide?>? v) => _style.sideState = v;
  set shapeState(NikuState<OutlinedBorder?>? v) => _style.shapeState = v;
  set mouseCursorState(NikuState<MouseCursor?>? v) =>
      _style.mouseCursorState = v;
  set visualDensity(VisualDensity? v) => _style.visualDensity = v;
  set tapTargetSize(MaterialTapTargetSize? v) => _style.tapTargetSize = v;
  set animationDuration(Duration? v) => _style.animationDuration = v;
  set enableFeedback(bool? v) => _style.enableFeedback = v;
  set alignment(AlignmentGeometry? v) => _style.alignment = v;
  set splashFactory(InteractiveInkFeatureFactory? v) =>
      _style.splashFactory = v;

  // get sparkle => _style.splashFactory = InkSparkle.splashFactory;
  // get m2Splash => _style.splashFactory = InkSplash.splashFactory;
  // get m3Splash => _style.splashFactory = InkSparkle.splashFactory;

  // Shorten
  set backgroundColor(Color color) => _style.backgroundColor = color;
  set foregroundColor(Color color) => _style.foregroundColor = color;
  set overlayColor(Color color) => _style.overlayColor = color;
  set shadowColor(Color color) => _style.shadowColor = color;
  set padding(EdgeInsets v) => _style.padding = v;
  set elevation(double v) => _style.elevation = v;
  set maximumSize(Size v) => _style.maximumSize = v;
  set minimumSize(Size v) => _style.minimumSize = v;
  set maxSize(Size v) => _style.maximumSize = v;
  set minSize(Size v) => _style.minimumSize = v;
  set border(BorderSide v) => _style.border = v;
  set shape(OutlinedBorder v) => _style.shape = v;
  set mouseCursor(MouseCursor v) => _style.mouseCursor = v;

  set p(double v) => _style.p = v;
  set px(double v) => _style.px = v;
  set py(double v) => _style.py = v;
  set pt(double v) => _style.pt = v;
  set pl(double v) => _style.pl = v;
  set pb(double v) => _style.pb = v;
  set pr(double v) => _style.pr = v;

  void useBg({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
  }) =>
      _style.useBg(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useFg({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
  }) =>
      _style.useFg(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
  }) =>
      _style.useColor(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useOverlayColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
  }) =>
      _style.useOverlayColor(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useSplash({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
  }) =>
      _style.useSplash(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useShadowColor({
    Color? base,
    Color? disabled,
    Color? dragged,
    Color? error,
    Color? focused,
    Color? hovered,
    Color? pressed,
    Color? scrolledUnder,
    Color? selected,
  }) =>
      _style.useShadowColor(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useElevation({
    double? base,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
  }) =>
      _style.useElevation(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void usePadding({
    EdgeInsets? base,
    EdgeInsets? disabled,
    EdgeInsets? dragged,
    EdgeInsets? error,
    EdgeInsets? focused,
    EdgeInsets? hovered,
    EdgeInsets? pressed,
    EdgeInsets? scrolledUnder,
    EdgeInsets? selected,
  }) =>
      _style.usePadding(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useP({
    double? base,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
  }) =>
      _style.useP(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useMinimumSize({
    Size? base,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
  }) =>
      _style.useMinimumSize(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useMinSize({
    Size? base,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
  }) =>
      _style.useMinSize(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useMaximumSize({
    Size? base,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
  }) =>
      _style.useMaximumSize(
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  void useMaxSize({
    Size? base,
    Size? disabled,
    Size? dragged,
    Size? error,
    Size? focused,
    Size? hovered,
    Size? pressed,
    Size? scrolledUnder,
    Size? selected,
  }) =>
      _style.useMaxSize(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useSide({
    BorderSide? base,
    BorderSide? disabled,
    BorderSide? dragged,
    BorderSide? error,
    BorderSide? focused,
    BorderSide? hovered,
    BorderSide? pressed,
    BorderSide? scrolledUnder,
    BorderSide? selected,
  }) =>
      _style.useSide(
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  void useShape({
    OutlinedBorder? base,
    OutlinedBorder? disabled,
    OutlinedBorder? dragged,
    OutlinedBorder? error,
    OutlinedBorder? focused,
    OutlinedBorder? hovered,
    OutlinedBorder? pressed,
    OutlinedBorder? scrolledUnder,
    OutlinedBorder? selected,
  }) =>
      _style.useShape(
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  void useRounded({
    double base = 0,
    double? disabled,
    double? dragged,
    double? error,
    double? focused,
    double? hovered,
    double? pressed,
    double? scrolledUnder,
    double? selected,
  }) =>
      _style.useRounded(
        base: base,
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
      );

  void useCursor({
    MouseCursor? base,
    MouseCursor? disabled,
    MouseCursor? dragged,
    MouseCursor? error,
    MouseCursor? focused,
    MouseCursor? hovered,
    MouseCursor? pressed,
    MouseCursor? scrolledUnder,
    MouseCursor? selected,
  }) =>
      _style.useCursor(
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  void useTextStyle({
    NikuTextStyle Function(NikuTextStyle)? base,
    NikuTextStyle Function(NikuTextStyle)? disabled,
    NikuTextStyle Function(NikuTextStyle)? dragged,
    NikuTextStyle Function(NikuTextStyle)? error,
    NikuTextStyle Function(NikuTextStyle)? focused,
    NikuTextStyle Function(NikuTextStyle)? hovered,
    NikuTextStyle Function(NikuTextStyle)? pressed,
    NikuTextStyle Function(NikuTextStyle)? scrolledUnder,
    NikuTextStyle Function(NikuTextStyle)? selected,
  }) =>
      _style.useTextStyle(
        disabled: disabled,
        dragged: dragged,
        error: error,
        focused: focused,
        hovered: hovered,
        pressed: pressed,
        scrolledUnder: scrolledUnder,
        selected: selected,
        base: base,
      );

  void useNikuTextStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      _style.useNikuTextStyle(v);

  set bg(Color color) => _style.bg = color;
  set fg(Color color) => _style.fg = color;
  set overlay(Color color) => _style.overlay = color;
  set splash(Color color) => _style.splash = color;

  double get rounded => _style.rounded;
  set rounded(double radius) => _style.rounded = radius;

  // * alignDirectionalMacro
  void get topStart => _style.topStart;
  void get topCenter => _style.topCenter;
  void get topEnd => _style.topEnd;
  void get centerStart => _style.centerStart;
  void get center => _style.center;
  void get centerEnd => _style.centerEnd;
  void get bottomStart => _style.bottomStart;
  void get bottomCenter => _style.bottomCenter;
  void get bottomEnd => _style.bottomEnd;
}

abstract class ButtonStyleTextStyleProxy {
  NikuButtonStyle? style;
  NikuButtonStyle get _style => style ??= NikuButtonStyle();
  NikuState<NikuTextStyle?> get _text =>
      _style.textStyleState ??= NikuState.all(NikuTextStyle());
  NikuTextStyle get _all => _text.all ??= NikuTextStyle();

  set inherit(bool v) => _all.inherit = v;
  set color(Color? v) => _all.color = v;
  set backgroundColor(Color? v) => _all.backgroundColor = v;
  set fontFamily(String? v) => _all.fontFamily = v;
  set fontFamilyFallback(List<String>? v) => _all.fontFamilyFallback = v;
  set fontSize(double? v) => _all.fontSize = v;
  set fontWeight(FontWeight? v) => _all.fontWeight = v;
  set fontStyle(FontStyle? v) => _all.fontStyle = v;
  set letterSpacing(double? v) => _all.letterSpacing = v;
  set wordSpacing(double? v) => _all.wordSpacing = v;
  set textBaseline(TextBaseline? v) => _all.textBaseline = v;
  set height(double? v) => _all.height = v;

  set locale(Locale? v) => _all.locale = v;
  set leadingDistribution(ui.TextLeadingDistribution? v) =>
      _all.leadingDistribution = v;

  set foreground(Paint? v) => _all.foreground = v;
  set background(Paint? v) => _all.background = v;

  set decoration(TextDecoration? v) => _all.decoration = v;
  set decorationColor(Color? v) => _all.decorationColor = v;
  set decorationStyle(TextDecorationStyle? v) => _all.decorationStyle = v;
  set decorationThickness(double? v) => _all.decorationThickness = v;

  set debugLabel(String? v) => _all.debugLabel = v;
  set shadows(List<ui.Shadow>? v) => _all.shadows = v;
  set fontFeatures(List<ui.FontFeature>? v) => _all.fontFeatures = v;
  set overflow(TextOverflow? v) => _all.overflow = v;
  set package(String? v) => _all.package = v;

  // * fontStyleMacro
  void get italic => fontStyle = FontStyle.italic;

  // * fontWeightMacro
  void get w100 => _all.fontWeight = FontWeight.w100;
  void get w200 => _all.fontWeight = FontWeight.w200;
  void get w300 => _all.fontWeight = FontWeight.w300;
  void get w400 => _all.fontWeight = FontWeight.w400;
  void get w500 => _all.fontWeight = FontWeight.w500;
  void get w600 => _all.fontWeight = FontWeight.w600;
  void get w700 => _all.fontWeight = FontWeight.w700;
  void get w800 => _all.fontWeight = FontWeight.w800;
  void get w900 => _all.fontWeight = FontWeight.w900;
  void get bold => _all.fontWeight = FontWeight.bold;

  // * textDecorationMacro
  void get noDecoration => _all.decoration = TextDecoration.none;
  void get lineThrough => _all.decoration = TextDecoration.lineThrough;
  void get aboveline => _all.decoration = TextDecoration.overline;
  void get underline => _all.decoration = TextDecoration.underline;

  // * textDecorationStyleMacro
  void get solid => _all.decorationStyle = TextDecorationStyle.solid;
  void get dotted => _all.decorationStyle = TextDecorationStyle.dotted;
  void get dashed => _all.decorationStyle = TextDecorationStyle.dashed;
  void get wavy => _all.decorationStyle = TextDecorationStyle.wavy;

  // * textThemeStyleMacro
  get h1 => _all.h1;
  get h2 => _all.h2;
  get h3 => _all.h3;
  get h4 => _all.h4;
  get h5 => _all.h5;
  get h6 => _all.h6;
  get body1 => _all.body1;
  get body2 => _all.body2;
  get subtitle1 => _all.subtitle1;
  get subtitle2 => _all.subtitle2;
  get overline => _all.overline;
  get button => _all.button;

  get displayLarge => _all.displayLarge;
  get displayMedium => _all.displayMedium;
  get displaySmall => _all.displaySmall;
  get titleLarge => _all.titleLarge;
  get titleMedium => _all.titleMedium;
  get titleSmall => _all.titleSmall;
  get bodyLarge => _all.bodyLarge;
  get bodyMedium => _all.bodyMedium;
  get bodySmall => _all.bodySmall;
  get labelLarge => _all.labelLarge;
  get labelMedium => _all.labelMedium;
  get labelSmall => _all.labelSmall;
}
