import 'package:flutter/material.dart';

import '../macros/macros.dart';
import '../objects/objects.dart';

class NikuButtonStyle with AlignmentDirectionalMacro {
  NikuButtonStyle({
    this.textStyleState,
    this.backgroundColorState,
    this.foregroundColorState,
    this.overlayColorState,
    this.shadowColorState,
    this.elevationState,
    this.paddingState,
    this.minimumSizeState,
    this.fixedSizeState,
    this.maximumSizeState,
    this.sideState,
    this.shapeState,
    this.mouseCursorState,
    this.visualDensity,
    this.tapTargetSize,
    this.animationDuration,
    this.enableFeedback,
    this.alignment,
    this.splashFactory,
    NikuTextStyle? textStyle,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? overlayColor,
    Color? shadowColor,
    double? elevation,
    EdgeInsets? padding,
    Size? minimumSize,
    Size? fixedSize,
    Size? maximumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? mouseCursor,
  }) {
    if (textStyle != null) textStyleState = NikuState.all(textStyle);
    if (backgroundColor != null)
      backgroundColorState = NikuState.all(backgroundColor);
    if (foregroundColor != null)
      foregroundColorState = NikuState.all(foregroundColor);
    if (overlayColor != null) overlayColorState = NikuState.all(overlayColor);
    if (shadowColor != null) shadowColorState = NikuState.all(shadowColor);
    if (elevation != null) elevationState = NikuState.all(elevation);
    if (padding != null) paddingState = NikuState.all(padding);
    if (minimumSize != null) minimumSizeState = NikuState.all(minimumSize);
    if (fixedSize != null) fixedSizeState = NikuState.all(fixedSize);
    if (maximumSize != null) maximumSizeState = NikuState.all(maximumSize);
    if (side != null) sideState = NikuState.all(side);
    if (shape != null) shapeState = NikuState.all(shape);
    if (mouseCursor != null) mouseCursorState = NikuState.all(mouseCursor);
  }

  NikuState<NikuTextStyle?>? textStyleState;
  NikuState<Color?>? backgroundColorState;
  NikuState<Color?>? foregroundColorState;
  NikuState<Color?>? overlayColorState;
  NikuState<Color?>? shadowColorState;
  NikuState<double?>? elevationState;
  NikuState<EdgeInsets?>? paddingState;
  NikuState<Size?>? minimumSizeState;
  NikuState<Size?>? fixedSizeState;
  NikuState<Size?>? maximumSizeState;
  NikuState<BorderSide?>? sideState;
  NikuState<OutlinedBorder?>? shapeState;
  NikuState<MouseCursor?>? mouseCursorState;

  VisualDensity? visualDensity;
  MaterialTapTargetSize? tapTargetSize;
  Duration? animationDuration;
  bool? enableFeedback;
  AlignmentGeometry? alignment;
  InteractiveInkFeatureFactory? splashFactory;

  set textStyle(NikuTextStyle style) => textStyleState = NikuState.all(style);
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

  void useTextStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      textStyleState = NikuState.all(v(NikuTextStyle()));

  set border(BorderSide side) => sideState = NikuState.all(side);

  set bg(Color color) => backgroundColorState = NikuState.all(color);
  set fg(Color color) => foregroundColorState = NikuState.all(color);
  set overlay(Color color) => overlayColorState = NikuState.all(color);
  set splash(Color color) => overlayColorState = NikuState.all(color);

