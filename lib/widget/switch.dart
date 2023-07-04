import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart' show CupertinoSwitch;

import '../macros/macros.dart';
import '../objects/state.dart';

const double _kTrackHeight = 14.0;
const double _kTrackWidth = 33.0;
const double _kTrackRadius = _kTrackHeight / 2.0;
const double _kSwitchMinSize = kMinInteractiveDimension - 8.0;
const double _kSwitchWidth = _kTrackWidth - 2 * _kTrackRadius + _kSwitchMinSize;
const double _kSwitchHeight = _kSwitchMinSize + 8.0;
const double _kSwitchHeightCollapsed = _kSwitchMinSize;

// ignore: must_be_immutable
class NikuSwitch extends StatelessWidget
    with NikuBuildMacro<NikuSwitch>, FocusNodeMacro {
  bool adaptive = false;
  bool cupertino = false;

  bool? value;
  ValueChanged<bool>? onChanged;
  Color? activeColor;
  Color? activeTrackColor;
  Color? inactiveThumbColor;
  Color? inactiveTrackColor;
  ImageProvider? activeThumbImage;
  ImageErrorListener? onActiveThumbImageError;
  ImageProvider? inactiveThumbImage;
  ImageErrorListener? onInactiveThumbImageError;
  MaterialTapTargetSize? materialTapTargetSize;
  DragStartBehavior? dragStartBehavior;
  MouseCursor? mouseCursor;
  Color? focusColor;
  Color? hoverColor;
  double? splashRadius;
  FocusNode? focusNode;
  bool? autofocus;

  NikuState<Icon?>? thumbIconState;
  NikuState<Color?>? thumbColorState;
  NikuState<Color?>? trackColorState;
  NikuState<Color?>? overlayColorState;

  NikuSwitch(
    this.value, {
    Key? key,
    this.thumbColorState,
    this.trackColorState,
    this.thumbIconState,
    this.overlayColorState,
    this.onChanged,
    this.activeColor,
    this.activeTrackColor,
    this.inactiveThumbColor,
    this.inactiveTrackColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    Color? thumbColor,
    Color? trackColor,
    this.materialTapTargetSize,
    this.dragStartBehavior,
    this.mouseCursor,
    this.focusColor,
    this.hoverColor,
    Color? overlayColor,
    this.splashRadius,
    this.focusNode,
    this.autofocus,
    Icon? thumbIcon,
    this.adaptive = false,
    this.cupertino = false,
  }) : super(key: key) {
    if (thumbColor != null) thumbColorState = NikuState.all(thumbColor);
    if (trackColor != null) trackColorState = NikuState.all(trackColor);
    if (overlayColor != null) overlayColorState = NikuState.all(overlayColor);
    if (thumbIcon != null) thumbIconState = NikuState.all(thumbIcon);
  }

  factory NikuSwitch.adaptive({
    Key? key,
    NikuState<Color>? thumbColorState,
    NikuState<Color>? trackColorState,
    NikuState<Color>? overlayColorState,
    bool? value,
    ValueChanged<bool>? onChanged,
    Color? activeColor,
    Color? activeTrackColor,
    Color? inactiveThumbColor,
    Color? inactiveTrackColor,
    ImageProvider? activeThumbImage,
    ImageErrorListener? onActiveThumbImageError,
    ImageProvider? inactiveThumbImage,
    ImageErrorListener? onInactiveThumbImageError,
    MaterialTapTargetSize? materialTapTargetSize,
    DragStartBehavior? dragStartBehavior,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    double? splashRadius,
    FocusNode? focusNode,
    bool? autofocus,
    Color? thumbColor,
    Color? trackColor,
    Color? overlayColor,
    Icon? thumbIcon,
  }) =>
      NikuSwitch(
        value,
        key: key,
        thumbColorState: thumbColorState,
        trackColorState: trackColorState,
        overlayColorState: overlayColorState,
        onChanged: onChanged,
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: onActiveThumbImageError,
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: onInactiveThumbImageError,
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior,
        mouseCursor: mouseCursor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus,
        thumbColor: thumbColor,
        trackColor: trackColor,
        overlayColor: overlayColor,
        thumbIcon: thumbIcon,
        adaptive: true,
      );

  factory NikuSwitch.cupertino({
    Key? key,
    NikuState<Color>? thumbColorState,
    NikuState<Color>? trackColorState,
    NikuState<Color>? overlayColorState,
    bool? value,
    ValueChanged<bool>? onChanged,
    Color? activeColor,
    Color? activeTrackColor,
    Color? inactiveThumbColor,
    Color? inactiveTrackColor,
    ImageProvider? activeThumbImage,
    ImageErrorListener? onActiveThumbImageError,
    ImageProvider? inactiveThumbImage,
    ImageErrorListener? onInactiveThumbImageError,
    MaterialTapTargetSize? materialTapTargetSize,
    DragStartBehavior? dragStartBehavior,
    MouseCursor? mouseCursor,
    Color? focusColor,
    Color? hoverColor,
    double? splashRadius,
    FocusNode? focusNode,
    bool? autofocus,
    Color? thumbColor,
    Color? trackColor,
    Color? overlayColor,
    Icon? thumbIcon,
  }) =>
      NikuSwitch(
        value,
        key: key,
        thumbColorState: thumbColorState,
        trackColorState: trackColorState,
        overlayColorState: overlayColorState,
        onChanged: onChanged,
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: onActiveThumbImageError,
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: onInactiveThumbImageError,
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior,
        mouseCursor: mouseCursor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus,
        thumbColor: thumbColor,
        trackColor: trackColor,
        overlayColor: overlayColor,
        thumbIcon: thumbIcon,
        cupertino: true,
      );

  set thumbColor(Color? value) => thumbColorState = NikuState.all(value);
  set trackColor(Color? value) => trackColorState = NikuState.all(value);
  set overlayColor(Color? value) => overlayColorState = NikuState.all(value);
  set thumbIcon(Icon icon) => this.thumbIconState = NikuState.all(icon);

  void useThumbIcon({
    Icon? all,
    Icon? disabled,
    Icon? dragged,
    Icon? error,
    Icon? focused,
    Icon? hovered,
    Icon? pressed,
    Icon? scrolledUnder,
    Icon? selected,
    Icon? base,
  }) {
    this.thumbIconState = NikuState(
      all: all,
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
  }

  NikuSwitch get self => this;

  set apply(NikuSwitch? v) {
    if (v == null) return;

    value = v.value ?? value;
    onChanged = v.onChanged ?? onChanged;
    activeColor = v.activeColor ?? activeColor;
    activeTrackColor = v.activeTrackColor ?? activeTrackColor;
    inactiveThumbColor = v.inactiveThumbColor ?? inactiveThumbColor;
    inactiveTrackColor = v.inactiveTrackColor ?? inactiveTrackColor;
    activeThumbImage = v.activeThumbImage ?? activeThumbImage;
    onActiveThumbImageError =
        v.onActiveThumbImageError ?? onActiveThumbImageError;
    inactiveThumbImage = v.inactiveThumbImage ?? inactiveThumbImage;
    onInactiveThumbImageError =
        v.onInactiveThumbImageError ?? onInactiveThumbImageError;
    materialTapTargetSize = v.materialTapTargetSize ?? materialTapTargetSize;
    dragStartBehavior = v.dragStartBehavior ?? dragStartBehavior;
    mouseCursor = v.mouseCursor ?? mouseCursor;
    focusColor = v.focusColor ?? focusColor;
    hoverColor = v.hoverColor ?? hoverColor;
    splashRadius = v.splashRadius ?? splashRadius;
    focusNode = v.focusNode ?? focusNode;
    autofocus = v.autofocus ?? autofocus;
    thumbColorState = v.thumbColorState ?? thumbColorState;
    trackColorState = v.trackColorState ?? trackColorState;
    overlayColorState = v.overlayColorState ?? overlayColorState;
    thumbIconState = v.thumbIconState ?? thumbIconState;

    $parent..$merge(v.$parent);
  }

  NikuSwitch get copied => NikuSwitch(
        value,
        onChanged: onChanged,
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: onActiveThumbImageError,
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: onInactiveThumbImageError,
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior,
        mouseCursor: mouseCursor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus,
        thumbColorState: thumbColorState,
        trackColorState: trackColorState,
        overlayColorState: overlayColorState,
        thumbIconState: thumbIconState,
        adaptive: adaptive,
        cupertino: cupertino,
      )..$parent.$merge($parent);

  widget(context) {
    if (cupertino) {
      Size _getSwitchSize(ThemeData theme) {
        final MaterialTapTargetSize effectiveMaterialTapTargetSize =
            materialTapTargetSize ??
                theme.switchTheme.materialTapTargetSize ??
                theme.materialTapTargetSize;
        switch (effectiveMaterialTapTargetSize) {
          case MaterialTapTargetSize.padded:
            return const Size(_kSwitchWidth, _kSwitchHeight);
          case MaterialTapTargetSize.shrinkWrap:
            return const Size(_kSwitchWidth, _kSwitchHeightCollapsed);
        }
      }

      return Builder(builder: (context) {
        final Size size = _getSwitchSize(Theme.of(context));

        return Focus(
          focusNode: focusNode,
          autofocus: autofocus ?? false,
          child: Container(
            width: size.width, // Same size as the Material switch.
            height: size.height,
            alignment: Alignment.center,
            child: CupertinoSwitch(
              dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
              value: value ?? false,
              onChanged: onChanged,
              activeColor: activeColor,
              trackColor: inactiveTrackColor,
              thumbColor: thumbColorState?.base,
            ),
          ),
        );
      });
    }

    if (adaptive)
      return Switch.adaptive(
        value: value ?? false,
        onChanged: onChanged ?? null,
        activeColor: activeColor,
        activeTrackColor: activeTrackColor,
        inactiveThumbColor: inactiveThumbColor,
        inactiveTrackColor: inactiveTrackColor,
        activeThumbImage: activeThumbImage,
        onActiveThumbImageError: onActiveThumbImageError,
        inactiveThumbImage: inactiveThumbImage,
        onInactiveThumbImageError: onInactiveThumbImageError,
        thumbColor: thumbColorState?.value,
        trackColor: trackColorState?.value,
        materialTapTargetSize: materialTapTargetSize,
        dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
        mouseCursor: mouseCursor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        overlayColor: overlayColorState?.value,
        splashRadius: splashRadius,
        focusNode: focusNode,
        autofocus: autofocus ?? false,
        thumbIcon: thumbIconState?.value,
      );

    return Switch(
      value: value ?? false,
      onChanged: onChanged ?? null,
      activeColor: activeColor,
      activeTrackColor: activeTrackColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveTrackColor: inactiveTrackColor,
      activeThumbImage: activeThumbImage,
      onActiveThumbImageError: onActiveThumbImageError,
      inactiveThumbImage: inactiveThumbImage,
      onInactiveThumbImageError: onInactiveThumbImageError,
      thumbColor: thumbColorState?.value,
      trackColor: trackColorState?.value,
      materialTapTargetSize: materialTapTargetSize,
      dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
      mouseCursor: mouseCursor,
      focusColor: focusColor,
      hoverColor: hoverColor,
      overlayColor: overlayColorState?.value,
      splashRadius: splashRadius,
      focusNode: focusNode,
      autofocus: autofocus ?? false,
      thumbIcon: thumbIconState?.value,
    );
  }
}
