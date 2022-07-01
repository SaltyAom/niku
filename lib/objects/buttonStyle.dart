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

  set minSize(Size size) => minSize = size;
  set maxSize(Size size) => maxSize = size;

  void useNikuTextStyle(NikuTextStyle Function(NikuTextStyle) v) =>
      textStyleState = NikuState.all(v(NikuTextStyle()));

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
      backgroundColorState = NikuState(
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
      foregroundColorState = NikuState(
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
      foregroundColorState = NikuState(
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
      overlayColorState = NikuState(
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
      overlayColorState = NikuState(
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
      shadowColorState = NikuState(
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
      elevationState = NikuState(
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
      paddingState = NikuState(
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
      paddingState = NikuState(
        disabled: disabled != null ? EdgeInsets.all(disabled) : null,
        dragged: dragged != null ? EdgeInsets.all(dragged) : null,
        error: error != null ? EdgeInsets.all(error) : null,
        focused: focused != null ? EdgeInsets.all(focused) : null,
        hovered: hovered != null ? EdgeInsets.all(hovered) : null,
        pressed: pressed != null ? EdgeInsets.all(pressed) : null,
        scrolledUnder:
            scrolledUnder != null ? EdgeInsets.all(scrolledUnder) : null,
        selected: selected != null ? EdgeInsets.all(selected) : null,
        base: base != null ? EdgeInsets.all(base) : null,
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
      minimumSizeState = NikuState(
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
      useMinimumSize(
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
      maximumSizeState = NikuState(
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
      useMaximumSize(
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
      sideState = NikuState(
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
      shapeState = NikuState(
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
      shapeState = NikuState(
        disabled: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(disabled ?? base),
        ),
        dragged: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(dragged ?? base),
        ),
        error: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(error ?? base),
        ),
        focused: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(focused ?? base),
        ),
        hovered: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(hovered ?? base),
        ),
        pressed: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(pressed ?? base),
        ),
        scrolledUnder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(scrolledUnder ?? base),
        ),
        selected: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(selected ?? base),
        ),
        base: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(base),
        ),
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
      mouseCursorState = NikuState(
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
      textStyleState = NikuState(
        disabled: disabled != null
            ? disabled(textStyleState?.disabled ?? NikuTextStyle())
            : null,
        dragged: dragged != null
            ? dragged(textStyleState?.dragged ?? NikuTextStyle())
            : null,
        error: error != null
            ? error(textStyleState?.error ?? NikuTextStyle())
            : null,
        focused: focused != null
            ? focused(textStyleState?.focused ?? NikuTextStyle())
            : null,
        hovered: hovered != null
            ? hovered(textStyleState?.hovered ?? NikuTextStyle())
            : null,
        pressed: pressed != null
            ? pressed(textStyleState?.pressed ?? NikuTextStyle())
            : null,
        scrolledUnder: scrolledUnder != null
            ? scrolledUnder(textStyleState?.scrolledUnder ?? NikuTextStyle())
            : null,
        selected: selected != null
            ? selected(textStyleState?.selected ?? NikuTextStyle())
            : null,
        base:
            base != null ? base(textStyleState?.base ?? NikuTextStyle()) : null,
      );

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

  NikuButtonStyle get copied => NikuButtonStyle(
        textStyleState: textStyleState?.copiedDeep,
        backgroundColorState: backgroundColorState?.copied,
        foregroundColorState: foregroundColorState?.copied,
        overlayColorState: overlayColorState?.copied,
        shadowColorState: shadowColorState?.copied,
        elevationState: elevationState?.copied,
        paddingState: paddingState?.copied,
        minimumSizeState: minimumSizeState?.copied,
        fixedSizeState: fixedSizeState?.copied,
        maximumSizeState: maximumSizeState?.copied,
        sideState: sideState?.copied,
        shapeState: shapeState?.copied,
        mouseCursorState: mouseCursorState?.copied,
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      );

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
  NikuButtonStyle get asNiku => NikuButtonStyle(
        visualDensity: visualDensity,
        tapTargetSize: tapTargetSize,
        animationDuration: animationDuration,
        enableFeedback: enableFeedback,
        alignment: alignment,
        splashFactory: splashFactory,
      );
}