  set rounded(double radius) => shapeState = NikuState.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      );

  set p(double padding) =>
      paddingState = NikuState.all(EdgeInsets.all(padding));

  set px(double padding) => paddingState = NikuState.all(EdgeInsets.only(
        top: paddingState?.all?.top ?? 0,
        bottom: paddingState?.all?.bottom ?? 0,
        left: padding,
        right: padding,
      ));
  set py(double padding) => paddingState = NikuState.all(EdgeInsets.only(
        top: padding,
        bottom: padding,
        left: paddingState?.all?.left ?? 0,
        right: paddingState?.all?.right ?? 0,
      ));

  set pt(double padding) => paddingState = NikuState.all(EdgeInsets.only(
        top: padding,
        bottom: paddingState?.all?.bottom ?? 0,
        left: paddingState?.all?.left ?? 0,
        right: paddingState?.all?.right ?? 0,
      ));
  set pl(double padding) => paddingState = NikuState.all(EdgeInsets.only(
        top: paddingState?.all?.top ?? 0,
        bottom: padding,
        left: paddingState?.all?.left ?? 0,
        right: paddingState?.all?.right ?? 0,
      ));
  set pb(double padding) => paddingState = NikuState.all(EdgeInsets.only(
        top: paddingState?.all?.top ?? 0,
        bottom: paddingState?.all?.bottom ?? 0,
        left: padding,
        right: paddingState?.all?.right ?? 0,
      ));
  set pr(double padding) => paddingState = NikuState.all(EdgeInsets.only(
        top: paddingState?.all?.top ?? 0,
        bottom: paddingState?.all?.bottom ?? 0,
        left: paddingState?.all?.left ?? 0,
        right: padding,
      ));

  set apply(NikuButtonStyle? style) {
    if (style == null) return;

    textStyleState = style.textStyleState ?? textStyleState;
    backgroundColorState = style.backgroundColorState ?? backgroundColorState;
    foregroundColorState = style.foregroundColorState ?? foregroundColorState;
    overlayColorState = style.overlayColorState ?? overlayColorState;
    shadowColorState = style.shadowColorState ?? shadowColorState;
    elevationState = style.elevationState ?? elevationState;
    paddingState = style.paddingState ?? paddingState;
    minimumSizeState = style.minimumSizeState ?? minimumSizeState;
    fixedSizeState = style.fixedSizeState ?? fixedSizeState;
    maximumSizeState = style.maximumSizeState ?? maximumSizeState;
    sideState = style.sideState ?? sideState;
    shapeState = style.shapeState ?? shapeState;
    mouseCursorState = style.mouseCursorState ?? mouseCursorState;
    visualDensity = style.visualDensity ?? visualDensity;
    tapTargetSize = style.tapTargetSize ?? tapTargetSize;
    animationDuration = style.animationDuration ?? animationDuration;
    enableFeedback = style.enableFeedback ?? enableFeedback;
    alignment = style.alignment ?? alignment;
    splashFactory = style.splashFactory ?? splashFactory;
  }

  ButtonStyle get value => ButtonStyle(
        textStyle: NikuState<TextStyle>(
          all: textStyleState?.all?.value,
          disabled: textStyleState?.disabled?.value,
          dragged: textStyleState?.dragged?.value,
          error: textStyleState?.error?.value,
          focused: textStyleState?.focused?.value,
          hovered: textStyleState?.hovered?.value,
          pressed: textStyleState?.pressed?.value,
          scrolledUnder: textStyleState?.scrolledUnder?.value,
          selected: textStyleState?.selected?.value,
          base: textStyleState?.base?.value,
        ).value,
        backgroundColor: backgroundColorState?.value,
        foregroundColor: NikuState<Color>(
          all: textStyleState?.all?.value.color ?? foregroundColorState?.all,
          disabled: textStyleState?.disabled?.value.color ??
              foregroundColorState?.disabled,
          dragged: textStyleState?.dragged?.value.color ??
              foregroundColorState?.dragged,
          error:
              textStyleState?.error?.value.color ?? foregroundColorState?.error,
          focused: textStyleState?.focused?.value.color ??
              foregroundColorState?.focused,
          hovered: textStyleState?.hovered?.value.color ??
              foregroundColorState?.hovered,
          pressed: textStyleState?.pressed?.value.color ??
              foregroundColorState?.pressed,
          scrolledUnder: textStyleState?.scrolledUnder?.value.color ??
              foregroundColorState?.scrolledUnder,
          selected: textStyleState?.selected?.value.color ??
              foregroundColorState?.selected,
          base: textStyleState?.base?.value.color ?? foregroundColorState?.base,
        ).value,
        overlayColor: overlayColorState?.value,
        shadowColor: shadowColorState?.value,
        elevation: elevationState?.value,
        padding: paddingState?.value,
        minimumSize: minimumSizeState?.value,
        fixedSize: fixedSizeState?.value,
        maximumSize: maximumSizeState?.value,
        side: sideState?.value,
        shape: shapeState?.value,
        mouseCursor: mouseCursorState?.value,
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      );
}

extension NikuButtonStyleTransform on ButtonStyle {
  NikuButtonStyle get niku => NikuButtonStyle(
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      );
}
